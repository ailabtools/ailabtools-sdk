package com.ailabtools.sdk.api

import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutUniversalBackgroundRemovalResponse

/** Convenience operations for common background-removal workflows. */
public class BackgroundApi internal constructor(
    private val cutout: CutoutApi,
) {
    /** Removes the background from an image. */
    public suspend fun remove(
        parameters: CutoutUniversalBackgroundRemovalParams,
    ): CutoutUniversalBackgroundRemovalResponse =
        cutout.cutoutUniversalBackgroundRemoval(parameters)
}
