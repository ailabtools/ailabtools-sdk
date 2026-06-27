<?php

declare(strict_types=1);

namespace AILabTools\Api;

use AILabTools\Generated\Params\CutoutUniversalBackgroundRemovalParams;
use AILabTools\Generated\Response\CutoutUniversalBackgroundRemovalResponse;

final class BackgroundApi
{
    public function __construct(private readonly CutoutApi $cutout)
    {
    }

    public function remove(
        CutoutUniversalBackgroundRemovalParams $params,
    ): CutoutUniversalBackgroundRemovalResponse {
        return $this->cutout->cutoutUniversalBackgroundRemoval($params);
    }
}
