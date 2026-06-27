package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Querying Credits API. */
public final class CommonQueryCreditsParams implements RequestParams {
    private CommonQueryCreditsParams(Builder builder) {
    }

    public static Builder builder() { return new Builder(); }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        return values;
    }

    public static final class Builder {
        public CommonQueryCreditsParams build() {
            return new CommonQueryCreditsParams(this);
        }
    }
}
