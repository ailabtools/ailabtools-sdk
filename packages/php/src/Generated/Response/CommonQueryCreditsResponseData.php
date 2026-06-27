<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class CommonQueryCreditsResponseData
{
    use ResponseValue;

    public function __construct(
        /** Unique identification. */
        public readonly ?string $uniqueSign = null,
        /** Name. */
        public readonly ?string $name = null,
        /** Credit Balance. */
        public readonly ?float $balance = null,
        /** Total Credits. */
        public readonly ?float $total = null,
        /** Balance after last purchase. */
        public readonly ?float $lastRechargeBalance = null,
        /** Credit Balance Early Warning Value. */
        public readonly ?float $balanceWarning = null,
        /** Time of first purchase. */
        public readonly ?int $firstBuyTime = null,
        /** Last update time. */
        public readonly ?int $lastUpdateTime = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            uniqueSign: self::stringValue($payload['unique_sign'] ?? null),
            name: self::stringValue($payload['name'] ?? null),
            balance: self::floatValue($payload['balance'] ?? null),
            total: self::floatValue($payload['total'] ?? null),
            lastRechargeBalance: self::floatValue($payload['last_recharge_balance'] ?? null),
            balanceWarning: self::floatValue($payload['balance_warning'] ?? null),
            firstBuyTime: self::intValue($payload['first_buy_time'] ?? null),
            lastUpdateTime: self::intValue($payload['last_update_time'] ?? null),
        );
    }
}
