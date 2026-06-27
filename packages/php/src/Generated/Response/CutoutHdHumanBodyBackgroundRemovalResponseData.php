<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class CutoutHdHumanBodyBackgroundRemovalResponseData
{
    use ResponseValue;

    public function __construct(
        /** @var list<CutoutHdHumanBodyBackgroundRemovalElement>|null */
        public readonly ?array $elements = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            elements: isset($payload["elements"]) && is_array($payload["elements"])
                ? array_values(array_map(static fn (array $item): CutoutHdHumanBodyBackgroundRemovalElement => CutoutHdHumanBodyBackgroundRemovalElement::fromArray($item), $payload["elements"]))
                : null,
        );
    }
}
