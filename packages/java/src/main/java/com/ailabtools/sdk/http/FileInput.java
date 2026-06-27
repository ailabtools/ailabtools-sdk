package com.ailabtools.sdk.http;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Objects;

/** A file uploaded as part of a multipart API request. */
public final class FileInput {
    private final byte[] bytes;
    private final String filename;
    private final String contentType;

    private FileInput(byte[] bytes, String filename, String contentType) {
        this.bytes = Arrays.copyOf(bytes, bytes.length);
        this.filename = Objects.requireNonNull(filename, "filename");
        this.contentType = contentType == null ? detectContentType(filename) : contentType;
    }

    public static FileInput fromPath(Path path) throws IOException {
        return fromPath(path, path.getFileName().toString(), null);
    }

    public static FileInput fromPath(Path path, String filename, String contentType) throws IOException {
        return new FileInput(Files.readAllBytes(path), filename, contentType);
    }

    public static FileInput fromBytes(byte[] bytes, String filename) {
        return new FileInput(bytes, filename, null);
    }

    public static FileInput fromBytes(byte[] bytes, String filename, String contentType) {
        return new FileInput(bytes, filename, contentType);
    }

    public static FileInput fromInputStream(InputStream stream, String filename) throws IOException {
        Objects.requireNonNull(stream, "stream");
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int read;
        while ((read = stream.read(buffer)) != -1) {
            output.write(buffer, 0, read);
        }
        return new FileInput(output.toByteArray(), filename, null);
    }

    public byte[] bytes() {
        return Arrays.copyOf(bytes, bytes.length);
    }

    public String filename() {
        return filename;
    }

    public String contentType() {
        return contentType;
    }

    private static String detectContentType(String filename) {
        String lower = filename.toLowerCase();
        if (lower.endsWith(".jpg") || lower.endsWith(".jpeg")) return "image/jpeg";
        if (lower.endsWith(".png")) return "image/png";
        if (lower.endsWith(".webp")) return "image/webp";
        if (lower.endsWith(".bmp")) return "image/bmp";
        return "application/octet-stream";
    }
}
