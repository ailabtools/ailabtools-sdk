import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

async function main() {
  const result = await client.image.removeObjects({
    image: readFileSync("./photo.jpg"),
  });

  console.log(result.data?.image_url);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
