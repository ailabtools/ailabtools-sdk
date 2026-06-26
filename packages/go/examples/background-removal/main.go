package main

import (
	"context"
	"fmt"
	"os"

	ailabtools "github.com/ailabtools/ailabtools-sdk/packages/go"
)

func main() {
	client := ailabtools.NewClient(os.Getenv("AILAB_API_KEY"))
	result, err := client.Background.Remove(context.Background(), ailabtools.CutoutUniversalBackgroundRemovalParams{
		Image:      ailabtools.FileFromPath("./photo.jpg"),
		ReturnForm: "whiteBK",
	})
	if err != nil {
		panic(err)
	}
	fmt.Println(result.Data.ImageURL)
}
