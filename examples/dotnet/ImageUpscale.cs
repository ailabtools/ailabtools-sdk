using AILabTools;
using AILabTools.Generated.Params;
using AILabTools.Http;

using var client = new AILabToolsClient(
    Environment.GetEnvironmentVariable("AILAB_API_KEY")!);

var result = await client.Image.UpscaleAsync(
    new ImageLosslessEnlargementParams
    {
        Image = FileInput.FromPath("./image.jpg"),
        UpscaleFactor = 4,
        OutputFormat = "jpg",
    });

Console.WriteLine(result.Data?.Url);
