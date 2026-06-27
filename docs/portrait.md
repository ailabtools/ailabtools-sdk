# Portrait API Reference

> Generated from `packages/spec.json`. The SDK exposes 87 endpoints from the current official OpenAPI and retains 6 legacy-compatible endpoints.

## Face Analyzer API

- SDK method: `portrait.portraitFaceAnalyzer()`
- HTTP: `POST /api/portrait/analysis/face-analyzer`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `max_face_num` | `integer` | No | The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed. |
| `face_attributes_type` | `string` | No | Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced. |
| `need_rotate_detection` | `integer` | No | Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/face-analyzer
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `image_width` | `integer` | Image width. |
| `image_height` | `integer` | Image height. |
| `face_detail_infos` | `array` | List of face information. |
| `face_rect` | `object` | Face frame position. |
| `x` | `integer` | The horizontal coordinate of the upper left corner of the face frame.The face frame contains the positions of the five senses of the face and expands on them, if the face frame is out of the range of the picture, it will lead to negative coordinates.If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand. |
| `y` | `integer` | The vertical coordinate of the upper left corner of the face frame. The face frame contains the positions of the five senses of the face and expands them to a certain extent. If the face frame exceeds the range of the picture, it will lead to negative coordinates. If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand. |
| `width` | `integer` | Face width. |
| `height` | `integer` | Face height. |
| `face_detail_attributes_info` | `object` | Face attribute information. |
| `age` | `integer` | Age. 65: 65 years old and above. When face_attributes_type does not contain Age or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `beauty` | `integer` | Beauty Score. When face_attributes_type does not contain Beauty or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `emotion` | `object` | Emotional information. When face_attributes_type does not contain Emotion or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: Neutral. 1: Happy. 2: Surprised. 3: Angry. 4: Sad. 5: Disgusted. 6: Fearful. |
| `probability` | `float` | Probability of being correct. |
| `eye` | `object` | Eye-related information. face_attributes_type does not contain Eye or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `glass` | `object` | Wearing glasses. |
| `type` | `integer` | 0: No glasses. 1: Regular glasses. 2: Sunglasses. |
| `probability` | `float` | Probability of being correct. |
| `eye_open` | `object` | Closed eyes. |
| `type` | `integer` | 0: No. 1: Yes. |
| `probability` | `float` | Probability of being correct. |
| `eyelid_type` | `object` | Double eyelids. |
| `type` | `integer` | 0: No. 1: Yes. |
| `probability` | `float` | Probability of being correct. |
| `eye_size` | `object` | Eye size. |
| `type` | `integer` | 0: Small eyes. 1: Regular eyes. 2: Large eyes. |
| `probability` | `float` | Probability of being correct. |
| `eyebrow` | `object` | Eyebrow information. face_attributes_type does not contain Eyebrow or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `eyebrow_density` | `object` | Thick eyebrows. |
| `type` | `integer` | 0: Sparse eyebrows. 1: Thick eyebrows. |
| `probability` | `float` | Probability of being correct. |
| `eyebrow_curve` | `object` | Curved eyebrows. |
| `type` | `integer` | 0: Not curved. 1: Curved eyebrows. |
| `probability` | `float` | Probability of being correct. |
| `eyebrow_length` | `object` | Eyebrow length. |
| `type` | `integer` | 0: Short eyebrows. 1: Long eyebrows. |
| `probability` | `float` | Probability of being correct. |
| `gender` | `object` | Gender information. face_attributes_type does not contain Gender or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: Male. 1: Female. |
| `probability` | `float` | Probability of being correct. |
| `hair` | `object` | Hair information. face_attributes_type does not contain Hair or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `length` | `object` | Hair length information. |
| `type` | `integer` | 0: Bald. 1: Short hair. 2: Medium-length hair. 3: Long hair. 4: Tied hair. |
| `probability` | `float` | Probability of being correct. |
| `bang` | `object` | Fringe (bangs) information. |
| `type` | `integer` | 0: No fringe (bangs). 1: Has fringe (bangs). |
| `probability` | `float` | Probability of being correct. |
| `color` | `object` | Hair color information. |
| `type` | `integer` | 0: Black. 1: Blonde. 2: Brown. 3: Gray/White. |
| `probability` | `float` | Probability of being correct. |
| `hat` | `object` | Hat information. face_attributes_type does not contain Hat or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `style` | `object` | Hat wearing status information. |
| `type` | `integer` | 0: No hat. 1: Regular hat. 2: Helmet. 3: Security hat. |
| `probability` | `float` | Probability of being correct. |
| `color` | `object` | Hat color. |
| `type` | `integer` | 0: No hat. 1: Red shades. 2: Yellow shades. 3: Blue shades. 4: Black shades. 5: Gray/White shades. 6: Mixed colors. |
| `probability` | `float` | Probability of being correct. |
| `head_pose` | `object` | Face offset information. face_attributes_type does not contain HeadPose or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `pitch` | `integer` | Vertical Offset. |
| `yaw` | `integer` | Horizontal Offset. |
| `pitch` | `integer` | Planar Rotation. |
| `mask` | `object` | Mask wearing information. face_attributes_type does not contain Mask or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: No mask. 1: Mask without covering face. 2: Mask covering chin. 3: Mask covering mouth. 4: Correctly worn mask. |
| `probability` | `float` | Probability of being correct. |
| `mouth` | `object` | Mouth information. face_attributes_type does not contain Mouth or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `mouth_open` | `object` | Mouth open. |
| `type` | `integer` | 0: No. 1: Yes. |
| `probability` | `float` | Probability of being correct. |
| `moustache` | `object` | Facial hair information. face_attributes_type does not contain Moustache or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: No facial hair. 1: Facial hair. |
| `probability` | `float` | Probability of being correct. |
| `nose` | `object` | Nose information. face_attributes_type does not contain Nose or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: Upturned nose. 1: Hooked nose. 2: Normal. 3: Round-tipped nose. |
| `probability` | `float` | Probability of being correct. |
| `shape` | `object` | Face shape information. face_attributes_type does not contain Shape or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: Square face. 1: Triangular face. 2: Oval face. 3: Heart-shaped face. 4: Round face. |
| `probability` | `float` | Probability of being correct. |
| `skin` | `object` | Skin color information. face_attributes_type does not contain Skin or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| `type` | `integer` | 0: Yellow skin. 1: Brown skin. 2: Black skin. 3: White skin. |
| `probability` | `float` | Probability of being correct. |
| `smile` | `integer` | Smile Rating. face_attributes_type does not contain Smile or when more than 5 faces are detected, this parameter is still returned but is not informative. |

### SDK Return Type

- `BaseResponse<PortraitFaceAnalyzerResponseData>`

## Face Analyzer Advanced API

- SDK method: `portrait.portraitFaceAnalyzerAdvanced()`
- HTTP: `POST /api/portrait/analysis/face-analyzer-advanced`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/face-analyzer-advanced
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` |  |
| `pupils` | `array of float` | The center point coordinates and radius of the left and right pupils, with 6 floating-point values per face, in the order of [left_iris_cenpt.x, left_iris_cenpt.y, left_iris_radius, right_iris_cenpt.x, right_iris_cenpt.y, right_iris_radius]. If multiple faces are detected, results are returned in order. |
| `gender_list` | `array of integer` | Gender. If multiple faces are detected, results are returned in order. 0: Female. 1: Male. |
| `expressions` | `array of integer` | Expression. If multiple faces are detected, results are returned in order. 0: Neutral. 1: Smile. |
| `face_count` | `integer` | Number of faces. |
| `landmarks` | `array of float` | Facial landmark detection results. A set of landmark coordinates is returned for each face, represented as (x0, y0, x1, y1, …). If multiple faces are detected, results are returned in order. |
| `landmark_count` | `integer` | Number of facial landmarks. distributed as follows: Eyebrows: 24 points Eyes: 32 points Nose: 6 points Mouth: 34 points Outer contour: 9 points |
| `beauty_list` | `array of float` | Attractiveness score. A higher score indicates a higher level of attractiveness. If multiple faces are detected, results are returned in order. |
| `hat_list` | `array of integer` | Whether wearing a hat. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. |
| `face_probability_list` | `array of float` | Probability of a face. If multiple faces are detected, results are returned in order. |
| `glasses` | `array of integer` | Whether wearing glasses. If multiple faces are detected, results are returned in order. 0: No glasses. 1: Wearing regular glasses. 2: Wearing sunglasses. |
| `face_rectangles` | `array of integer` | Face bounding box, represented as [left, top, width, height]. If multiple faces are detected, results are returned in order. |
| `pose_list` | `array of float` | Face pose, in the format [yaw, pitch, roll]. If multiple faces are detected, results are returned in order. yaw: left-right angle. Range: [-90, 90]. pitch: up-down angle. Range: [-90, 90]. roll: in-plane rotation angle. Range: [-180, 180]. |
| `age_list` | `array of integer` | Age. If multiple faces are detected, results are returned in order. |
| `dense_feature_length` | `integer` | The feature dimension returned by face recognition. |
| `masks` | `array of integer` | Whether wearing a mask. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. 2: Mask worn incorrectly. |
| `qualities` | `object` | Face quality score, where a higher score indicates better suitability for recognition. |
| `score_list` | `array of float` | Overall quality score, where a higher score indicates better suitability for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates high overall image quality, while a score below 85 indicates lower overall image quality. If multiple faces are detected, results are returned in order. |
| `blur_list` | `array of float` | Face blur score indicating the impact of blurriness on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower likelihood of the image being blurry, while a score below 85 indicates a higher likelihood of blurriness. If multiple faces are detected, results are returned in order. |
| `fnf_list` | `array of float` | Score indicating whether the target is a face and its impact on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image is a face, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. |
| `glass_list` | `array of float` | Score indicating the impact of upper-face occlusion (e.g., glasses) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing glasses, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. |
| `illu_list` | `array of float` | Score indicating the impact of lighting on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image has good lighting, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. |
| `mask_list` | `array of float` | Score indicating the impact of lower-face occlusion (e.g., mask) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing a mask, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. |
| `noise_list` | `array of float` | Score indicating the impact of image noise on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of image noise, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. |
| `pose_list` | `array of float` | Score indicating the impact of face pose on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability of the face being frontal, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. |

### SDK Return Type

- `BaseResponse<PortraitFaceAnalyzerAdvancedResponseData>`

## Facial Landmarks API

- SDK method: `portrait.portraitFacialLandmarks()`
- HTTP: `POST /api/portrait/analysis/face-key-points`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `max_face_num` | `integer` | No | The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected). |
| `face_field` | `string` | No | Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/face-key-points
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `result` | `object` | The content of the result data returned. |
| `face_num` | `integer` | The number of faces in the picture. |
| `face_list` | `array` | List of face information. |
| `face_token` | `string` | Face Token. |
| `location` | `object` | The position of the face in the picture. |
| `left` | `float` | The distance of the face area from the left border. |
| `top` | `float` | The distance of the face area from the upper boundary. |
| `width` | `float` | The width of the face area. |
| `height` | `float` | The height of the face area. |
| `rotation` | `integer` | The clockwise rotation angle of the face frame with respect to the vertical direction. |
| `face_probability` | `float` | Face confidence. |
| `angle` | `object` | Face rotation parameters, refer to Face Spatial Pose Angle Reference for detailed description. |
| `yaw` | `float` | The left and right rotation angle of 3D rotation. |
| `pitch` | `float` | Three-dimensional rotation of the pitch angle. |
| `roll` | `float` | In-plane rotation angle. |
| `age` | `float` | Age. |
| `gender` | `object` | Gender information. |
| `type` | `string` |  |
| `probability` | `float` | Gender confidence. |
| `landmark4` | `array` | 4 feature points. |
| `landmark72` | `array` | 72 feature points. Refer to 72 feature points for details. |
| `landmark150` | `object` | 150 feature points. Refer to 150 feature points for details. |
| `landmark201` | `object` | 201 feature points. Refer to 201 feature points for details. |

### SDK Return Type

- `BaseResponse<PortraitFacialLandmarksResponseData>`

## Skin Analyze API

- SDK method: `portrait.portraitSkinAnalysisBasic()`
- HTTP: `POST /api/portrait/analysis/skin-analysis`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/skin-analysis
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `warning` | `array` | Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]). |
| `face_rectangle` | `object` | The position of the face rectangle box. |
| `top` | `float` | The vertical coordinate of the pixel point in the upper-left corner of the rectangle box. |
| `left` | `float` | The horizontal coordinate of the pixel point in the upper-left corner of the rectangle. |
| `width` | `float` | The width of the rectangle box. |
| `height` | `float` | The height of the rectangle box. |
| `result` | `object` | Results of face skin analysis. |
| `left_eyelids` | `object` | Results of the double eyelid test on the left eye. |
| `value` | `integer` | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids |
| `confidence` | `float` | Confidence. |
| `right_eyelids` | `object` | Results of the double eyelid test on the right eye. |
| `value` | `integer` | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids |
| `confidence` | `float` | Confidence. |
| `eye_pouch` | `object` | Eye bag test results. |
| `value` | `integer` | With or without eye bags. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `dark_circle` | `object` | Dark circles test results. |
| `value` | `integer` | With or without dark circles under the eyes. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `forehead_wrinkle` | `object` | Results of the head-lift test. |
| `value` | `integer` | With or without headlines. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `crows_feet` | `object` | Fishtail test results. |
| `value` | `integer` | With or without crow's feet. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `eye_finelines` | `object` | Results of the eye fine lines test. |
| `value` | `integer` | The presence or absence of fine lines under the eyes. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `glabella_wrinkle` | `object` | Results of the interbrow line test. |
| `value` | `integer` | With or without interbrow lines. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `nasolabial_fold` | `object` | Results of the forehead line test. |
| `value` | `integer` | With or without lines. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `skin_type` | `object` | Skin texture test results. |
| `skin_type` | `integer` | Type. 0: Oily skin. 1: Dry skin. 2: Neutral skin. 3: Combination skin. |
| `details` | `object` | The confidence level of each classification. |
| `0` | `object` | Oily skin information. |
| `value` | `integer` | Oily skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `1` | `object` | Dry skin information. |
| `value` | `integer` | Dry skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `2` | `object` | Neutral skin information. |
| `value` | `integer` | Neutral skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `3` | `object` | Combination skin information. |
| `value` | `integer` | Combination skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `pores_forehead` | `object` | Forehead pore test results. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `pores_left_cheek` | `object` | Results of the left cheek pore test. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `pores_right_cheek` | `object` | Results of the right cheek pore test. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `pores_jaw` | `object` | Chin pore test results. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `blackhead` | `object` | Blackhead test results. |
| `value` | `integer` | With or without blackheads. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `acne` | `object` | Acne test results. |
| `value` | `integer` | With or without Acne. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `mole` | `object` | Mole test results. |
| `value` | `integer` | With or without moles. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `skin_spot` | `object` | Spot detection results. |
| `value` | `integer` | With or without spotting. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |

### SDK Return Type

- `BaseResponse<PortraitSkinAnalysisBasicResponseData>`

## Skin Analyze Advanced API

- SDK method: `portrait.portraitSkinAnalysisAdvanced()`
- HTTP: `POST /api/portrait/analysis/skin-analysis-advanced`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `face_quality_control` | `integer` | No | Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error. |
| `return_rect_confidence` | `integer` | No | The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence. |
| `return_maps` | `string` | No | Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/skin-analysis-advanced
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `warning` | `array` | Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]). |
| `face_rectangle` | `object` | The position of the face rectangle box. |
| `top` | `float` | The vertical coordinate of the pixel point in the upper-left corner of the rectangle box. |
| `left` | `float` | The horizontal coordinate of the pixel point in the upper-left corner of the rectangle. |
| `width` | `float` | The width of the rectangle box. |
| `height` | `float` | The height of the rectangle box. |
| `result` | `object` | Results of face skin analysis. |
| `skin_color` | `object` | Skin color test results. |
| `value` | `integer` | Skin color. 0: Transparent white. 1: White. 2: Naturally. 3: Wheat. 4: Dark. |
| `confidence` | `float` | Confidence. |
| `skintone_ita` | `object` | Returns skin color classification information based on the ITA (Individual Typology Angle) standard. **NOTE** |
| `ITA` | `float` | Angle value. |
| `skintone` | `integer` | Classified according to the skin tone of ITA. 0: Very light. 1: Light. 2: Intermediate. 3: Tan. 4: Brown. 5: Dark. 6: Abnormal color values that may be caused by weak lighting conditions or overexposure. |
| `skin_hue_ha` | `object` | Returns skin tone classification information based on HA (Hue Angle). **NOTE** |
| `HA` | `float` | HA angle value. |
| `skintone` | `integer` | Classified according to HA's skin tone hue. 0: Yellowish. 1: Neutral. 2: Reddish. 3: Abnormal hue values may be caused by abnormal ambient light tones or weak light environment or overexposure. |
| `skin_age` | `object` | Skin age test results. |
| `value` | `integer` | Face skin age value. |
| `left_eyelids` | `object` | Results of the double eyelid test on the left eye. |
| `value` | `integer` | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids |
| `confidence` | `float` | Confidence. |
| `right_eyelids` | `object` | Results of the double eyelid test on the right eye. |
| `value` | `integer` | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids |
| `confidence` | `float` | Confidence. |
| `eye_pouch` | `object` | Eye bag test results. |
| `value` | `integer` | With or without eye bags. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `eye_pouch_severity` | `object` | Severity of puffiness under the eyes (return when puffiness test result is 1) |
| `value` | `integer` | Severity. 0: Mild. 1: Moderate. 2: Severe. |
| `confidence` | `float` | Confidence. |
| `dark_circle` | `object` | Dark circles test results. |
| `value` | `integer` | Type of dark circles under the eyes. 0: No dark circles under the eyes. 1: Pigmented dark circles. 2: Vascular type dark circles under the eyes. 3: Shadow-type dark circles under the eyes. |
| `confidence` | `float` | Confidence. |
| `forehead_wrinkle` | `object` | Results of the head-lift test. |
| `value` | `integer` | With or without headlines. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `crows_feet` | `object` | Fishtail test results. |
| `value` | `integer` | With or without crow's feet. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `eye_finelines` | `object` | Results of the eye fine lines test. |
| `value` | `integer` | The presence or absence of fine lines under the eyes. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `glabella_wrinkle` | `object` | Results of the interbrow line test. |
| `value` | `integer` | With or without interbrow lines. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `nasolabial_fold` | `object` | Results of the forehead line test. |
| `value` | `integer` | With or without lines. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `nasolabial_fold_severity` | `object` | Severity of the forehead lines (returned when the result of the forehead line test is 1) |
| `value` | `integer` | Severity. 0: Mild. 1: Moderate. 1: Severe. |
| `confidence` | `float` | Confidence. |
| `skin_type` | `object` | Skin texture test results. |
| `skin_type` | `integer` | Type. 0: Oily skin. 1: Dry skin. 2: Neutral skin. 3: Combination skin. |
| `details` | `object` | The confidence level of each classification. |
| `0` | `object` | Oily skin information. |
| `value` | `integer` | Oily skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `1` | `object` | Dry skin information. |
| `value` | `integer` | Dry skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `2` | `object` | Neutral skin information. |
| `value` | `integer` | Neutral skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `3` | `object` | Combination skin information. |
| `value` | `integer` | Combination skin. 0: No. 1: Yes. |
| `confidence` | `float` | Confidence. |
| `pores_forehead` | `object` | Forehead pore test results. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `pores_left_cheek` | `object` | Results of the left cheek pore test. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `pores_right_cheek` | `object` | Results of the right cheek pore test. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `pores_jaw` | `object` | Chin pore test results. |
| `value` | `integer` | With or without enlarged pores. 0: No 1: Yes |
| `confidence` | `float` | Confidence. |
| `blackhead` | `object` | Blackhead test results. |
| `value` | `integer` | Severity. 0: No blackheads. 1: Mild. 2: Moderate. 3: Severe. |
| `confidence` | `float` | Confidence. |
| `acne` | `object` | Acne test results. |
| `rectangle` | `array` | The location of each pimple box. |
| `width` | `float` | Width. |
| `height` | `float` | Height. |
| `left` | `float` | The distance from the leftmost part of the picture. |
| `top` | `float` | The distance from the topmost edge of the image. |
| `confidence` | `array` | If return_rect_confidence is 1, the confidence that each rectangular region is discriminated as a positive case is returned. |
| `mole` | `object` | Mole test results. |
| `rectangle` | `array` | The position of each mole frame. |
| `width` | `float` | Width. |
| `height` | `float` | Height. |
| `left` | `float` | The distance from the leftmost part of the picture. |
| `top` | `float` | The distance from the topmost edge of the image. |
| `confidence` | `array` | If return_rect_confidence is 1, the confidence that each rectangular region is discriminated as a positive case is returned. |
| `closed_comedones` | `object` | Closure returns the result. |
| `rectangle` | `array` | The position of each closure frame. |
| `width` | `float` | Width. |
| `height` | `float` | Height. |
| `left` | `float` | The distance from the leftmost part of the picture. |
| `top` | `float` | The distance from the topmost edge of the image. |
| `confidence` | `array` | If return_rect_confidence is 1, the confidence that each rectangular region is discriminated as a positive case is returned. |
| `skin_spot` | `object` | Spot detection results. |
| `rectangle` | `array` | The position of each spot box. |
| `width` | `float` | Width. |
| `height` | `float` | Height. |
| `left` | `float` | The distance from the leftmost part of the picture. |
| `top` | `float` | The distance from the topmost edge of the image. |
| `confidence` | `array` | If return_rect_confidence is 1, the confidence that each rectangular region is discriminated as a positive case is returned. |
| `face_maps` | `object` | Returns the skin chromatography visualization image set in the entry (return_maps). |
| `red_area` | `base64` | Red zone map. jpeg images for base64. |
| `sensitivity` | `object` | The sensitivity of the human face within the photo. This return value must be used with the red area map, you need to set the return red area map ("red_area") in the input parameter return_maps first. |
| `sensitivity_area` | `float` | Sensitive redness areas account for the proportion of cheeks and T-zone. |
| `sensitivity_intensity` | `float` | The intensity of redness in sensitive areas. |

### SDK Return Type

- `BaseResponse<PortraitSkinAnalysisAdvancedResponseData>`

## Skin Analyze Pro API

- SDK method: `portrait.portraitSkinAnalysisProfessional()`
- HTTP: `POST /api/portrait/analysis/skin-analysis-pro`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | Main Image. |
| `left_side_image` | `file` | No | Side face picture.(Left) |
| `right_side_image` | `file` | No | Side face picture.(Right) |
| `return_maps` | `string` | No | The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details |
| `return_marks` | `string` | No | The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details |
| `roi_outline_color` | `json string` | No | Customize the color. More Details |
| `return_side_results` | `string` | No | The side face information that needs to be returned. Use commas to separate multiple types. More Details |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/skin-analysis-pro
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `left_side_result` | `json string` | Results of side face analysis. More Details |
| `right_side_result` | `json string` | Results of side face analysis. More Details |
| `face_rectangle` | `object` | Face position. More Details |
| `result` | `object` | Results of face skin analysis. More Details |

### SDK Return Type

- `BaseResponse<PortraitSkinAnalysisProfessionalResponseData>`

## Detect Skin Disease API (Legacy Compatibility)

- SDK method: `portrait.portraitSkinDiseaseDetection()`
- HTTP: `POST /api/portrait/analysis/skin-disease-detection`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `body_part` | `string` | Skin lesion site identification. scalp: Scalp. face: Face. neck: Neck. arm: Arm. chest: Chest. abdomen: Abdomen. oxter: Axilla. back: Back. waist: Lumbar region. hand: Hand. genitals: External genitalia. cruris: Groin / Inguinal region. leg: Leg. foot: Foot. unknown: Unknown. |
| `image_quality` | `float` | Image quality score. |
| `image_type` | `string` | Image classification. |
| `results_english` | `object` | 【English】The predicted results. Contains Key-Value pairs, where Key is the disease name and Value is the probability. |
| `acne` | `float` | Acne |
| `actinic_keratosis` | `float` | Actinic Keratosis |
| `alopecia_androgenetica` | `float` | Alopecia Androgenetica |
| `alopecia_areata` | `float` | Alopecia Areata |
| `bullous_dermatosis` | `float` | Bullous Dermatosis |
| `chloasma` | `float` | Chloasma |
| `corn` | `float` | Corn |
| `dermatofibroma` | `float` | Dermatofibroma |
| `eczema_dermatitis` | `float` | Eczema Dermatitis |
| `erysipelas` | `float` | Erysipelas |
| `erythema_multiforme` | `float` | Erythema Multiforme |
| `folliculitis` | `float` | Folliculitis |
| `furuncle` | `float` | Furuncle |
| `haemangioma` | `float` | Haemangioma |
| `herpes` | `float` | Herpes |
| `herpes_simplex` | `float` | Herpes Simplex |
| `iga_vasculitis` | `float` | Iga Vasculitis |
| `keloid` | `float` | Keloid |
| `keratosis_follicularism` | `float` | Keratosis Follicularism |
| `lichen_planus` | `float` | Lichen Planus |
| `lupus_erythematosus` | `float` | Lupus Erythematosus |
| `molluscum_contagiosum` | `float` | Molluscum Contagiosum |
| `nevus` | `float` | Nevus |
| `paronychia` | `float` | Paronychia |
| `pityriasis_alba` | `float` | Pityriasis Alba |
| `pityriasis_rosea` | `float` | Pityriasis Rosea |
| `prurigo_nodularis` | `float` | Prurigo Nodularis |
| `psoriasis` | `float` | Psoriasis |
| `rosacea` | `float` | Rosacea |
| `sebaceous_cyst` | `float` | Sebaceous Cyst |
| `sebaceousnevus` | `float` | Sebaceousnevus |
| `seborrheic_dermatitis` | `float` | Seborrheic Dermatitis |
| `seborrheic_keratosis` | `float` | Seborrheic Keratosis |
| `skin_tag` | `float` | Skin Tag |
| `stasis_dermatitis` | `float` | Stasis Dermatitis |
| `syringoma` | `float` | Syringoma |
| `tinea_capitis` | `float` | Tinea Capitis |
| `tinea_corporis` | `float` | Tinea Corporis |
| `tinea_cruris` | `float` | Tinea Cruris |
| `tinea_manuum` | `float` | Tinea Manuum |
| `tinea_pedis` | `float` | Tinea Pedis |
| `tinea_unguium` | `float` | Tinea Unguium |
| `tinea_versicolor` | `float` | Tinea Versicolor |
| `urticaria` | `float` | Urticaria |
| `urticaria_papular` | `float` | Urticaria Papular |
| `varicella` | `float` | Varicella |
| `verruca_plana` | `float` | Verruca Plana |
| `verruca_vulgaris` | `float` | Verruca Vulgaris |
| `vitiligo` | `float` | Vitiligo |

### SDK Return Type

- `BaseResponse<PortraitSkinDiseaseDetectionResponseData>`

## Try on Clothes API

- SDK method: `portrait.portraitTryOnClothes()`
- HTTP: `POST /api/portrait/editing/try-on-clothes`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `task_type` | `string` | Yes | Task Type. async: Asynchronous tasks. |
| `person_image` | `file` | Yes | Portrait image. |
| `clothes_image` | `file` | Yes | Clothing image. |
| `clothes_type` | `string` | Yes | Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/try-on-clothes
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `task_type` | `string` | Task Type. async: Asynchronous tasks. |
| `task_id` | `string` | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### SDK Return Type

- `BaseResponse<PortraitTryOnClothesResponseData>`

## Try on Clothes Pro API

- SDK method: `portrait.portraitTryOnClothesPro()`
- HTTP: `POST /api/portrait/editing/try-on-clothes-pro`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `task_type` | `string` | Yes | Task Type. async: Asynchronous tasks. |
| `person_image` | `file` | Yes | Portrait Image. |
| `top_garment` | `file` | Yes | Upper Body Clothing Image. |
| `bottom_garment` | `file` | No | Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty. |
| `resolution` | `integer` | No | Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px. |
| `restore_face` | `boolean` | No | Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/try-on-clothes-pro
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `task_type` | `string` | Task Type. async: Asynchronous tasks. |
| `task_id` | `string` | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### SDK Return Type

- `BaseResponse<PortraitTryOnClothesProResponseData>`

## Face Blur API

- SDK method: `portrait.portraitFacialBlurring()`
- HTTP: `POST /api/portrait/effects/blurred-faces`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/blurred-faces
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitFacialBlurringResponseData>`

## Change Facial Expressions API

- SDK method: `portrait.portraitExpressionEditing()`
- HTTP: `POST /api/portrait/effects/emotion-editor`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image_target` | `file` | Yes |  |
| `service_choice` | `integer` | Yes | Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/emotion-editor
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image` | `string` | The result image, returning the Base64 encoding of the image. |

### SDK Return Type

- `BaseResponse<PortraitExpressionEditingResponseData>`

## AI Face Enhancer API

- SDK method: `portrait.portraitFaceRestorationEnhancement()`
- HTTP: `POST /api/portrait/effects/enhance-face`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/enhance-face
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitFaceRestorationEnhancementResponseData>`

## Age & Gender Swap API

- SDK method: `portrait.portraitFaceAttributeEditing()`
- HTTP: `POST /api/portrait/effects/face-attribute-editing`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `action_type` | `string` | Yes | Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift. |
| `quality_control` | `string` | No | Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details |
| `face_location` | `json string` | No | When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/face-attribute-editing
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `result` | `object` | The content of the result data returned. |
| `image` | `string` | The BASE64 value of the edited image. |

### SDK Return Type

- `BaseResponse<PortraitFaceAttributeEditingResponseData>`

## Face Beauty API

- SDK method: `portrait.portraitFacialBeautification()`
- HTTP: `POST /api/portrait/effects/face-beauty`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `sharp` | `float` | Yes | Sharpness level. A higher value indicates a greater degree of sharpness. |
| `smooth` | `float` | Yes | Smoothness level. A higher value results in a smoother appearance. |
| `white` | `float` | Yes | Whitening level. A higher value leads to lighter skin. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/face-beauty
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitFacialBeautificationResponseData>`

## Face Beauty Advanced API

- SDK method: `portrait.portraitFacialBeautificationAdvanced()`
- HTTP: `POST /api/portrait/effects/face-beauty-advanced`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `whitening` | `integer` | No | Whitening level: 0 means no whitening, 100 represents the highest level. |
| `smoothing` | `integer` | No | Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level. |
| `face_lifting` | `integer` | No | Face slimming level: 0 means no face slimming, 100 represents the highest level. |
| `eye_enlarging` | `integer` | No | Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/face-beauty-advanced
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `result_image` | `string` | Returns the base64 data of the processed image. |

### SDK Return Type

- `BaseResponse<PortraitFacialBeautificationAdvancedResponseData>`

## Face Beauty Pro API

- SDK method: `portrait.portraitFacialBeautificationPro()`
- HTTP: `POST /api/portrait/effects/face-beauty-pro`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `whitening` | `integer` | No | Whitening Degree. 0 means no whitening effect, 100 represents the highest degree. |
| `smoothing` | `integer` | No | Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree. |
| `thinface` | `integer` | No | Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree. |
| `shrink_face` | `integer` | No | Small Face Degree. 0 means no small face effect, 100 represents the highest degree. |
| `enlarge_eye` | `integer` | No | Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree. |
| `remove_eyebrow` | `integer` | No | Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree. |
| `filter_type` | `integer` | No | Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain. |
| `task_type` | `string` | No | Task Type. sync: Synchronous tasks. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/face-beauty-pro
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `task_type` | `string` | Task Type. sync: Synchronous tasks. |
| `result` | `string` | Returns the base64 data of the processed image. |

### SDK Return Type

- `BaseResponse<PortraitFacialBeautificationProResponseData>`

## Face Filters API

- SDK method: `portrait.portraitFacialFilters()`
- HTTP: `POST /api/portrait/effects/face-filter`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `resource_type` | `string` | Yes | Picture style. More Details |
| `strength` | `float` | Yes | Filter intensity. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/face-filter
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitFacialFiltersResponseData>`

## Merge Portraits API

- SDK method: `portrait.portraitFaceFusion()`
- HTTP: `POST /api/portrait/effects/face-fusion`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image_target` | `file` | Yes | Target image. |
| `image_template` | `file` | Yes | Template images. |
| `source_similarity` | `float` | No | Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/face-fusion
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image` | `string` | The result image, returning the Base64 encoding of the image. |

### SDK Return Type

- `BaseResponse<PortraitFaceFusionResponseData>`

## Hairstyle Changer API (Legacy Compatibility)

- SDK method: `portrait.portraitHairstyleEditing()`
- HTTP: `POST /api/portrait/effects/hairstyle-editor`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image_target` | `file` | Yes |  |
| `hair_type` | `integer` | No | Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/hairstyle-editor
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image` | `string` | The result image, returning the Base64 encoding of the image. |

### SDK Return Type

- `BaseResponse<PortraitHairstyleEditingResponseData>`

## Hairstyle Changer Pro API

- SDK method: `portrait.portraitHairstyleEditingPro()`
- HTTP: `POST /api/portrait/effects/hairstyle-editor-pro`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `task_type` | `string` | Yes | Task Type. async: Asynchronous tasks. |
| `image` | `file` | Yes | Main image. |
| `hair_style` | `string` | Yes | Hairstyle. More Details |
| `color` | `string` | No | Color. More Details |
| `image_size` | `integer` | No | Returns the number of images. |
| `mask` | `file` | No | Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically. |
| `bangs` | `integer` | No | Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison |
| `mode` | `integer` | No | Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison |
| `reference` | `integer` | No | Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/hairstyle-editor-pro
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `task_type` | `string` | Task Type. async: Asynchronous tasks. |
| `task_id` | `string` | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### SDK Return Type

- `BaseResponse<PortraitHairstyleEditingProResponseData>`

## Lips Color Changer API

- SDK method: `portrait.portraitLipsColorChanger()`
- HTTP: `POST /api/portrait/effects/lips-color-changer`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `lip_color_infos` | `json string` | Yes | Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/lips-color-changer
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `result_image` | `string` | Returns the base64 data of the processed image. |

### SDK Return Type

- `BaseResponse<PortraitLipsColorChangerResponseData>`

## Live Photos API (Legacy Compatibility)

- SDK method: `portrait.portraitLivePhotos()`
- HTTP: `POST /api/portrait/effects/live-photo`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image_target` | `file` | Yes |  |
| `type` | `integer` | No | Live photo type. 0: Avatar version. 1: Full body version. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/live-photo
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `video` | `string` | Returns the base64 encoded string of the generated video. |

### SDK Return Type

- `BaseResponse<PortraitLivePhotosResponseData>`

## Cartoon Yourself API

- SDK method: `portrait.portraitCartoonYourself()`
- HTTP: `POST /api/portrait/effects/portrait-animation`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `type` | `string` | Yes | Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/portrait-animation
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitCartoonYourselfResponseData>`

## Smart Beauty API

- SDK method: `portrait.portraitIntelligentBeautification()`
- HTTP: `POST /api/portrait/effects/smart-beauty`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image_target` | `file` | Yes |  |
| `multi_face` | `string` | No | Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed. |
| `beauty_level` | `float` | No | Beauty level. |
| `task_type` | `string` | No | Task Type. sync: Synchronous tasks. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/smart-beauty
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `task_type` | `string` | Task Type. sync: Synchronous tasks. |
| `data` | `object` | The content of the result data returned. |
| `image` | `string` | The result image, returning the Base64 encoding of the image. |

### SDK Return Type

- `BaseResponse<PortraitIntelligentBeautificationResponseData>`

## AI Face Slimming API

- SDK method: `portrait.portraitIntelligentFaceSlimming()`
- HTTP: `POST /api/portrait/effects/smart-face-slimming`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `slim_degree` | `float` | No | Standard strength. The higher the value, the more pronounced the face slimming effect. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/smart-face-slimming
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitIntelligentFaceSlimmingResponseData>`

## AI Skin Beauty API

- SDK method: `portrait.portraitIntelligentSkinRetouching()`
- HTTP: `POST /api/portrait/effects/smart-skin`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes |  |
| `retouch_degree` | `float` | No | Dermabrasion intensity. The higher the value, the less visible the skin texture. |
| `whitening_degree` | `float` | No | Whitening strength. The higher the value, the whiter the skin. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/smart-skin
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `data` | `object` | The content of the result data returned. |
| `image_url` | `string` | Resulting image URL address. |

### SDK Return Type

- `BaseResponse<PortraitIntelligentSkinRetouchingResponseData>`

## Try on Clothes Refiner API

- SDK method: `portrait.portraitTryOnClothesRefiner()`
- HTTP: `POST /api/portrait/enhance/try-on-clothes-refiner`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `task_type` | `string` | Yes | Task Type. async: Asynchronous tasks. |
| `person_image` | `file` | Yes | Model image for calling the Try on Clothes API. |
| `top_garment` | `file` | Yes | Top clothing image for calling the Try on Clothes API. |
| `coarse_image` | `file` | Yes | Result image obtained from calling the Try on Clothes API. |
| `gender` | `string` | Yes | Gender of the person_image. woman: Female. man: Male. |
| `bottom_garment` | `file` | No | Bottom clothing image for calling the Try on Clothes API. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/enhance/try-on-clothes-refiner
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `task_type` | `string` | Task Type. async: Asynchronous tasks. |
| `task_id` | `string` | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### SDK Return Type

- `BaseResponse<PortraitTryOnClothesRefinerResponseData>`

## AI Face Rating API

- SDK method: `portrait.portraitAIFaceRating()`
- HTTP: `POST /api/portrait/analysis/ai-face-rating`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `aspect_ratio` | `string` | No | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/analysis/ai-face-rating
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIFaceRatingResponseData>`

## AI Bald API

- SDK method: `portrait.portraitAIBald()`
- HTTP: `POST /api/portrait/editing/ai-bald`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-bald
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIBaldResponseData>`

## AI Beard Removal API

- SDK method: `portrait.portraitAIBeardRemoval()`
- HTTP: `POST /api/portrait/editing/ai-beard-removal`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-beard-removal
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIBeardRemovalResponseData>`

## AI Beard Styling API

- SDK method: `portrait.portraitAIBeardStyling()`
- HTTP: `POST /api/portrait/editing/ai-beard-styling`
- Conditional requirement: at least one of `beard`, `image_template` is required.

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `beard` | `string` | No | Built-in beard preset. Provide this field or `image_template`. If both are provided, `beard` takes precedence. See [Supported beard values](/docs/ai-portrait/editing/ai-beard-styling/api#beard). Allowed values: FullBeardClassic, CorporateBeard, Garibaldi, Verdi, FullBeardTapered, VanDyke, Bandholz, VanDykeRefined, Goatee, ExtendedGoatee, Balbo, AnchorBeardClean, DucktailBeardPointed, AnchorBeardFull, DucktailBeardFull, HeavyStubble, ChevronMoustache, HandlebarMoustache, ImperialMoustache, CircleBeard, ChinStrap, MuttonChops, SoulPatch, PetiteGoatee. |
| `image_template` | `file` | No | Reference image for beard transfer. Provide this field or `beard`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-beard-styling
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIBeardStylingResponseData>`

## AI Breast Expansion API

- SDK method: `portrait.portraitAIBreastExpansion()`
- HTTP: `POST /api/portrait/editing/ai-big-tits`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `task_type` | `string` | No | Task Type. <li>`async`: Asynchronous tasks.</li> |
| `person_image` | `file` | No |  |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-big-tits
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` |  |
| `log_id` | `string` |  |
| `error_code` | `integer` |  |
| `error_code_str` | `string` |  |
| `error_msg` | `string` |  |
| `error_detail` | `object` |  |
| `data` | `object` |  |
| `image` | `string` |  |

### SDK Return Type

- `BaseResponse<PortraitAIBreastExpansionResponseData>`

## AI Butt Enhancement API

- SDK method: `portrait.portraitAIButtEnhancement()`
- HTTP: `POST /api/portrait/editing/ai-butt-enhancement`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-butt-enhancement
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIButtEnhancementResponseData>`

## AI Colored Contacts API

- SDK method: `portrait.portraitAIColoredContacts()`
- HTTP: `POST /api/portrait/editing/ai-colored-contacts`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `name` | `string` | No | Contact Lens Name (English only). |
| `desc` | `string` | No | Contact Lens Description (English only). |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-colored-contacts
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIColoredContactsResponseData>`

## AI Eyebrows API

- SDK method: `portrait.portraitAIEyebrows()`
- HTTP: `POST /api/portrait/editing/ai-eyebrows`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `reference_image` | `file` | Yes | Reference Image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `resolution` | `string` | No | Resolution. Allowed values: 1K, 2K. Default: 1K. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-eyebrows
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIEyebrowsResponseData>`

## AI Eyelashes API

- SDK method: `portrait.portraitAIEyelashes()`
- HTTP: `POST /api/portrait/editing/ai-eyelashes`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `name` | `string` | No | Eyelash Name (English only). |
| `desc` | `string` | No | Eyelash Description (English only). |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-eyelashes
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIEyelashesResponseData>`

## AI Eyeshadow Try-On API

- SDK method: `portrait.portraitAIEyeshadowTryOn()`
- HTTP: `POST /api/portrait/editing/ai-eyeshadow`
- Conditional requirement: at least one of `eyeshadow_style`, `image_template` is required.

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `eyeshadow_style` | `string` | No | Built-in eyeshadow preset. Provide this field or `image_template`. If both are provided, `eyeshadow_style` takes precedence. See [Supported eyeshadow styles](/docs/ai-portrait/editing/ai-eyeshadow/api#eyeshadow_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36. |
| `image_template` | `file` | No | Reference image for eyeshadow transfer. Provide this field or `eyeshadow_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `aspect_ratio` | `string` | No | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-eyeshadow
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIEyeshadowTryOnResponseData>`

## AI Face Swap API

- SDK method: `portrait.portraitAIFaceSwap()`
- HTTP: `POST /api/portrait/editing/ai-face-swap`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image_target` | `file` | Yes | The image to be modified. The face in this image will be replaced. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |
| `image_template` | `file` | Yes | The image that provides the face to use. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-face-swap
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` |  |
| `log_id` | `string` |  |
| `error_code` | `integer` |  |
| `error_code_str` | `string` |  |
| `error_msg` | `string` |  |
| `error_detail` | `object` |  |
| `task_type` | `string` |  |
| `task_id` | `string` |  |

### SDK Return Type

- `BaseResponse<PortraitAIFaceSwapResponseData>`

## AI Fat Filter API

- SDK method: `portrait.portraitAIFatFilter()`
- HTTP: `POST /api/portrait/editing/ai-fat-filter`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-fat-filter
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIFatFilterResponseData>`

## AI Hair Color API

- SDK method: `portrait.portraitAIHairColor()`
- HTTP: `POST /api/portrait/editing/ai-hair-color`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `name` | `string` | No | Hair Color Name (English only). |
| `desc` | `string` | No | Hair Color Description (English only). |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-hair-color
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIHairColorResponseData>`

## AI Hair Loss Simulation API

- SDK method: `portrait.portraitAIHairLossSimulation()`
- HTTP: `POST /api/portrait/editing/ai-hair-loss-simulation`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `level` | `string` | Yes | Hair loss level. See [Supported level values](/docs/ai-portrait/editing/ai-hair-loss-simulation/api#level). Allowed values: man_1, man_2, man_3, man_4, man_5, man_6, man_7, woman_1, woman_2, woman_3, woman_4, woman_5, woman_6, woman_7. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-hair-loss-simulation
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIHairLossSimulationResponseData>`

## AI Lip Enhancement API

- SDK method: `portrait.portraitAILipEnhancement()`
- HTTP: `POST /api/portrait/editing/ai-lip-enhancement`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-lip-enhancement
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAILipEnhancementResponseData>`

## AI Waist Slimming API

- SDK method: `portrait.portraitAIWaistSlimming()`
- HTTP: `POST /api/portrait/editing/ai-waist-slimming`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/ai-waist-slimming
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIWaistSlimmingResponseData>`

## Try on Clothes Premium API

- SDK method: `portrait.portraitTryOnClothesPremium()`
- HTTP: `POST /api/portrait/editing/try-on-clothes-premium`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `task_type` | `string` | No | Task Type. <li>`async`: Asynchronous tasks.</li> |
| `person_image` | `file` | No | Portrait image. |
| `top_garment` | `file` | No | Upper Body Clothing Image. |
| `resolution` | `number` | No | Output Image Resolution. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `-1`. <li>`-1`: Original image resolution.</li> <li>`1024`: 576x1024px.</li> <li>`1280`: 720x1280px.</li> |
| `restore_face` | `boolean` | No | Whether to Keep the Model’s Face. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `true`. <li>`true`: Keep the model’s original face.</li> <li>`false`: Regenerate the model’s face.</li> |
| `bottom_garment` | `file` | No | Lower Body Clothing Image. <li>If no lower body clothing image is provided, the lower body clothing effect will be randomly generated.</li> <li>If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.</li> |

### Request URL

```text
https://www.ailabapi.com/api/portrait/editing/try-on-clothes-premium
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` |  |
| `log_id` | `string` |  |
| `error_code` | `integer` |  |
| `error_code_str` | `string` |  |
| `error_msg` | `string` |  |
| `error_detail` | `object` |  |
| `task_type` | `string` |  |
| `task_id` | `string` |  |

### SDK Return Type

- `BaseResponse<PortraitTryOnClothesPremiumResponseData>`

## AI Big Head Effect API

- SDK method: `portrait.portraitAIBigHeadEffect()`
- HTTP: `POST /api/portrait/effects/ai-big-head-effect`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/ai-big-head-effect
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIBigHeadEffectResponseData>`

## AI Halloween Mask API

- SDK method: `portrait.portraitAIHalloweenMask()`
- HTTP: `POST /api/portrait/effects/ai-halloween-mask`
- Conditional requirement: at least one of `mask_style`, `image_template` is required.

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `mask_style` | `string` | No | Built-in mask preset. Provide either this field or `image_template`. If both are provided, `mask_style` takes precedence. See [Supported mask styles](/docs/ai-portrait/effects/ai-halloween-mask/api#mask_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85. |
| `image_template` | `file` | No | Reference image for eyeshadow transfer. Provide this field or `mask_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `aspect_ratio` | `string` | No | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/ai-halloween-mask
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIHalloweenMaskResponseData>`

## AI Lip Bite Expressions API

- SDK method: `portrait.portraitAILipBiteExpressions()`
- HTTP: `POST /api/portrait/effects/ai-lip-bite-expressions`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `grid_count` | `integer` | No | Specifies the number of emoji stickers to generate in a single image. Allowed values: 1, 4, 6, 9. Default: 1. |
| `aspect_ratio` | `string` | No | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/ai-lip-bite-expressions
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAILipBiteExpressionsResponseData>`

## AI Red Lip Gloss API

- SDK method: `portrait.portraitAIRedLipGloss()`
- HTTP: `POST /api/portrait/effects/ai-red-lip-gloss`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/ai-red-lip-gloss
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAIRedLipGlossResponseData>`

## AI Square Face Filter API

- SDK method: `portrait.portraitAISquareFaceFilter()`
- HTTP: `POST /api/portrait/effects/ai-square-face-filter`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/ai-square-face-filter
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAISquareFaceFilterResponseData>`

## Change Facial Expressions Advanced API

- SDK method: `portrait.portraitExpressionEditingAdvanced()`
- HTTP: `POST /api/portrait/effects/emotion-editor-advanced`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `expression` | `string` | Yes | Expression. See [Supported expression values](/docs/ai-portrait/effects/emotion-editor-advanced/api#expression). Allowed values: natural_smile, bright_laugh, sweet_smile, happy_surprise, proud_smirk, laughing_with_tears, crazy_happy_face, overjoyed_screaming_laugh, slight_annoyance, angry_stare, gritted_teeth_anger, furious_shout, cold_glare, cartoon_rage_face, angry_puffed_cheeks, villain_angry_smirk, downcast_sadness, wronged_near_tears, tearful_sadness, heartbroken_breakdown, silent_grief, big_crying_face, puppy_eyes_sad, fake_crying_funny, tongue_out_playful, wink_cute, silly_face, mischievous_smirk, exaggerated_surprised_face, cross_eyed_silly_face, one_eye_squint_funny, duck_face_funny, crazy_tongue_face, slight_surprise, shocked_open_mouth, disbelief, fearful_surprise, jaw_drop_surprise, cartoon_shocked_face, speechless_shock, nervous_fear, terrified_expression, timid_withdrawal, panic_breakdown, screaming_fear_face, frozen_in_fear, panic_wide_eyes, mild_dislike, strong_aversion, nauseated_disgust, eye_roll_disgust, extreme_disgust_face, grossed_out_face, dramatic_eye_roll, shy_smile, blushing_shyness, awkward_forced_smile, socially_embarrassed, over_shy_blushing_face, awkward_sweat_smile, embarrassed_cover_mouth, confident_smile, dominant_gaze, cold_cool_expression, victorious_pride, super_confident_smirk, bossy_cool_face, winning_smug_face, slight_confusion, frowning_thought, not_understanding, suspicious_look, confused_tilted_face, what_are_you_doing_face, brain_loading_face, tired_blank_eyes, helpless_expression, awkward_silence, sleepy_yawn, dead_inside_face, exhausted_melting_face, speechless_blank_stare, charming_smile, flirty_eyebrow_raise, soft_lip_bite, dreamy_gaze, playful_seductive_smirk, wink_flirty_face, dramatic_lip_bite, gentle_gaze, fond_smile, sweet_pouting_affection, deep_affectionate_gaze, heart_eyes_expression, overly_sweet_affection, clingy_cute_pout, cold_contempt, sarcastic_sneer, dismissive_pout, in_control_expression, extreme_smug_face, mocking_laugh_face, looking_down_contempt, soft_cute_smile, cute_pout, innocent_big_eyes, expectant_sparkling_eyes, super_cute_pouting_face, sparkling_eyes_cute, baby_like_innocent_face, frowning_in_pain, holding_back_tears, crying_breakdown, repressed_exhaustion, dramatic_pain_face, holding_back_scream, overwhelmed_breakdown_face. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/emotion-editor-advanced
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitExpressionEditingAdvancedResponseData>`

## Hairstyle Changer Premium API

- SDK method: `portrait.portraitHairstyleEditingPremium()`
- HTTP: `POST /api/portrait/effects/hairstyle-editor-premium`
- Conditional requirement: at least one of `hair_style`, `image_template` is required.

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | Source image. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Larger than 200x200px, smaller than 4090x4090px. - Minimum Face Proportion: To ensure effectiveness, the proportion of the face in the image cannot be less than 10%. - Facial Integrity: To ensure effectiveness, the face in the image should ideally not be obscured. - Facial Angle: To ensure effectiveness, the face in the image should ideally be front-facing, with no more than a 30-degree rotation to the left or right. |
| `image_template` | `file` | No | Reference image for hairstyle transfer. Provide this field or `hair_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Larger than 200x200px, smaller than 4090x4090px. - Minimum Face Proportion: To ensure effectiveness, the proportion of the face in the image cannot be less than 10%. - Facial Integrity: To ensure effectiveness, the face in the image should ideally not be obscured. - Facial Angle: To ensure effectiveness, the face in the image should ideally be front-facing, with no more than a 30-degree rotation to the left or right. |
| `hair_style` | `string` | No | Built-in hairstyle preset. Provide this field or `image_template`. If both are provided, `hair_style` takes precedence. See [Supported hair_style values](/docs/ai-portrait/effects/hairstyle-editor-premium/api#hair_style). Allowed values: BuzzCut, UnderCut, Pompadour, SlickBack, CurlyShag, WavyShag, FauxHawk, Spiky, CombOver, HighTightFade, ManBun, Afro, LowFade, UndercutLongHair, TwoBlockHaircut, TexturedFringe, BluntBowlCut, LongWavyCurtainBangs, MessyTousled, CornrowBraids, LongHairTiedUp, Middle-parted, ManGreased, WavyMiddlePart, Natural_Side-Part, Wolf_Crop, Wind-Tousled_Crop, Side-Parted_Textured, FluffyMiddlePart, FreshSide-Parted, Smooth_Crop, Korean_Wavy_Crop, Comma_Hair, Side-Part_Crop, Natural_Middle_Part, ShortPixieWithShavedSides, ShortNeatBob, DoubleBun, Updo, Spiked, bowlCut, Chignon, PixieCut, SlickedBack, LongCurly, CurlyBob, StackedCurlsInShortBob, SidePartCombOverHairstyleWithHighFade, WavyFrenchBobVibesfrom1920, BobCut, ShortTwintails, ShortCurlyPixie, LongStraight, LongWavy, FishtailBraid, TwinBraids, Ponytail, Dreadlocks, Cornrows, ShoulderLengthHair, LooseCurlyAfro, LongTwintails, LongHimeCut, BoxBraids, Layered_Waves, Side_Flip_Perm, Textured_Crop, Mushroom_Curl, Vintage_Curls, Magic_Perm, Side-Parted_Waves, Fluffy_Short, Smooth_Inward_Bob, Neat_Short, Natural_Short, Chic_Tapered_Bob, Edgy_Textured_Pixie, Elegant_Wavy_Crop, Chic_Wavy_Pixie, Elegant_Side_Wave, Soft_Layered_Curl, Executive_Pixie, Curved_Chic_Bob, Airy_Short_Curls, Playful_Curly_Bob, Playful_Wavy_Bob, Elegant_Soft_Curl, Elegant_Smooth_Bob, Retro_Airy_Curl, Soft_Wavy_Bob, Light_Inward_Bob, Neat_Curly_Crop_Cut, Elegant_Volumized_Bob, Modern_Curls_Chic, Mocha_Volume_Pixie, Elegant_Side_Flow, Chestnut, ChoppyBangs, StructuredWavyShag, TinfoilPerm, ClassicWavyBob, Fluffy_Pixie_Cut, FrenchBangs, JapaneseShort, MediumLongLayered, male_hairstyle_0001, male_hairstyle_0002, male_hairstyle_0003, male_hairstyle_0004, male_hairstyle_0005, male_hairstyle_0006, male_hairstyle_0007, male_hairstyle_0008, male_hairstyle_0009, male_hairstyle_0010, male_hairstyle_0011, male_hairstyle_0012, male_hairstyle_0013, male_hairstyle_0014, male_hairstyle_0015, male_hairstyle_0016, male_hairstyle_0017, male_hairstyle_0018, male_hairstyle_0019, male_hairstyle_0020, male_hairstyle_0021, male_hairstyle_0022, male_hairstyle_0023, male_hairstyle_0024, male_hairstyle_0025, male_hairstyle_0026, male_hairstyle_0027, male_hairstyle_0028, male_hairstyle_0029, male_hairstyle_0030, male_hairstyle_0031, male_hairstyle_0032, male_hairstyle_0033, male_hairstyle_0034, male_hairstyle_0035, male_hairstyle_0036, male_hairstyle_0037, male_hairstyle_0038, male_hairstyle_0039, male_hairstyle_0040, male_hairstyle_0041, male_hairstyle_0042, male_hairstyle_0043, male_hairstyle_0044, male_hairstyle_0045, male_hairstyle_0046, male_hairstyle_0047, male_hairstyle_0048, male_hairstyle_0049, male_hairstyle_0050, male_hairstyle_0051, male_hairstyle_0052, male_hairstyle_0053, male_hairstyle_0054, male_hairstyle_0055, male_hairstyle_0056, male_hairstyle_0057, male_hairstyle_0058, male_hairstyle_0059, male_hairstyle_0060, male_hairstyle_0061, male_hairstyle_0062, female_hairstyle_0001, female_hairstyle_0002, female_hairstyle_0003, female_hairstyle_0004, female_hairstyle_0005, female_hairstyle_0006, female_hairstyle_0007, female_hairstyle_0008, female_hairstyle_0009, female_hairstyle_0010, female_hairstyle_0011, female_hairstyle_0012, female_hairstyle_0013, female_hairstyle_0014, female_hairstyle_0015, female_hairstyle_0016, female_hairstyle_0017, female_hairstyle_0018, female_hairstyle_0019, female_hairstyle_0020, female_hairstyle_0021, female_hairstyle_0022, female_hairstyle_0023, female_hairstyle_0024, female_hairstyle_0025, female_hairstyle_0026, female_hairstyle_0027, female_hairstyle_0028, female_hairstyle_0029, female_hairstyle_0030, female_hairstyle_0031, female_hairstyle_0032, female_hairstyle_0033, female_hairstyle_0034, female_hairstyle_0035, female_hairstyle_0036, female_hairstyle_0037, female_hairstyle_0038, female_hairstyle_0039, female_hairstyle_0040, female_hairstyle_0041, female_hairstyle_0042, female_hairstyle_0043, female_hairstyle_0044, female_hairstyle_0045, female_hairstyle_0046, female_hairstyle_0047, female_hairstyle_0048, female_hairstyle_0049, female_hairstyle_0050, female_hairstyle_0051, female_hairstyle_0052, female_hairstyle_0053, female_hairstyle_0054, female_hairstyle_0055, female_hairstyle_0056, female_hairstyle_0057, female_hairstyle_0058, female_hairstyle_0059, female_hairstyle_0060, female_hairstyle_0061, female_hairstyle_0062, female_hairstyle_0063, female_hairstyle_0064, female_hairstyle_0065, female_hairstyle_0066, female_hairstyle_0067, female_hairstyle_0068, female_hairstyle_0069, female_hairstyle_0070, female_hairstyle_0071, female_hairstyle_0072, female_hairstyle_0073. |
| `color` | `string` | No | Hair color preset. `original` keeps the source image color. `reference` uses the hair color from `image_template`. See [Supported color values](/docs/ai-portrait/effects/hairstyle-editor-premium/api#color). Allowed values: original, reference, blonde, platinumBlonde, brown, lightBrown, blue, lightBlue, purple, lightPurple, pink, black, white, grey, silver, red, orange, green, gradient, multicolored, darkBlue, burgundy, darkGreen. Default: original. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/hairstyle-editor-premium
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitHairstyleEditingPremiumResponseData>`

## AI Skin Enhancement Advanced API

- SDK method: `portrait.portraitAISkinEnhancementAdvanced()`
- HTTP: `POST /api/portrait/effects/smart-skin-advanced`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `image` | `file` | Yes | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. |
| `smart_skin` | `string` | No | Smart all-in-one skin beautification. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `acne_removal` | `string` | No | Acne and blemish removal. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `spot_correction` | `string` | No | Spot and pigmentation correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `skin_brightening` | `string` | No | Skin brightening and tone enhancement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `skin_smoothing` | `string` | No | Skin smoothing and refinement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `pore_control` | `string` | No | Pore and oil control. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `wrinkle_reduction` | `string` | No | Wrinkle and fine-line reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `under_eye_correction` | `string` | No | Under-eye correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |
| `scar_reduction` | `string` | No | Scar and skin damage reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. |

### Request URL

```text
https://www.ailabapi.com/api/portrait/effects/smart-skin-advanced
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| `request_id` | `string` | Request ID for debugging. |
| `log_id` | `string` | Log ID for debugging. |
| `error_detail` | `object` |  |
| `task_id` | `string` | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api). |

### SDK Return Type

- `BaseResponse<PortraitAISkinEnhancementAdvancedResponseData>`
