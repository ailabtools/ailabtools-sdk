using AILabTools;
using AILabTools.Generated.Params;
using AILabTools.Http;

using var client = new AILabToolsClient(
    Environment.GetEnvironmentVariable("AILAB_API_KEY")!);

var task = await client.Portrait.ChangeHairstyleAsync(
    new PortraitHairstyleEditingProParams
    {
        TaskType = "async",
        Image = FileInput.FromPath("./image.jpg"),
        HairStyle = "BuzzCut",
    });
var taskId = task.TaskId ?? task.Data?.TaskId
    ?? throw new InvalidOperationException("The API did not return a task ID.");

var result = await client.WaitForTaskAsync(taskId);
Console.WriteLine(result.Data?.TaskStatus);
