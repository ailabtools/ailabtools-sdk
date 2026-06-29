import Foundation

/// A file uploaded to an AILabTools multipart endpoint.
public struct FileInput {
    private enum Storage {
        case file(URL)
        case data(Data)
    }

    private let storage: Storage
    public let filename: String
    public let mimeType: String

    public static func fileURL(_ url: URL, mimeType: String? = nil) -> FileInput {
        FileInput(
            storage: .file(url),
            filename: url.lastPathComponent,
            mimeType: mimeType ?? guessMimeType(filename: url.lastPathComponent)
        )
    }

    public static func data(
        _ data: Data,
        filename: String,
        mimeType: String? = nil
    ) -> FileInput {
        FileInput(
            storage: .data(data),
            filename: filename,
            mimeType: mimeType ?? guessMimeType(filename: filename)
        )
    }

    internal func load() throws -> Data {
        guard !filename.isEmpty else {
            throw AILabToolsError.invalidParameter("File name must not be empty.")
        }
        switch storage {
        case let .file(url):
            guard url.isFileURL else {
                throw AILabToolsError.invalidParameter("FileInput requires a local file URL.")
            }
            return try Data(contentsOf: url)
        case let .data(data):
            return data
        }
    }

    private static func guessMimeType(filename: String) -> String {
        switch URL(fileURLWithPath: filename).pathExtension.lowercased() {
        case "png": return "image/png"
        case "webp": return "image/webp"
        case "gif": return "image/gif"
        case "bmp": return "image/bmp"
        default: return "image/jpeg"
        }
    }
}
