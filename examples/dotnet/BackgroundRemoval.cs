using AILabTools;
using AILabTools.Generated.Params;
using AILabTools.Http;

using var client = new AILabToolsClient(
    Environment.GetEnvironmentVariable("AILAB_API_KEY")!);

var result = await client.Background.RemoveAsync(
    new CutoutUniversalBackgroundRemovalParams
    {
        Image = FileInput.FromPath("./image.jpg"),
        ReturnForm = "whiteBK",
    });

Console.WriteLine(result.Data?.ImageUrl);
