import { readFileSync } from "node:fs";
import { AILabClient } from "../src";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

async function main() {
  const result = await client.background.remove({
    image: readFileSync("./photo.jpg"),
    returnForm: "whiteBK",
  });

  console.log(result.data?.image_url);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
