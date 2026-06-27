package com.ailabtools.sdk.exception;

/** A local transport, serialization, or SDK runtime error. */
public class SdkException extends RuntimeException {
    public SdkException(String message) {
        super(message);
    }

    public SdkException(String message, Throwable cause) {
        super(message, cause);
    }
}
