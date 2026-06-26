import { mkdirSync, readdirSync, readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

async function main() {
  const inputDir = "./input";
  const outputDir = "./output";
  mkdirSync(outputDir, { recursive: true });

  for (const name of readdirSync(inputDir)) {
    const result = await client.background.remove({
      image: readFileSync(join(inputDir, name)),
      returnForm: "whiteBK",
    });

    writeFileSync(join(outputDir, `${name}.json`), JSON.stringify(result, null, 2));
  }
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
