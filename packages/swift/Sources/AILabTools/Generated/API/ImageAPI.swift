// Generated from packages/spec.json. Do not edit manually.
import Foundation

public final class ImageAPI {
    private let requester: Requester

    internal init(requester: Requester) {
        self.requester = requester
    }

    public func imageQueryingAsyncTaskResults(
        _ parameters: ImageQueryingAsyncTaskResultsParams
    ) async throws -> ImageQueryingAsyncTaskResultsResponse {
        try await requester.request(method: "GET", path: "/api/image/asyn-task-results", parameters: parameters, multipart: false)
    }

    public func imageAiImageExtender(
        _ parameters: ImageAiImageExtenderParams
    ) async throws -> ImageAiImageExtenderResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/ai-image-extender", parameters: parameters, multipart: true)
    }

    public func imageAiObjectReplacer(
        _ parameters: ImageAiObjectReplacerParams
    ) async throws -> ImageAiObjectReplacerResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/ai-object-replacer", parameters: parameters, multipart: true)
    }

    public func imageAIImageCropping(
        _ parameters: ImageAIImageCroppingParams
    ) async throws -> ImageAIImageCroppingResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/image-cropping", parameters: parameters, multipart: true)
    }

    public func imageErasure(
        _ parameters: ImageErasureParams
    ) async throws -> ImageErasureResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/image-erase", parameters: parameters, multipart: true)
    }

    public func imageInvisibleImageWatermark(
        _ parameters: ImageInvisibleImageWatermarkParams
    ) async throws -> ImageInvisibleImageWatermarkResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/image-invisible-image-watermark", parameters: parameters, multipart: true)
    }

    public func imageInvisibleTextWatermark(
        _ parameters: ImageInvisibleTextWatermarkParams
    ) async throws -> ImageInvisibleTextWatermarkResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/image-invisible-text-watermarking", parameters: parameters, multipart: true)
    }

    public func imageIntelligentComposition(
        _ parameters: ImageIntelligentCompositionParams
    ) async throws -> ImageIntelligentCompositionResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/intelligent-composition", parameters: parameters, multipart: true)
    }

    public func imagePhotoEditing(
        _ parameters: ImagePhotoEditingParams
    ) async throws -> ImagePhotoEditingResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/photo-retouching", parameters: parameters, multipart: true)
    }

    public func imageRemoveObjects(
        _ parameters: ImageRemoveObjectsParams
    ) async throws -> ImageRemoveObjectsResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/remove-objects", parameters: parameters, multipart: true)
    }

    public func removeObjects(
        _ parameters: ImageRemoveObjectsParams
    ) async throws -> ImageRemoveObjectsResponse {
        try await imageRemoveObjects(parameters)
    }

    public func imageRemoveObjectsAdvanced(
        _ parameters: ImageRemoveObjectsAdvancedParams
    ) async throws -> ImageRemoveObjectsAdvancedResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/remove-objects-advanced", parameters: parameters, multipart: true)
    }

    public func imageRemoveObjectsPro(
        _ parameters: ImageRemoveObjectsProParams
    ) async throws -> ImageRemoveObjectsProResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/remove-objects-pro", parameters: parameters, multipart: true)
    }

    public func imageAICartoonGenerator(
        _ parameters: ImageAICartoonGeneratorParams
    ) async throws -> ImageAICartoonGeneratorResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/ai-anime-generator", parameters: parameters, multipart: true)
    }

    public func imageColoring(
        _ parameters: ImageColoringParams
    ) async throws -> ImageColoringResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/image-colorization", parameters: parameters, multipart: true)
    }

    public func imageStyleTransfer(
        _ parameters: ImageStyleTransferParams
    ) async throws -> ImageStyleTransferResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/image-style-conversion", parameters: parameters, multipart: true)
    }

    public func imageStyleMigration(
        _ parameters: ImageStyleMigrationParams
    ) async throws -> ImageStyleMigrationResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/image-style-migration", parameters: parameters, multipart: true)
    }

    public func imageColorEnhancement(
        _ parameters: ImageColorEnhancementParams
    ) async throws -> ImageColorEnhancementResponse {
        try await requester.request(method: "POST", path: "/api/image/enhance/image-color-enhancement", parameters: parameters, multipart: true)
    }

    public func imageContrastEnhancement(
        _ parameters: ImageContrastEnhancementParams
    ) async throws -> ImageContrastEnhancementResponse {
        try await requester.request(method: "POST", path: "/api/image/enhance/image-contrast-enhancement", parameters: parameters, multipart: true)
    }

    public func imageDehaze(
        _ parameters: ImageDehazeParams
    ) async throws -> ImageDehazeResponse {
        try await requester.request(method: "POST", path: "/api/image/enhance/image-defogging", parameters: parameters, multipart: true)
    }

    public func imageLosslessEnlargement(
        _ parameters: ImageLosslessEnlargementParams
    ) async throws -> ImageLosslessEnlargementResponse {
        try await requester.request(method: "POST", path: "/api/image/enhance/image-lossless-enlargement", parameters: parameters, multipart: true)
    }

    public func upscale(
        _ parameters: ImageLosslessEnlargementParams
    ) async throws -> ImageLosslessEnlargementResponse {
        try await imageLosslessEnlargement(parameters)
    }

    public func imageClarityEnhancement(
        _ parameters: ImageClarityEnhancementParams
    ) async throws -> ImageClarityEnhancementResponse {
        try await requester.request(method: "POST", path: "/api/image/enhance/image-sharpness-enhancement", parameters: parameters, multipart: true)
    }

    public func imageDistortionCorrection(
        _ parameters: ImageDistortionCorrectionParams
    ) async throws -> ImageDistortionCorrectionResponse {
        try await requester.request(method: "POST", path: "/api/image/enhance/stretch-image-recovery", parameters: parameters, multipart: true)
    }

    public func imageCompositionAestheticsScore(
        _ parameters: ImageCompositionAestheticsScoreParams
    ) async throws -> ImageCompositionAestheticsScoreResponse {
        try await requester.request(method: "POST", path: "/api/image/rating/image-composition-aesthetics-scoring", parameters: parameters, multipart: true)
    }

    public func imageExposureRating(
        _ parameters: ImageExposureRatingParams
    ) async throws -> ImageExposureRatingResponse {
        try await requester.request(method: "POST", path: "/api/image/rating/image-exposure-score", parameters: parameters, multipart: true)
    }

    public func imageAINailArt(
        _ parameters: ImageAINailArtParams
    ) async throws -> ImageAINailArtResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/ai-nail-art", parameters: parameters, multipart: true)
    }

    public func imageAINailArtPro(
        _ parameters: ImageAINailArtProParams
    ) async throws -> ImageAINailArtProResponse {
        try await requester.request(method: "POST", path: "/api/image/editing/ai-nail-art-pro", parameters: parameters, multipart: true)
    }

    public func imageAIPhotography(
        _ parameters: ImageAIPhotographyParams
    ) async throws -> ImageAIPhotographyResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/ai-photography", parameters: parameters, multipart: true)
    }

    public func imageAIEmojiGenerator(
        _ parameters: ImageAIEmojiGeneratorParams
    ) async throws -> ImageAIEmojiGeneratorResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/photo-to-emoji-grid", parameters: parameters, multipart: true)
    }

    public func imagePhotoToColoringPage(
        _ parameters: ImagePhotoToColoringPageParams
    ) async throws -> ImagePhotoToColoringPageResponse {
        try await requester.request(method: "POST", path: "/api/image/effects/photo-to-line-art", parameters: parameters, multipart: true)
    }

    public func imageAIFlowerWallpaper(
        _ parameters: ImageAIFlowerWallpaperParams
    ) async throws -> ImageAIFlowerWallpaperResponse {
        try await requester.request(method: "POST", path: "/api/image/generation/ai-flower-wallpaper", parameters: parameters, multipart: true)
    }

}
