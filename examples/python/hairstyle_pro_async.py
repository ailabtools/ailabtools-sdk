import asyncio
import os
from ailabtools import AILabClient


async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])
    with open("./portrait.jpg", "rb") as image:
        task = await client.portrait.change_hairstyle({
            "image": image,
            "hairStyle": "BuzzCut",
            "color": "blonde",
        })

    task_id = task.get("task_id") or task.get("data", {}).get("task_id")
    if not task_id:
        raise RuntimeError("Missing task_id from hairstyle response")

    result = await client.wait_for_task(task_id, interval=5, timeout=300)
    print(result.get("data"))
    await client.aclose()


asyncio.run(main())
