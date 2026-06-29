import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

internal final class Requester {
    private let session: URLSession
    private let apiKey: String
    private let baseURL: URL
    private let timeout: TimeInterval
    private let decoder = JSONDecoder()

    init(session: URLSession, apiKey: String, baseURL: URL, timeout: TimeInterval) {
        self.session = session
        self.apiKey = apiKey
        self.baseURL = baseURL
        self.timeout = timeout
    }

    func request<Response: Decodable>(
        method: String,
        path: String,
        parameters: RequestParameters,
        multipart: Bool
    ) async throws -> Response {
        try parameters.validate()
        var url = baseURL.appendingPathComponent(path.trimmingCharacters(in: CharacterSet(charactersIn: "/")))
        let query = parameters.queryFields()
        if !query.isEmpty {
            var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            components?.queryItems = query.sorted(by: { $0.key < $1.key }).map {
                URLQueryItem(name: $0.key, value: $0.value.stringValue)
            }
            guard let queryURL = components?.url else {
                throw AILabToolsError.invalidParameter("Unable to encode request query.")
            }
            url = queryURL
        }

        var request = URLRequest(url: url, timeoutInterval: timeout)
        request.httpMethod = method
        request.setValue(apiKey, forHTTPHeaderField: "ailabapi-api-key")
        if method != "GET" {
            if multipart {
                let boundary = "AILabTools-\(UUID().uuidString)"
                request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
                request.httpBody = try multipartBody(parameters.bodyFields(), boundary: boundary)
            } else {
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                request.httpBody = try JSONSerialization.data(
                    withJSONObject: parameters.bodyFields().mapValues(\.stringValue)
                )
            }
        }

        let (data, response): (Data, URLResponse)
        do {
            (data, response) = try await session.ailabData(for: request)
        } catch {
            throw AILabToolsError.transport(error)
        }
        guard let httpResponse = response as? HTTPURLResponse else {
            throw AILabToolsError.invalidResponse("AILabTools returned a non-HTTP response.")
        }

        let envelope: APIEnvelope
        do {
            envelope = try decoder.decode(APIEnvelope.self, from: data)
        } catch {
            throw AILabToolsError.invalidResponse(
                data.isEmpty ? "AILabTools returned an empty response." : "AILabTools returned invalid JSON."
            )
        }
        if !(200..<300).contains(httpResponse.statusCode) || envelope.errorCode != 0 {
            throw APIError(
                statusCode: httpResponse.statusCode,
                errorCode: envelope.errorCode,
                errorCodeString: envelope.errorCodeString,
                requestId: envelope.requestId,
                logId: envelope.logId,
                detail: envelope.errorDetail,
                responseBody: data
            )
        }

        do {
            return try decoder.decode(Response.self, from: data)
        } catch {
            throw AILabToolsError.invalidResponse(
                "Unable to decode the typed AILabTools response: \(error.localizedDescription)"
            )
        }
    }

    private func multipartBody(
        _ fields: [String: RequestValue],
        boundary: String
    ) throws -> Data {
        var body = Data()
        for (name, value) in fields.sorted(by: { $0.key < $1.key }) {
            body.appendUTF8("--\(boundary)\r\n")
            switch value {
            case let .file(file):
                body.appendUTF8(
                    "Content-Disposition: form-data; name=\"\(escaped(name))\"; filename=\"\(escaped(file.filename))\"\r\n"
                )
                body.appendUTF8("Content-Type: \(file.mimeType)\r\n\r\n")
                body.append(try file.load())
                body.appendUTF8("\r\n")
            default:
                body.appendUTF8("Content-Disposition: form-data; name=\"\(escaped(name))\"\r\n\r\n")
                body.appendUTF8(value.stringValue)
                body.appendUTF8("\r\n")
            }
        }
        body.appendUTF8("--\(boundary)--\r\n")
        return body
    }

    private func escaped(_ value: String) -> String {
        value.replacingOccurrences(of: "\\", with: "\\\\")
            .replacingOccurrences(of: "\"", with: "\\\"")
    }
}

private struct APIEnvelope: Decodable {
    let errorCode: Int
    let errorCodeString: String?
    let requestId: String?
    let logId: String?
    let errorDetail: ErrorDetail?

    enum CodingKeys: String, CodingKey {
        case errorCode = "error_code"
        case errorCodeString = "error_code_str"
        case requestId = "request_id"
        case logId = "log_id"
        case errorDetail = "error_detail"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        errorCode = (try? container.decode(Int.self, forKey: .errorCode))
            ?? Int((try? container.decode(String.self, forKey: .errorCode)) ?? "") ?? 0
        errorCodeString = try? container.decodeIfPresent(String.self, forKey: .errorCodeString)
        requestId = try? container.decodeIfPresent(String.self, forKey: .requestId)
        logId = try? container.decodeIfPresent(String.self, forKey: .logId)
        errorDetail = try? container.decodeIfPresent(ErrorDetail.self, forKey: .errorDetail)
    }
}

private final class SessionTaskBox {
    private let lock = NSLock()
    private var task: URLSessionDataTask?
    private var cancelled = false

    func set(_ task: URLSessionDataTask) {
        lock.lock()
        self.task = task
        let shouldCancel = cancelled
        lock.unlock()
        if shouldCancel { task.cancel() }
    }

    func cancel() {
        lock.lock()
        cancelled = true
        let task = task
        lock.unlock()
        task?.cancel()
    }
}

private extension URLSession {
    func ailabData(for request: URLRequest) async throws -> (Data, URLResponse) {
        let box = SessionTaskBox()
        return try await withTaskCancellationHandler {
            try await withCheckedThrowingContinuation { continuation in
                let task = dataTask(with: request) { data, response, error in
                    if let error {
                        continuation.resume(throwing: error)
                    } else if let data, let response {
                        continuation.resume(returning: (data, response))
                    } else {
                        continuation.resume(
                            throwing: AILabToolsError.invalidResponse("URLSession returned no data.")
                        )
                    }
                }
                box.set(task)
                task.resume()
            }
        } onCancel: {
            box.cancel()
        }
    }
}

private extension Data {
    mutating func appendUTF8(_ value: String) {
        append(value.data(using: .utf8)!)
    }
}
