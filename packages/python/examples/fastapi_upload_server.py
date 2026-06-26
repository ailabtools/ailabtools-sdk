import os
from fastapi import FastAPI, File, UploadFile
from ailabtools import AILabClient

app = FastAPI()
client = AILabClient(api_key=os.environ["AILAB_API_KEY"])


@app.post("/background-removal")
async def background_removal(image: UploadFile = File(...)):
    content = await image.read()
    result = await client.background.remove({"image": content, "returnForm": "whiteBK"})
    return {"imageUrl": result.get("data", {}).get("image_url")}


@app.on_event("shutdown")
async def shutdown():
    await client.aclose()
