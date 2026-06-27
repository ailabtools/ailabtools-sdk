package com.ailabtools.sdk.params;

import java.util.Map;

/** Parameters that can be serialized into an AILabTools API request. */
public interface RequestParams {
    Map<String, Object> toMap();
}
