package main

import (
	"context"
	"fmt"
	"os"

	ailabtools "github.com/ailabtools/ailabtools-sdk/packages/go"
)

func main() {
	client := ailabtools.NewClient(os.Getenv("AILAB_API_KEY"))
	result, err := client.Image.Upscale(
		context.Background(),
		ailabtools.ImageLosslessEnlargementParams{
			Image:         ailabtools.FileFromPath("./image.jpg"),
			UpscaleFactor: 2,
		},
	)
	if err != nil {
		panic(err)
	}
	fmt.Println(result.Data.URL)
}
