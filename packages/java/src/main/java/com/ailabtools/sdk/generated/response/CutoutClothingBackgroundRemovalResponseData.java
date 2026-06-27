package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

/** Response data for Costume Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutClothingBackgroundRemovalResponseData {
    @JsonProperty("elements")
    private List<Object> elements;
    @JsonProperty("image_url")
    private String imageUrl;
    @JsonProperty("class_url")
    private Map<String, Object> classUrl;
    @JsonProperty("tops")
    private String tops;
    @JsonProperty("coat")
    private String coat;
    @JsonProperty("skirt")
    private String skirt;
    @JsonProperty("pants")
    private String pants;
    @JsonProperty("bag")
    private String bag;
    @JsonProperty("shoes")
    private String shoes;
    @JsonProperty("hat")
    private String hat;

    public List<Object> getElements() { return elements; }
    public String getImageUrl() { return imageUrl; }
    public Map<String, Object> getClassUrl() { return classUrl; }
    public String getTops() { return tops; }
    public String getCoat() { return coat; }
    public String getSkirt() { return skirt; }
    public String getPants() { return pants; }
    public String getBag() { return bag; }
    public String getShoes() { return shoes; }
    public String getHat() { return hat; }
}
