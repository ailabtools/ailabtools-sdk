# Image Upscaler API with AILabTools SDK

Use the AILabTools image upscaler API to enlarge photos with simple SDK calls. The SDK accepts local file uploads and maps camelCase parameters such as `upscaleFactor` to the API field `upscale-factor`.

## Node.js / TypeScript

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const result = await client.image.upscale({
  image: readFileSync("./photo.jpg"),
  upscaleFactor: 2,
});

console.log(result.data?.image_url);
```

## Python Async

```py
from ailabtools import AILabClient

client = AILabClient(api_key=os.environ["AILAB_API_KEY"])

with open("./photo.jpg", "rb") as image:
    result = await client.image.upscale({"image": image, "upscaleFactor": 2})

print(result["data"]["image_url"])
await client.aclose()
```

For more image enhancement APIs, see the [AILabTools image API docs](https://www.ailabtools.com/docs).
