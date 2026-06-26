# Background Removal API with AILabTools SDK

This tutorial shows how to remove an image background with the AILabTools SDK. It is useful for product photos, portraits, food images, apparel images, and other AI image editing workflows.

## Prerequisites

- AILabTools API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer)
- Node.js 18+ or Python 3.8+
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

Use the full [AILabTools API Documentation](https://www.ailabtools.com/docs) for all supported parameters and result fields.
