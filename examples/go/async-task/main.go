package main

import (
	"context"
	"fmt"
	"os"
	"time"

	ailabtools "github.com/ailabtools/ailabtools-sdk/packages/go"
)

func main() {
	ctx := context.Background()
	client := ailabtools.NewClient(os.Getenv("AILAB_API_KEY"))
	task, err := client.Portrait.ChangeHairstyle(
		ctx,
		ailabtools.PortraitHairstyleEditingProParams{
			TaskType:  "async",
			Image:     ailabtools.FileFromPath("./image.jpg"),
			HairStyle: "BuzzCut",
		},
	)
	if err != nil {
		panic(err)
	}

	taskID := task.TaskID
	if taskID == "" {
		taskID = task.Data.TaskID
	}
	result, err := client.WaitForTask(ctx, taskID, &ailabtools.WaitForTaskOptions{
		Interval: 5 * time.Second,
		Timeout:  5 * time.Minute,
	})
	if err != nil {
		panic(err)
	}
	fmt.Println(result.Data)
}
