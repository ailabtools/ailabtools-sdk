package com.ailabtools.sdk.api;

import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams;
import com.ailabtools.sdk.generated.response.CutoutUniversalBackgroundRemovalResponse;

/** Convenience methods for common background operations. */
public final class BackgroundApi {
    private final CutoutApi cutout;

    public BackgroundApi(CutoutApi cutout) {
        this.cutout = cutout;
    }

    public CutoutUniversalBackgroundRemovalResponse remove(
            CutoutUniversalBackgroundRemovalParams params) {
        return cutout.cutoutUniversalBackgroundRemoval(params);
    }
}
