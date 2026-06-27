<?php

declare(strict_types=1);

namespace AILabTools\Response;

trait ResponseValue
{
    private static function stringValue(mixed $value): ?string
    {
        return $value === null ? null : (string) $value;
    }

    private static function intValue(mixed $value): ?int
    {
        return $value === null ? null : (int) $value;
    }

    private static function floatValue(mixed $value): ?float
    {
        return $value === null ? null : (float) $value;
    }

    private static function boolValue(mixed $value): ?bool
    {
        return $value === null ? null : (bool) $value;
    }

    /** @return array<mixed>|null */
    private static function arrayValue(mixed $value): ?array
    {
        return is_array($value) ? array_values($value) : null;
    }

    /** @return array<string, mixed>|null */
    private static function mapValue(mixed $value): ?array
    {
        return is_array($value) ? $value : null;
    }

    /** @return list<int>|null */
    private static function intList(mixed $value): ?array
    {
        return is_array($value) ? array_map(static fn (mixed $item): int => (int) $item, array_values($value)) : null;
    }

    /** @return list<float>|null */
    private static function floatList(mixed $value): ?array
    {
        return is_array($value) ? array_map(static fn (mixed $item): float => (float) $item, array_values($value)) : null;
    }

    /** @return list<string>|null */
    private static function stringList(mixed $value): ?array
    {
        return is_array($value) ? array_map(static fn (mixed $item): string => (string) $item, array_values($value)) : null;
    }
}
