# frozen_string_literal: true

require "ailabtools"

client = AILabTools::Client.new(api_key: ENV.fetch("AILAB_API_KEY"))
params = AILabTools::Generated::Params::CutoutUniversalBackgroundRemovalParams.new(
  image: AILabTools::FileInput.from_path("image.jpg", content_type: "image/jpeg"),
  return_form: "whiteBK"
)

result = client.background.remove(params)
puts result.data&.image_url
