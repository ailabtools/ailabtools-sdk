package ailabtools

import (
	"context"
	"fmt"
	"net/http"
	"time"
)

type Client struct {
	Common     *CommonAPI
	Cutout     *CutoutAPI
	Image      *ImageAPI
	Portrait   *PortraitAPI
	Background *BackgroundAPI
	requester  *requester
}

type ClientOption func(*clientOptions)

type clientOptions struct {
	baseURL    string
	timeout    time.Duration
	httpClient *http.Client
}

func WithBaseURL(baseURL string) ClientOption {
	return func(options *clientOptions) { options.baseURL = baseURL }
}

func WithTimeout(timeout time.Duration) ClientOption {
	return func(options *clientOptions) { options.timeout = timeout }
}

func WithHTTPClient(httpClient *http.Client) ClientOption {
	return func(options *clientOptions) { options.httpClient = httpClient }
}

func NewClient(apiKey string, opts ...ClientOption) *Client {
	options := clientOptions{baseURL: "https://www.ailabapi.com", timeout: 30 * time.Second}
	for _, opt := range opts {
		opt(&options)
	}
	req := newRequester(apiKey, options.baseURL, options.timeout, options.httpClient)
	client := &Client{requester: req}
	client.Common = &CommonAPI{requester: req}
	client.Cutout = &CutoutAPI{requester: req}
	client.Image = &ImageAPI{requester: req}
	client.Portrait = &PortraitAPI{requester: req}
	client.Background = &BackgroundAPI{cutout: client.Cutout}
	return client
}

type BackgroundAPI struct {
	cutout *CutoutAPI
}

func (api *BackgroundAPI) Remove(ctx context.Context, params CutoutUniversalBackgroundRemovalParams) (*CutoutUniversalBackgroundRemovalResponse, error) {
	return api.cutout.CutoutUniversalBackgroundRemoval(ctx, params)
}

type WaitForTaskOptions struct {
	Interval     time.Duration
	Timeout      time.Duration
	ReturnFailed bool
}

func (c *Client) WaitForTask(ctx context.Context, taskID string, options *WaitForTaskOptions) (*CommonQueryAsyncTaskResultResponse, error) {
	interval := 5 * time.Second
	timeout := 300 * time.Second
	returnFailed := false
	if options != nil {
		if options.Interval > 0 {
			interval = options.Interval
		}
		if options.Timeout > 0 {
			timeout = options.Timeout
		}
		returnFailed = options.ReturnFailed
	}
	deadline := time.NewTimer(timeout)
	defer deadline.Stop()
	ticker := time.NewTicker(interval)
	defer ticker.Stop()
	for {
		result, err := c.Common.CommonQueryAsyncTaskResult(ctx, CommonQueryAsyncTaskResultParams{TaskID: taskID})
		if err != nil {
			return nil, err
		}
		status := result.Data.TaskStatus
		if status == 0 && result.TaskStatus != 0 {
			status = result.TaskStatus
		}
		if status == 2 {
			return result, nil
		}
		if status == 3 {
			if returnFailed {
				return result, nil
			}
			return result, fmt.Errorf("AILabTools task failed: %s", taskID)
		}
		select {
		case <-ctx.Done():
			return nil, ctx.Err()
		case <-deadline.C:
			return nil, fmt.Errorf("AILabTools task timed out: %s", taskID)
		case <-ticker.C:
		}
	}
}
