import AILabTools
import Foundation

let client = try AILabToolsClient(
    apiKey: ProcessInfo.processInfo.environment["AILAB_API_KEY"]!
)

let result = try await client.background.remove(
    CutoutUniversalBackgroundRemovalParams(
        image: .fileURL(URL(fileURLWithPath: "./image.jpg")),
        returnForm: "whiteBK"
    )
)

print(result.data?.imageUrl ?? "")
client.close()
