import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import XCTest
@testable import AILabTools

final class AILabToolsTests: XCTestCase {
    override func tearDown() {
        MockURLProtocol.handler = nil
        super.tearDown()
    }

    func testBackgroundAliasUploadsFileAndMapsResponse() async throws {
        var body = ""
        var apiKey: String?
        MockURLProtocol.handler = { request in
            body = String(data: requestBody(request), encoding: .utf8) ?? ""
            apiKey = request.value(forHTTPHeaderField: "ailabapi-api-key")
            XCTAssertEqual(request.url?.path, "/api/cutout/general/universal-background-removal")
            return Self.response(
                request,
                json: #"{"error_code":0,"request_id":"request-1","data":{"image_url":"https://example.com/result.png"}}"#
            )
        }
        let client = try makeClient()

        let result = try await client.background.remove(
            CutoutUniversalBackgroundRemovalParams(
                image: .data(Data("image".utf8), filename: "photo.jpg", mimeType: "image/jpeg"),
                returnForm: "whiteBK"
            )
        )

        XCTAssertEqual(result.requestId, "request-1")
        XCTAssertEqual(result.data?.imageUrl, "https://example.com/result.png")
        XCTAssertEqual(apiKey, "test-key")
        XCTAssertTrue(body.contains(#"name="return_form""#))
        XCTAssertTrue(body.contains(#"filename="photo.jpg""#))
    }

    func testQueryParametersUseWireNames() async throws {
        var query: String?
        MockURLProtocol.handler = { request in
            query = request.url?.query
            return Self.response(request, json: #"{"error_code":0,"data":{"task_status":2}}"#)
        }
        let client = try makeClient()

        _ = try await client.common.commonQueryAsyncTaskResult(
            CommonQueryAsyncTaskResultParams(taskId: "task id/1")
        )

        XCTAssertEqual(query, "task_id=task%20id/1")
    }

    func testFaceAnalyzerAdvancedDecodesNumericArrays() async throws {
        MockURLProtocol.handler = { request in
            Self.response(
                request,
                json: #"{"error_code":0,"data":{"pupils":[10.5,20.5,3.2],"gender_list":[1],"landmarks":[1.1,2.2],"face_count":1}}"#
            )
        }
        let client = try makeClient()

        let result = try await client.portrait.portraitFaceAnalyzerAdvanced(
            PortraitFaceAnalyzerAdvancedParams(
                image: .data(Data([1]), filename: "face.jpg")
            )
        )

        XCTAssertEqual(result.data?.pupils?.count, 3)
        XCTAssertEqual(result.data?.genderList, [1])
        XCTAssertEqual(result.data?.landmarks?[1], 2.2)
    }

    func testRequiredAnyOfValidationRunsBeforeRequest() async throws {
        MockURLProtocol.handler = { request in
            XCTFail("Network request should not be sent")
            return Self.response(request, json: #"{"error_code":0}"#)
        }
        let client = try makeClient()

        do {
            _ = try await client.portrait.portraitHairstyleEditingPremium(
                PortraitHairstyleEditingPremiumParams(
                    image: .data(Data([1]), filename: "face.jpg")
                )
            )
            XCTFail("Expected validation error")
        } catch let error as AILabToolsError {
            XCTAssertTrue(error.localizedDescription.contains("hairStyle"))
        }
    }

    func testAPIErrorsExposeIdentifiers() async throws {
        MockURLProtocol.handler = { request in
            Self.response(
                request,
                status: 400,
                json: #"{"error_code":1001,"request_id":"request-2","log_id":"log-2","error_detail":{"message":"Unsupported image format"}}"#
            )
        }
        let client = try makeClient()

        do {
            _ = try await client.common.commonQueryCredits(CommonQueryCreditsParams())
            XCTFail("Expected API error")
        } catch let error as APIError {
            XCTAssertEqual(error.statusCode, 400)
            XCTAssertEqual(error.errorCode, 1001)
            XCTAssertEqual(error.requestId, "request-2")
            XCTAssertEqual(error.logId, "log-2")
        }
    }

    func testWaitForTaskPollsUntilSuccess() async throws {
        var calls = 0
        MockURLProtocol.handler = { request in
            calls += 1
            let status = calls == 1 ? 1 : 2
            return Self.response(
                request,
                json: #"{"error_code":0,"data":{"task_status":\#(status)}}"#
            )
        }
        let client = try makeClient()

        let result = try await client.waitForTask("task-1", interval: 0, timeout: 1)

        XCTAssertEqual(result.data?.taskStatus, 2)
        XCTAssertEqual(calls, 2)
    }

    private func makeClient() throws -> AILabToolsClient {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [MockURLProtocol.self]
        return try AILabToolsClient(
            apiKey: "test-key",
            session: URLSession(configuration: configuration),
            baseURL: URL(string: "https://example.test")!,
            timeout: 5
        )
    }

    private static func response(
        _ request: URLRequest,
        status: Int = 200,
        json: String
    ) -> (HTTPURLResponse, Data) {
        (
            HTTPURLResponse(
                url: request.url!,
                statusCode: status,
                httpVersion: nil,
                headerFields: ["Content-Type": "application/json"]
            )!,
            Data(json.utf8)
        )
    }
}

private final class MockURLProtocol: URLProtocol {
    static var handler: ((URLRequest) throws -> (HTTPURLResponse, Data))?

    override class func canInit(with request: URLRequest) -> Bool { true }
    override class func canonicalRequest(for request: URLRequest) -> URLRequest { request }

    override func startLoading() {
        do {
            guard let handler = Self.handler else {
                throw AILabToolsError.invalidResponse("Missing test handler")
            }
            let (response, data) = try handler(request)
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            client?.urlProtocol(self, didLoad: data)
            client?.urlProtocolDidFinishLoading(self)
        } catch {
            client?.urlProtocol(self, didFailWithError: error)
        }
    }

    override func stopLoading() {}
}

private func requestBody(_ request: URLRequest) -> Data {
    if let body = request.httpBody { return body }
    guard let stream = request.httpBodyStream else { return Data() }
    stream.open()
    defer { stream.close() }
    var data = Data()
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: 4_096)
    defer { buffer.deallocate() }
    while stream.hasBytesAvailable {
        let count = stream.read(buffer, maxLength: 4_096)
        if count <= 0 { break }
        data.append(buffer, count: count)
    }
    return data
}
