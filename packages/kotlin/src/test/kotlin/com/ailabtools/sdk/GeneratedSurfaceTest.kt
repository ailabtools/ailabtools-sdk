package com.ailabtools.sdk

import java.nio.file.Files
import java.nio.file.Path
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Test

internal class GeneratedSurfaceTest {
    @Test
    fun `generated API surface contains every documented endpoint`() {
        val apiRoot = Path.of("src", "main", "kotlin", "com", "ailabtools", "sdk", "api")
        val apiSource = Files.walk(apiRoot).use { paths ->
            paths.iterator().asSequence()
                .filter { it.fileName.toString().endsWith("Api.kt") }
                .map { Files.readString(it) }
                .joinToString("\n")
        }
        val endpointCalls = Regex("""requester\.request\(""").findAll(apiSource).count()
        val uniquePaths = Regex(""""/api/[^"]+"""")
            .findAll(apiSource)
            .map { it.value }
            .toSet()

        assertEquals(93, endpointCalls)
        assertEquals(93, uniquePaths.size)
        assertTrue(apiSource.contains("suspend fun"))
    }
}
