package com.ailabtools.sdk

import java.io.File
import java.io.InputStream

/** Binary file content used by multipart API parameters. */
public class FileInput private constructor(
    internal val bytes: ByteArray,
    public val filename: String,
    public val contentType: String,
) {
    public companion object {
        @JvmStatic
        @JvmOverloads
        public fun fromBytes(
            bytes: ByteArray,
            filename: String,
            contentType: String = "application/octet-stream",
        ): FileInput {
            require(filename.isNotBlank()) { "filename must not be blank" }
            return FileInput(bytes.copyOf(), filename, contentType)
        }

        @JvmStatic
        @JvmOverloads
        public fun fromFile(
            file: File,
            contentType: String = "application/octet-stream",
        ): FileInput = fromBytes(file.readBytes(), file.name, contentType)

        @JvmStatic
        @JvmOverloads
        public fun fromStream(
            input: InputStream,
            filename: String,
            contentType: String = "application/octet-stream",
        ): FileInput = fromBytes(input.readBytes(), filename, contentType)
    }
}
