import { NextRequest, NextResponse } from "next/server";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

export async function POST(request: NextRequest) {
  const form = await request.formData();
  const file = form.get("image");

  if (!(file instanceof File)) {
    return NextResponse.json({ error: "Missing image file" }, { status: 400 });
  }

  const image = Buffer.from(await file.arrayBuffer());
  const result = await client.background.remove({ image, returnForm: "whiteBK" });

  return NextResponse.json({ imageUrl: result.data?.image_url });
}
