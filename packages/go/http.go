package ailabtools

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"mime/multipart"
	"net/http"
	"net/textproto"
	"net/url"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"time"
)

type requester struct {
	apiKey  string
	baseURL string
	client  *http.Client
}

func newRequester(apiKey string, baseURL string, timeout time.Duration, httpClient *http.Client) *requester {
	if httpClient == nil {
		httpClient = &http.Client{Timeout: timeout}
	}
	return &requester{apiKey: apiKey, baseURL: strings.TrimRight(baseURL, "/"), client: httpClient}
}

func (r *requester) request(ctx context.Context, method string, path string, query any, body any, multipartBody bool, out any) error {
	endpoint := r.baseURL + path
	if method == http.MethodGet && query != nil {
		values, err := encodeValues(query)
		if err != nil {
			return err
		}
		if encoded := values.Encode(); encoded != "" {
			endpoint += "?" + encoded
		}
	}

	var reader io.Reader
	contentType := ""
	if method != http.MethodGet && body != nil {
		if multipartBody {
			buf := &bytes.Buffer{}
			writer := multipart.NewWriter(buf)
			if err := writeMultipart(writer, body); err != nil {
				return err
			}
			if err := writer.Close(); err != nil {
				return err
			}
			reader = buf
			contentType = writer.FormDataContentType()
		} else {
			payload, err := json.Marshal(body)
			if err != nil {
				return err
			}
			reader = bytes.NewReader(payload)
			contentType = "application/json"
		}
	}

	req, err := http.NewRequestWithContext(ctx, method, endpoint, reader)
	if err != nil {
		return err
	}
	req.Header.Set("ailabapi-api-key", r.apiKey)
	if contentType != "" {
		req.Header.Set("Content-Type", contentType)
	}

	resp, err := r.client.Do(req)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	raw, err := io.ReadAll(resp.Body)
	if err != nil {
		return err
	}
	if len(raw) == 0 {
		return &APIError{Message: "empty response", StatusCode: resp.StatusCode, Raw: raw}
	}

	var envelope BaseResponse[json.RawMessage]
	if err := json.Unmarshal(raw, &envelope); err != nil {
		return &APIError{Message: "invalid JSON response", StatusCode: resp.StatusCode, Raw: raw}
	}
	if resp.StatusCode != http.StatusOK || envelope.ErrorCode != 0 {
		msg := envelope.ErrorMsg
		if msg == "" {
			msg = envelope.ErrorDetail.Message
		}
		if msg == "" {
			msg = http.StatusText(resp.StatusCode)
		}
		return &APIError{Message: msg, StatusCode: resp.StatusCode, RequestID: envelope.RequestID, LogID: envelope.LogID, Detail: envelope.ErrorDetail, Raw: raw}
	}
	return json.Unmarshal(raw, out)
}

func encodeValues(input any) (url.Values, error) {
	values := url.Values{}
	fields, err := structFields(input)
	if err != nil {
		return nil, err
	}
	for _, field := range fields {
		values.Set(field.Name, stringify(field.Value))
	}
	return values, nil
}

func writeMultipart(writer *multipart.Writer, input any) error {
	fields, err := structFields(input)
	if err != nil {
		return err
	}
	for _, field := range fields {
		ok, err := writeFilePart(writer, field.Name, field.Value)
		if err != nil {
			return err
		}
		if ok {
			continue
		}
		if err := writer.WriteField(field.Name, stringify(field.Value)); err != nil {
			return err
		}
	}
	return nil
}

type formField struct {
	Name  string
	Value any
}

func structFields(input any) ([]formField, error) {
	if input == nil {
		return nil, nil
	}
	v := reflect.ValueOf(input)
	if v.Kind() == reflect.Pointer {
		if v.IsNil() {
			return nil, nil
		}
		v = v.Elem()
	}
	if v.Kind() != reflect.Struct {
		return nil, fmt.Errorf("params must be a struct")
	}
	t := v.Type()
	fields := make([]formField, 0, v.NumField())
	for i := 0; i < v.NumField(); i++ {
		f := t.Field(i)
		if f.PkgPath != "" {
			continue
		}
		tag := f.Tag.Get("form")
		if tag == "-" {
			continue
		}
		parts := strings.Split(tag, ",")
		name := parts[0]
		if name == "" {
			name = f.Name
		}
		omitEmpty := len(parts) > 1 && parts[1] == "omitempty"
		fv := v.Field(i)
		if omitEmpty && isEmptyValue(fv) {
			continue
		}
		fields = append(fields, formField{Name: name, Value: fv.Interface()})
	}
	return fields, nil
}

func writeFilePart(writer *multipart.Writer, name string, value any) (bool, error) {
	switch v := value.(type) {
	case File:
		return true, writeFile(writer, name, v)
	case *File:
		if v == nil {
			return true, nil
		}
		return true, writeFile(writer, name, *v)
	case []byte:
		return true, writeFile(writer, name, File{Name: name + ".bin", Data: v})
	case io.Reader:
		return true, writeFile(writer, name, File{Name: name + ".bin", Reader: v})
	default:
		return false, nil
	}
}

func writeFile(writer *multipart.Writer, field string, file File) error {
	var reader io.Reader
	name := file.Name
	contentType := file.ContentType
	var closeFn func() error
	if file.Path != "" {
		f, err := os.Open(file.Path)
		if err != nil {
			return err
		}
		reader = f
		closeFn = f.Close
		if name == "" {
			name = filepath.Base(file.Path)
		}
	} else if file.Reader != nil {
		reader = file.Reader
	} else {
		reader = bytes.NewReader(file.Data)
	}
	if closeFn != nil {
		defer closeFn()
	}
	if name == "" {
		name = field + ".bin"
	}
	if contentType == "" {
		contentType = detectContentType(name, file.Data)
	}
	header := make(textproto.MIMEHeader)
	header.Set("Content-Disposition", fmt.Sprintf(`form-data; name="%s"; filename="%s"`, escapeQuotes(field), escapeQuotes(name)))
	header.Set("Content-Type", contentType)
	part, err := writer.CreatePart(header)
	if err != nil {
		return err
	}
	_, err = io.Copy(part, reader)
	return err
}

func detectContentType(name string, data []byte) string {
	if len(data) > 0 {
		return http.DetectContentType(data)
	}
	switch strings.ToLower(filepath.Ext(name)) {
	case ".jpg", ".jpeg":
		return "image/jpeg"
	case ".png":
		return "image/png"
	case ".webp":
		return "image/webp"
	case ".bmp":
		return "image/bmp"
	default:
		return "application/octet-stream"
	}
}

func stringify(value any) string {
	switch v := value.(type) {
	case string:
		return v
	case fmt.Stringer:
		return v.String()
	}
	rv := reflect.ValueOf(value)
	if rv.IsValid() {
		switch rv.Kind() {
		case reflect.Map, reflect.Slice, reflect.Array, reflect.Struct:
			if b, err := json.Marshal(value); err == nil {
				return string(b)
			}
		}
	}
	return fmt.Sprint(value)
}

func isEmptyValue(v reflect.Value) bool {
	if !v.IsValid() {
		return true
	}
	if v.Kind() == reflect.Interface || v.Kind() == reflect.Pointer {
		return v.IsNil()
	}
	return v.IsZero()
}

func validateRequired(params any, fields ...string) error {
	v := reflect.ValueOf(params)
	if v.Kind() == reflect.Pointer {
		if v.IsNil() {
			return errors.New("params is nil")
		}
		v = v.Elem()
	}
	for _, name := range fields {
		field := v.FieldByName(name)
		if !field.IsValid() || isEmptyValue(field) {
			return fmt.Errorf("missing required param: %s", name)
		}
	}
	return nil
}

func escapeQuotes(s string) string {
	return strings.ReplaceAll(s, `"`, `\"`)
}
