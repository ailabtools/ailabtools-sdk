// Generated from packages/spec.json. Do not edit manually.
import Foundation

public final class CutoutAPI {
    private let requester: Requester

    internal init(requester: Requester) {
        self.requester = requester
    }

    public func cutoutClothingBackgroundRemoval(
        _ parameters: CutoutClothingBackgroundRemovalParams
    ) async throws -> CutoutClothingBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/general/apparel-background-removal", parameters: parameters, multipart: true)
    }

    public func cutoutProductBackgroundRemoval(
        _ parameters: CutoutProductBackgroundRemovalParams
    ) async throws -> CutoutProductBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/general/commodity-background-removal", parameters: parameters, multipart: true)
    }

    public func cutoutFoodBackgroundRemoval(
        _ parameters: CutoutFoodBackgroundRemovalParams
    ) async throws -> CutoutFoodBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/general/food-background-removal", parameters: parameters, multipart: true)
    }

    public func cutoutUniversalBackgroundRemoval(
        _ parameters: CutoutUniversalBackgroundRemovalParams
    ) async throws -> CutoutUniversalBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/general/universal-background-removal", parameters: parameters, multipart: true)
    }

    public func cutoutAvatarExtraction(
        _ parameters: CutoutAvatarExtractionParams
    ) async throws -> CutoutAvatarExtractionResponse {
        try await requester.request(method: "POST", path: "/api/cutout/portrait/avatar-extraction", parameters: parameters, multipart: true)
    }

    public func cutoutHairExtraction(
        _ parameters: CutoutHairExtractionParams
    ) async throws -> CutoutHairExtractionResponse {
        try await requester.request(method: "POST", path: "/api/cutout/portrait/hairstyle-extraction", parameters: parameters, multipart: true)
    }

    public func cutoutHumanBackgroundRemoval(
        _ parameters: CutoutHumanBackgroundRemovalParams
    ) async throws -> CutoutHumanBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/portrait/portrait-background-removal", parameters: parameters, multipart: true)
    }

    public func cutoutHDUniversalBackgroundRemoval(
        _ parameters: CutoutHDUniversalBackgroundRemovalParams
    ) async throws -> CutoutHDUniversalBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/general/hd-universal-background-removal", parameters: parameters, multipart: true)
    }

    public func cutoutHdHumanBodyBackgroundRemoval(
        _ parameters: CutoutHdHumanBodyBackgroundRemovalParams
    ) async throws -> CutoutHdHumanBodyBackgroundRemovalResponse {
        try await requester.request(method: "POST", path: "/api/cutout/portrait/hd-portrait-background-removal", parameters: parameters, multipart: true)
    }

}
