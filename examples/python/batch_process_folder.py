import asyncio
import json
import os
from pathlib import Path
from ailabtools import AILabClient


async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])
    input_dir = Path("./input")
    output_dir = Path("./output")
    output_dir.mkdir(exist_ok=True)

    for path in input_dir.iterdir():
        if not path.is_file():
            continue
        with path.open("rb") as image:
            result = await client.background.remove({"image": image, "returnForm": "whiteBK"})
        (output_dir / f"{path.name}.json").write_text(json.dumps(result, indent=2))

    await client.aclose()


asyncio.run(main())
