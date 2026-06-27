# Image Upscaler API with AILabTools SDK

Use the AILabTools image upscaler API to enlarge photos with simple SDK calls. The SDK accepts local file uploads and maps camelCase parameters such as `upscaleFactor` to the API field `upscale_factor`.

## Node.js / TypeScript

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const result = await client.image.upscale({
  image: readFileSync("./photo.jpg"),
  upscaleFactor: 2,
});

console.log(result.data?.url);
```

## Python Async

```py
from ailabtools import AILabClient

client = AILabClient(api_key=os.environ["AILAB_API_KEY"])

with open("./photo.jpg", "rb") as image:
    result = await client.image.upscale({"image": image, "upscaleFactor": 2})

print(result["data"]["url"])
await client.aclose()
```

## Go

```go
result, err := client.Image.Upscale(ctx, ailabtools.ImageLosslessEnlargementParams{
    Image:         ailabtools.FileFromPath("./photo.jpg"),
    UpscaleFactor: 2,
})
if err != nil {
    return err
}
fmt.Println(result.Data.URL)
```

## Dart / Flutter

```dart
final bytes = await File('photo.jpg').readAsBytes();
final result = await client.image.upscale(
  ImageLosslessEnlargementParams(
    image: AILabFile.fromBytes(bytes, filename: 'photo.jpg'),
    upscaleFactor: 2,
  ),
);
print(result.data?.url);
client.close();
```

## PHP

```php
$result = $client->image->upscale(
    new ImageLosslessEnlargementParams(
        image: FileInput::fromPath(__DIR__ . '/photo.jpg'),
        upscaleFactor: 2,
    ),
);
echo $result->data?->url;
```

## Java

```java
var result = client.image().upscale(
        ImageLosslessEnlargementParams.builder()
                .image(FileInput.fromPath(Path.of("photo.jpg")))
                .upscaleFactor(2)
                .build());
System.out.println(result.getData().getUrl());
```

For more image enhancement APIs, see the [AILabTools image API docs](https://www.ailabtools.com/docs).
