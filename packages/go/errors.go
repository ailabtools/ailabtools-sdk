package ailabtools

import "fmt"

type APIError struct {
	Message    string
	StatusCode int
	RequestID  string
	LogID      string
	Detail     ErrorDetail
	Raw        []byte
}

func (e *APIError) Error() string {
	if e == nil {
		return ""
	}
	if e.StatusCode > 0 {
		return fmt.Sprintf("AILabTools API error: %s (status %d)", e.Message, e.StatusCode)
	}
	return "AILabTools API error: " + e.Message
}
