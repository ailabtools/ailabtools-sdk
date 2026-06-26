import asyncio
import os
from ailabtools import AILabClient


async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])
    with open("./photo.jpg", "rb") as image:
        result = await client.image.remove_objects({"image": image})
    print(result["data"]["image_url"])
    await client.aclose()


asyncio.run(main())
