import AILabTools
import Foundation

let client = try AILabToolsClient(
    apiKey: ProcessInfo.processInfo.environment["AILAB_API_KEY"]!
)

let result = try await client.image.upscale(
    ImageLosslessEnlargementParams(
        image: .fileURL(URL(fileURLWithPath: "./image.jpg")),
        upscaleFactor: 4,
        outputFormat: "jpg"
    )
)

print(result.data?.url ?? "")
client.close()
