import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

async function main() {
  const task = await client.portrait.changeHairstyle({
    image: readFileSync("./portrait.jpg"),
    hairStyle: "BuzzCut",
    color: "blonde",
  });

  const taskId = task.task_id || task.data?.task_id;
  if (!taskId) throw new Error("Missing task_id from hairstyle response");

  const result = await client.waitForTask(taskId, {
    intervalMs: 5000,
    timeoutMs: 300000,
  });

  console.log(result.data);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
