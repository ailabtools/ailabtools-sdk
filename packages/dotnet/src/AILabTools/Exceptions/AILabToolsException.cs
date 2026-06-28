using System;

namespace AILabTools.Exceptions;

public class AILabToolsException : Exception
{
    public AILabToolsException(string message) : base(message)
    {
    }

    public AILabToolsException(string message, Exception innerException) : base(message, innerException)
    {
    }
}
