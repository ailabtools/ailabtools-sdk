import Foundation

public struct ErrorDetail: Codable {
    public let statusCode: Int?
    public let code: String?
    public let codeMessage: String?
    public let message: String?

    enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case code
        case codeMessage = "code_message"
        case message
    }
}

public struct APIError: Error, LocalizedError {
    public let statusCode: Int
    public let errorCode: Int
    public let errorCodeString: String?
    public let requestId: String?
    public let logId: String?
    public let detail: ErrorDetail?
    public let responseBody: Data

    public var errorDescription: String? {
        detail?.message ?? "AILabTools API error."
    }
}

public enum AILabToolsError: Error, LocalizedError {
    case invalidParameter(String)
    case invalidResponse(String)
    case transport(Error)

    public var errorDescription: String? {
        switch self {
        case let .invalidParameter(message): return message
        case let .invalidResponse(message): return message
        case let .transport(error): return "AILabTools request failed: \(error.localizedDescription)"
        }
    }
}
