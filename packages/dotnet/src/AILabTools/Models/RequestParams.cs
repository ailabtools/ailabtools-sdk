using System.Collections.Generic;

namespace AILabTools.Models;

public abstract class RequestParams
{
    internal abstract IReadOnlyDictionary<string, object?> ToQuery();

    internal abstract IReadOnlyDictionary<string, object?> ToBody();

    internal virtual void Validate()
    {
    }
}
