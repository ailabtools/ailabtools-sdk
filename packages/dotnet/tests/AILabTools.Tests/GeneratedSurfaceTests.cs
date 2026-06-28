using System.Reflection;
using AILabTools.Api;
using AILabTools.Models;

namespace AILabTools.Tests;

public sealed class GeneratedSurfaceTests
{
    [Fact]
    public void EverySpecEndpointHasStrongParameterAndResponseTypes()
    {
        var assembly = typeof(AILabToolsClient).Assembly;
        var parameterTypes = assembly.GetTypes()
            .Where(type => type.Namespace == "AILabTools.Generated.Params"
                && typeof(RequestParams).IsAssignableFrom(type))
            .ToArray();
        var responseTypes = assembly.GetTypes()
            .Where(type => type.Namespace == "AILabTools.Generated.Responses"
                && type.Name.EndsWith("Response", StringComparison.Ordinal))
            .ToArray();
        var apiMethods = new[] { typeof(CommonApi), typeof(CutoutApi), typeof(ImageApi), typeof(PortraitApi) }
            .SelectMany(type => type.GetMethods(BindingFlags.Instance | BindingFlags.Public | BindingFlags.DeclaredOnly))
            .ToArray();

        Assert.Equal(93, parameterTypes.Length);
        Assert.Equal(93, responseTypes.Length);
        Assert.Equal(97, apiMethods.Length);
        Assert.All(apiMethods, method => Assert.EndsWith("Async", method.Name));
    }
}
