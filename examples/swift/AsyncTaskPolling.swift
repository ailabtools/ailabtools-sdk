import AILabTools
import Foundation

let client = try AILabToolsClient(
    apiKey: ProcessInfo.processInfo.environment["AILAB_API_KEY"]!
)

let task = try await client.portrait.changeHairstyle(
    PortraitHairstyleEditingProParams(
        taskType: "async",
        image: .fileURL(URL(fileURLWithPath: "./image.jpg")),
        hairStyle: "BuzzCut"
    )
)
guard let taskId = task.taskId ?? task.data?.taskId else {
    throw AILabToolsError.invalidResponse("The API did not return a task ID.")
}

let result = try await client.waitForTask(taskId)
print(result.data?.taskStatus ?? -1)
client.close()
