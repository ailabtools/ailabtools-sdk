<?php

declare(strict_types=1);

namespace AILabTools\Tests;

use PHPUnit\Framework\TestCase;
use RecursiveDirectoryIterator;
use RecursiveIteratorIterator;

final class GeneratedSurfaceTest extends TestCase
{
    public function testGeneratedApiSurfaceContainsAllDocumentedEndpoints(): void
    {
        $source = '';
        $directory = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator(dirname(__DIR__) . '/src/Api'),
        );
        foreach ($directory as $file) {
            if ($file->isFile() && str_ends_with($file->getFilename(), 'Api.php')) {
                $source .= file_get_contents($file->getPathname());
            }
        }

        self::assertSame(93, preg_match_all('/->request\\(/', $source));
    }
}
