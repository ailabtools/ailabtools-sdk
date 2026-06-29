import Foundation

public final class BackgroundAPI {
    private let cutout: CutoutAPI

    internal init(cutout: CutoutAPI) {
        self.cutout = cutout
    }

    public func remove(
        _ parameters: CutoutUniversalBackgroundRemovalParams
    ) async throws -> CutoutUniversalBackgroundRemovalResponse {
        try await cutout.cutoutUniversalBackgroundRemoval(parameters)
    }
}
