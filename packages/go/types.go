package ailabtools

import "io"

type FileInput interface{}

type File struct {
	Name        string
	Path        string
	Data        []byte
	Reader      io.Reader
	ContentType string
}

func FileFromPath(path string) File {
	return File{Path: path}
}

func FileFromBytes(filename string, data []byte) File {
	return File{Name: filename, Data: data}
}

func FileFromReader(filename string, reader io.Reader) File {
	return File{Name: filename, Reader: reader}
}

type ErrorDetail struct {
	StatusCode  int    `json:"status_code,omitempty"`
	Code        string `json:"code,omitempty"`
	CodeMessage string `json:"code_message,omitempty"`
	Message     string `json:"message,omitempty"`
}

type BaseResponse[T any] struct {
	RequestID    string      `json:"request_id,omitempty"`
	LogID        string      `json:"log_id,omitempty"`
	ErrorCode    int         `json:"error_code,omitempty"`
	ErrorCodeStr string      `json:"error_code_str,omitempty"`
	ErrorMsg     string      `json:"error_msg,omitempty"`
	ErrorDetail  ErrorDetail `json:"error_detail,omitempty"`
	Data         T           `json:"data,omitempty"`
	Image        string      `json:"image,omitempty"`
	Ratio        any         `json:"ratio,omitempty"`
	TaskType     string      `json:"task_type,omitempty"`
	TaskID       string      `json:"task_id,omitempty"`
	TaskStatus   int         `json:"task_status,omitempty"`
}
