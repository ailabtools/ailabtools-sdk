using System;
using System.IO;

namespace AILabTools.Http;

/// <summary>Represents a file uploaded to an AILabTools endpoint.</summary>
public sealed class FileInput
{
    private readonly string? _path;
    private readonly byte[]? _bytes;

    private FileInput(string fileName, string contentType, string? path, byte[]? bytes)
    {
        FileName = fileName;
        ContentType = contentType;
        _path = path;
        _bytes = bytes;
    }

    public string FileName { get; }

    public string ContentType { get; }

    public static FileInput FromPath(string path, string? contentType = null)
    {
        if (string.IsNullOrWhiteSpace(path)) throw new ArgumentException("File path must not be empty.", nameof(path));
        return new FileInput(Path.GetFileName(path), contentType ?? GuessContentType(path), path, null);
    }

    public static FileInput FromBytes(byte[] bytes, string fileName, string? contentType = null)
    {
        if (bytes == null) throw new ArgumentNullException(nameof(bytes));
        if (string.IsNullOrWhiteSpace(fileName)) throw new ArgumentException("File name must not be empty.", nameof(fileName));
        return new FileInput(fileName, contentType ?? GuessContentType(fileName), null, bytes);
    }

    public static FileInput FromStream(Stream stream, string fileName, string? contentType = null, bool leaveOpen = false)
    {
        if (stream == null) throw new ArgumentNullException(nameof(stream));
        using var buffer = new MemoryStream();
        stream.CopyTo(buffer);
        if (!leaveOpen) stream.Dispose();
        return FromBytes(buffer.ToArray(), fileName, contentType);
    }

    internal Stream OpenRead()
    {
        if (_path != null) return File.OpenRead(_path);
        return new MemoryStream(_bytes!, writable: false);
    }

    private static string GuessContentType(string fileName)
    {
        return Path.GetExtension(fileName).ToLowerInvariant() switch
        {
            ".png" => "image/png",
            ".webp" => "image/webp",
            ".gif" => "image/gif",
            ".bmp" => "image/bmp",
            _ => "image/jpeg",
        };
    }
}
