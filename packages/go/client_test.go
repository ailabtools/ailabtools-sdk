package ailabtools

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"
	"time"
)

func TestBackgroundAliasAndParamMapping(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Header.Get("ailabapi-api-key") != "test-key" {
			t.Fatalf("missing API key header")
		}
		if r.URL.Path != "/api/cutout/general/universal-background-removal" {
			t.Fatalf("unexpected path: %s", r.URL.Path)
		}
		if err := r.ParseMultipartForm(10 << 20); err != nil {
			t.Fatal(err)
		}
		if got := r.FormValue("return_form"); got != "whiteBK" {
			t.Fatalf("return_form = %q", got)
		}
		if _, _, err := r.FormFile("image"); err != nil {
			t.Fatalf("missing image file: %v", err)
		}
		_ = json.NewEncoder(w).Encode(map[string]any{"error_code": 0, "data": map[string]any{"image_url": "ok"}})
	}))
	defer server.Close()

	client := NewClient("test-key", WithBaseURL(server.URL))
	result, err := client.Background.Remove(context.Background(), CutoutUniversalBackgroundRemovalParams{Image: FileFromBytes("image.jpg", []byte("img")), ReturnForm: "whiteBK"})
	if err != nil {
		t.Fatal(err)
	}
	if result.Data.ImageURL != "ok" {
		t.Fatalf("image_url = %q", result.Data.ImageURL)
	}
}

func TestWaitForTask(t *testing.T) {
	calls := 0
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		calls++
		status := 1
		if calls > 1 {
			status = 2
		}
		_ = json.NewEncoder(w).Encode(map[string]any{"error_code": 0, "data": map[string]any{"task_status": status}})
	}))
	defer server.Close()

	client := NewClient("test-key", WithBaseURL(server.URL))
	result, err := client.WaitForTask(context.Background(), "task-1", &WaitForTaskOptions{Interval: time.Millisecond, Timeout: time.Second})
	if err != nil {
		t.Fatal(err)
	}
	if result.Data.TaskStatus != 2 {
		t.Fatalf("task_status = %d", result.Data.TaskStatus)
	}
}

func TestGeneratedPortraitResponsesDecodeUniqueJSONFields(t *testing.T) {
	var analyzer PortraitFaceAnalyzerResponseData
	if err := json.Unmarshal([]byte(`{"type":2,"probability":0.9,"pitch":10}`), &analyzer); err != nil {
		t.Fatal(err)
	}
	if analyzer.Type != 2 || analyzer.Probability != 0.9 || analyzer.Pitch != 10 {
		t.Fatalf("unexpected analyzer response: %+v", analyzer)
	}

	var advanced PortraitFaceAnalyzerAdvancedResponseData
	if err := json.Unmarshal([]byte(`{"pose_list":[1.5,2.5,3.5]}`), &advanced); err != nil {
		t.Fatal(err)
	}
	if len(advanced.PoseList) != 3 || advanced.PoseList[1] != 2.5 {
		t.Fatalf("unexpected pose_list: %#v", advanced.PoseList)
	}
}
