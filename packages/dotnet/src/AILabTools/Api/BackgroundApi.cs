using System.Threading;
using System.Threading.Tasks;
using AILabTools.Generated.Params;
using AILabTools.Generated.Responses;

namespace AILabTools.Api;

public sealed class BackgroundApi
{
    private readonly CutoutApi _cutout;

    internal BackgroundApi(CutoutApi cutout)
    {
        _cutout = cutout;
    }

    public Task<CutoutUniversalBackgroundRemovalResponse> RemoveAsync(
        CutoutUniversalBackgroundRemovalParams parameters,
        CancellationToken cancellationToken = default)
    {
        return _cutout.CutoutUniversalBackgroundRemovalAsync(parameters, cancellationToken);
    }
}
