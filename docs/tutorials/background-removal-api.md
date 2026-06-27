# Background Removal API with AILabTools SDK

This tutorial shows how to remove an image background with the AILabTools SDK. It is useful for product photos, portraits, food images, apparel images, and other AI image editing workflows.

## Prerequisites

- AILabTools API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer)
- A supported SDK runtime; see the [SDK compatibility matrix](../sdk-packages.md)
- A local image named `photo.jpg`

## Node.js / TypeScript

```bash
npm install ailabtools
```

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const result = await client.background.remove({
  image: readFileSync("./photo.jpg"),
  returnForm: "whiteBK",
});

console.log(result.data?.image_url);
```

## Python Async

```bash
pip install ailabtools-sdk
```

```py
from ailabtools import AILabClient

client = AILabClient(api_key=os.environ["AILAB_API_KEY"])

with open("./photo.jpg", "rb") as image:
    result = await client.background.remove({"image": image, "returnForm": "whiteBK"})

print(result["data"]["image_url"])
await client.aclose()
```

## Go

```go
result, err := client.Background.Remove(ctx, ailabtools.CutoutUniversalBackgroundRemovalParams{
    Image:      ailabtools.FileFromPath("./photo.jpg"),
    ReturnForm: "whiteBK",
})
if err != nil {
    return err
}
fmt.Println(result.Data.ImageURL)
```

## Dart / Flutter

```dart
final bytes = await File('photo.jpg').readAsBytes();
final result = await client.background.remove(
  CutoutUniversalBackgroundRemovalParams(
    image: AILabFile.fromBytes(bytes, filename: 'photo.jpg'),
    returnForm: 'whiteBK',
  ),
);
print(result.data?.imageUrl);
client.close();
```

## PHP

```php
$result = $client->background->remove(
    new CutoutUniversalBackgroundRemovalParams(
        image: FileInput::fromPath(__DIR__ . '/photo.jpg'),
        returnForm: 'whiteBK',
    ),
);
echo $result->data?->imageUrl;
```

## Java

```java
var result = client.background().remove(
        CutoutUniversalBackgroundRemovalParams.builder()
                .image(FileInput.fromPath(Path.of("photo.jpg")))
                .returnForm("whiteBK")
                .build());
System.out.println(result.getData().getImageUrl());
```

Use the full [AILabTools API Documentation](https://www.ailabtools.com/docs) for all supported parameters and result fields.
