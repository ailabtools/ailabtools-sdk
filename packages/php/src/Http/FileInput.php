<?php

declare(strict_types=1);

namespace AILabTools\Http;

use InvalidArgumentException;

final class FileInput
{
    /** @param resource|string|null $contents */
    private function __construct(
        private readonly mixed $contents,
        public readonly string $filename,
        public readonly ?string $contentType,
        private readonly ?string $path = null,
    ) {
    }

    public static function fromPath(
        string $path,
        ?string $filename = null,
        ?string $contentType = null,
    ): self {
        if (!is_file($path) || !is_readable($path)) {
            throw new InvalidArgumentException("File is not readable: {$path}");
        }

        return new self(
            null,
            $filename ?? basename($path),
            $contentType ?? self::contentTypeFor($path),
            $path,
        );
    }

    public static function fromBytes(
        string $bytes,
        string $filename,
        ?string $contentType = null,
    ): self {
        return new self($bytes, $filename, $contentType ?? self::contentTypeFor($filename));
    }

    /** @param resource $resource */
    public static function fromResource(
        mixed $resource,
        string $filename,
        ?string $contentType = null,
    ): self {
        if (!is_resource($resource)) {
            throw new InvalidArgumentException('File resource must be a valid resource.');
        }

        return new self($resource, $filename, $contentType ?? self::contentTypeFor($filename));
    }

    /**
     * @return array{part: array{name: string, contents: mixed, filename: string, headers?: array<string, string>}, close: resource|null}
     */
    public function toMultipartPart(string $field): array
    {
        $close = null;
        $contents = $this->contents;
        if ($this->path !== null) {
            $contents = fopen($this->path, 'rb');
            if ($contents === false) {
                throw new InvalidArgumentException("Unable to open file: {$this->path}");
            }
            $close = $contents;
        }

        $part = [
            'name' => $field,
            'contents' => $contents,
            'filename' => $this->filename,
        ];
        if ($this->contentType !== null) {
            $part['headers'] = ['Content-Type' => $this->contentType];
        }

        return ['part' => $part, 'close' => $close];
    }

    private static function contentTypeFor(string $filename): string
    {
        return match (strtolower(pathinfo($filename, PATHINFO_EXTENSION))) {
            'jpg', 'jpeg' => 'image/jpeg',
            'png' => 'image/png',
            'webp' => 'image/webp',
            'bmp' => 'image/bmp',
            default => 'application/octet-stream',
        };
    }
}
