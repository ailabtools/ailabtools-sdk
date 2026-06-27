package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Skin Analyze Pro API. */
public final class PortraitSkinAnalysisProfessionalParams implements RequestParams {
    private final FileInput image;
    private final FileInput leftSideImage;
    private final FileInput rightSideImage;
    private final String returnMaps;
    private final String returnMarks;
    private final String roiOutlineColor;
    private final String returnSideResults;

    private PortraitSkinAnalysisProfessionalParams(Builder builder) {
        this.image = builder.image;
        this.leftSideImage = builder.leftSideImage;
        this.rightSideImage = builder.rightSideImage;
        this.returnMaps = builder.returnMaps;
        this.returnMarks = builder.returnMarks;
        this.roiOutlineColor = builder.roiOutlineColor;
        this.returnSideResults = builder.returnSideResults;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getLeftSideImage() { return leftSideImage; }
    public FileInput getRightSideImage() { return rightSideImage; }
    public String getReturnMaps() { return returnMaps; }
    public String getReturnMarks() { return returnMarks; }
    public String getRoiOutlineColor() { return roiOutlineColor; }
    public String getReturnSideResults() { return returnSideResults; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("left_side_image", leftSideImage);
        values.put("right_side_image", rightSideImage);
        values.put("return_maps", returnMaps);
        values.put("return_marks", returnMarks);
        values.put("roi_outline_color", roiOutlineColor);
        values.put("return_side_results", returnSideResults);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput leftSideImage;
        private FileInput rightSideImage;
        private String returnMaps;
        private String returnMarks;
        private String roiOutlineColor;
        private String returnSideResults;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder leftSideImage(FileInput leftSideImage) {
            this.leftSideImage = leftSideImage;
            return this;
        }

        public Builder rightSideImage(FileInput rightSideImage) {
            this.rightSideImage = rightSideImage;
            return this;
        }

        public Builder returnMaps(String returnMaps) {
            this.returnMaps = returnMaps;
            return this;
        }

        public Builder returnMarks(String returnMarks) {
            this.returnMarks = returnMarks;
            return this;
        }

        public Builder roiOutlineColor(String roiOutlineColor) {
            this.roiOutlineColor = roiOutlineColor;
            return this;
        }

        public Builder returnSideResults(String returnSideResults) {
            this.returnSideResults = returnSideResults;
            return this;
        }

        public PortraitSkinAnalysisProfessionalParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitSkinAnalysisProfessionalParams(this);
        }
    }
}
