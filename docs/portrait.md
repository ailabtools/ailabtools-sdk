# Portrait API 参考

> 本文档按当前 `packages/spec.json` 的 active 接口生成，已移除平台停用接口。

## Face Analyzer API

- SDK 方法：`portrait.portraitFaceAnalyzer()`
- HTTP：`POST /api/portrait/analysis/face-analyzer`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| max_face_num | integer | 否 | The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed. |
| face_attributes_type | string | 否 | Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced. |
| need_rotate_detection | integer | 否 | Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/face-analyzer
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image_width | integer | Image width. |
| image_height | integer | Image height. |
| face_detail_infos | array | List of face information. |
| face_rect | object | Face frame position. |
| x | integer | The horizontal coordinate of the upper left corner of the face frame.The face frame contains the positions of the five senses of the face and expands on them, if the face frame is out of the range of the picture, it will lead to negative coordinates.If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand. |
| y | integer | The vertical coordinate of the upper left corner of the face frame. The face frame contains the positions of the five senses of the face and expands them to a certain extent. If the face frame exceeds the range of the picture, it will lead to negative coordinates. If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand. |
| width | integer | Face width. |
| height | integer | Face height. |
| face_detail_attributes_info | object | Face attribute information. |
| age | integer | Age. 65: 65 years old and above. When face_attributes_type does not contain Age or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| beauty | integer | Beauty Score. When face_attributes_type does not contain Beauty or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| emotion | object | Emotional information. When face_attributes_type does not contain Emotion or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: Neutral. 1: Happy. 2: Surprised. 3: Angry. 4: Sad. 5: Disgusted. 6: Fearful. |
| probability | float | Probability of being correct. |
| eye | object | Eye-related information. face_attributes_type does not contain Eye or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| glass | object | Wearing glasses. |
| type | integer | 0: No glasses. 1: Regular glasses. 2: Sunglasses. |
| eye_open | object | Closed eyes. |
| type | integer | 0: No. 1: Yes. |
| eyelid_type | object | Double eyelids. |
| eye_size | object | Eye size. |
| type | integer | 0: Small eyes. 1: Regular eyes. 2: Large eyes. |
| eyebrow | object | Eyebrow information. face_attributes_type does not contain Eyebrow or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| eyebrow_density | object | Thick eyebrows. |
| type | integer | 0: Sparse eyebrows. 1: Thick eyebrows. |
| eyebrow_curve | object | Curved eyebrows. |
| type | integer | 0: Not curved. 1: Curved eyebrows. |
| eyebrow_length | object | Eyebrow length. |
| type | integer | 0: Short eyebrows. 1: Long eyebrows. |
| gender | object | Gender information. face_attributes_type does not contain Gender or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: Male. 1: Female. |
| hair | object | Hair information. face_attributes_type does not contain Hair or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| length | object | Hair length information. |
| type | integer | 0: Bald. 1: Short hair. 2: Medium-length hair. 3: Long hair. 4: Tied hair. |
| bang | object | Fringe (bangs) information. |
| type | integer | 0: No fringe (bangs). 1: Has fringe (bangs). |
| color | object | Hair color information. |
| type | integer | 0: Black. 1: Blonde. 2: Brown. 3: Gray/White. |
| hat | object | Hat information. face_attributes_type does not contain Hat or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| style | object | Hat wearing status information. |
| type | integer | 0: No hat. 1: Regular hat. 2: Helmet. 3: Security hat. |
| color | object | Hat color. |
| type | integer | 0: No hat. 1: Red shades. 2: Yellow shades. 3: Blue shades. 4: Black shades. 5: Gray/White shades. 6: Mixed colors. |
| head_pose | object | Face offset information. face_attributes_type does not contain HeadPose or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| pitch | integer | Vertical Offset. |
| yaw | integer | Horizontal Offset. |
| pitch | integer | Planar Rotation. |
| mask | object | Mask wearing information. face_attributes_type does not contain Mask or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: No mask. 1: Mask without covering face. 2: Mask covering chin. 3: Mask covering mouth. 4: Correctly worn mask. |
| mouth | object | Mouth information. face_attributes_type does not contain Mouth or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| mouth_open | object | Mouth open. |
| moustache | object | Facial hair information. face_attributes_type does not contain Moustache or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: No facial hair. 1: Facial hair. |
| nose | object | Nose information. face_attributes_type does not contain Nose or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: Upturned nose. 1: Hooked nose. 2: Normal. 3: Round-tipped nose. |
| shape | object | Face shape information. face_attributes_type does not contain Shape or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: Square face. 1: Triangular face. 2: Oval face. 3: Heart-shaped face. 4: Round face. |
| skin | object | Skin color information. face_attributes_type does not contain Skin or when more than 5 faces are detected, this parameter is still returned but is not informative. |
| type | integer | 0: Yellow skin. 1: Brown skin. 2: Black skin. 3: White skin. |
| smile | integer | Smile Rating. face_attributes_type does not contain Smile or when more than 5 faces are detected, this parameter is still returned but is not informative. |

### 返回类型

- `BaseResponse<PortraitFaceAnalyzerResponseData>`

## Face Analyzer Advanced API

- SDK 方法：`portrait.portraitFaceAnalyzerAdvanced()`
- HTTP：`POST /api/portrait/analysis/face-analyzer-advanced`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/face-analyzer-advanced
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object |  |
| pupils | array of float | The center point coordinates and radius of the left and right pupils, with 6 floating-point values per face, in the order of [left_iris_cenpt.x, left_iris_cenpt.y, left_iris_radius, right_iris_cenpt.x, right_iris_cenpt.y, right_iris_radius]. If multiple faces are detected, results are returned in order. |
| gender_list | array of integer | Gender. If multiple faces are detected, results are returned in order. 0: Female. 1: Male. |
| expressions | array of integer | Expression. If multiple faces are detected, results are returned in order. 0: Neutral. 1: Smile. |
| face_count | integer | Number of faces. |
| landmarks | array of float | Facial landmark detection results. A set of landmark coordinates is returned for each face, represented as (x0, y0, x1, y1, …). If multiple faces are detected, results are returned in order. |
| landmark_count | integer | Number of facial landmarks. distributed as follows: Eyebrows: 24 points Eyes: 32 points Nose: 6 points Mouth: 34 points Outer contour: 9 points |
| beauty_list | array of float | Attractiveness score. A higher score indicates a higher level of attractiveness. If multiple faces are detected, results are returned in order. |
| hat_list | array of integer | Whether wearing a hat. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. |
| face_probability_list | array of float | Probability of a face. If multiple faces are detected, results are returned in order. |
| glasses | array of integer | Whether wearing glasses. If multiple faces are detected, results are returned in order. 0: No glasses. 1: Wearing regular glasses. 2: Wearing sunglasses. |
| face_rectangles | array of integer | Face bounding box, represented as [left, top, width, height]. If multiple faces are detected, results are returned in order. |
| pose_list | array of float | Face pose, in the format [yaw, pitch, roll]. If multiple faces are detected, results are returned in order. yaw: left-right angle. Range: [-90, 90]. pitch: up-down angle. Range: [-90, 90]. roll: in-plane rotation angle. Range: [-180, 180]. |
| age_list | array of integer | Age. If multiple faces are detected, results are returned in order. |
| dense_feature_length | integer | The feature dimension returned by face recognition. |
| masks | array of integer | Whether wearing a mask. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. 2: Mask worn incorrectly. |
| qualities | object | Face quality score, where a higher score indicates better suitability for recognition. |
| score_list | array of float | Overall quality score, where a higher score indicates better suitability for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates high overall image quality, while a score below 85 indicates lower overall image quality. If multiple faces are detected, results are returned in order. |
| blur_list | array of float | Face blur score indicating the impact of blurriness on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower likelihood of the image being blurry, while a score below 85 indicates a higher likelihood of blurriness. If multiple faces are detected, results are returned in order. |
| fnf_list | array of float | Score indicating whether the target is a face and its impact on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image is a face, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. |
| glass_list | array of float | Score indicating the impact of upper-face occlusion (e.g., glasses) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing glasses, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. |
| illu_list | array of float | Score indicating the impact of lighting on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image has good lighting, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. |
| mask_list | array of float | Score indicating the impact of lower-face occlusion (e.g., mask) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing a mask, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. |
| noise_list | array of float | Score indicating the impact of image noise on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of image noise, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. |
| pose_list | array of float | Score indicating the impact of face pose on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability of the face being frontal, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. |

### 返回类型

- `BaseResponse<PortraitFaceAnalyzerAdvancedResponseData>`

## Facial Landmarks API

- SDK 方法：`portrait.portraitFacialLandmarks()`
- HTTP：`POST /api/portrait/analysis/face-key-points`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| max_face_num | integer | 否 | The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected). |
| face_field | string | 否 | Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/face-key-points
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| result | object | The content of the result data returned. |
| face_num | integer | The number of faces in the picture. |
| face_list | array | List of face information. |
| face_token | string | Face Token. |
| location | object | The position of the face in the picture. |
| left | float | The distance of the face area from the left border. |
| top | float | The distance of the face area from the upper boundary. |
| width | float | The width of the face area. |
| height | float | The height of the face area. |
| rotation | integer | The clockwise rotation angle of the face frame with respect to the vertical direction. |
| face_probability | float | Face confidence. |
| angle | object | Face rotation parameters, refer to Face Spatial Pose Angle Reference for detailed description. |
| yaw | float | The left and right rotation angle of 3D rotation. |
| pitch | float | Three-dimensional rotation of the pitch angle. |
| roll | float | In-plane rotation angle. |
| age | float | Age. |
| gender | object | Gender information. |
| type | string |  |
| probability | float | Gender confidence. |
| landmark4 | array | 4 feature points. |
| landmark72 | array | 72 feature points. Refer to 72 feature points for details. |
| landmark150 | object | 150 feature points. Refer to 150 feature points for details. |
| landmark201 | object | 201 feature points. Refer to 201 feature points for details. |

### 返回类型

- `BaseResponse<PortraitFacialLandmarksResponseData>`

## Skin Analyze API

- SDK 方法：`portrait.portraitSkinAnalysisBasic()`
- HTTP：`POST /api/portrait/analysis/skin-analysis`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/skin-analysis
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| warning | array | Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]). |
| face_rectangle | object | The position of the face rectangle box. |
| top | float | The vertical coordinate of the pixel point in the upper-left corner of the rectangle box. |
| left | float | The horizontal coordinate of the pixel point in the upper-left corner of the rectangle. |
| width | float | The width of the rectangle box. |
| height | float | The height of the rectangle box. |
| result | object | Results of face skin analysis. |
| left_eyelids | object | Results of the double eyelid test on the left eye. |
| value | integer | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids |
| confidence | float | Confidence. |
| right_eyelids | object | Results of the double eyelid test on the right eye. |
| eye_pouch | object | Eye bag test results. |
| value | integer | With or without eye bags. 0: No 1: Yes |
| dark_circle | object | Dark circles test results. |
| value | integer | With or without dark circles under the eyes. 0: No 1: Yes |
| forehead_wrinkle | object | Results of the head-lift test. |
| value | integer | With or without headlines. 0: No 1: Yes |
| crows_feet | object | Fishtail test results. |
| value | integer | With or without crow's feet. 0: No 1: Yes |
| eye_finelines | object | Results of the eye fine lines test. |
| value | integer | The presence or absence of fine lines under the eyes. 0: No 1: Yes |
| glabella_wrinkle | object | Results of the interbrow line test. |
| value | integer | With or without interbrow lines. 0: No 1: Yes |
| nasolabial_fold | object | Results of the forehead line test. |
| value | integer | With or without lines. 0: No 1: Yes |
| skin_type | object | Skin texture test results. |
| skin_type | integer | Type. 0: Oily skin. 1: Dry skin. 2: Neutral skin. 3: Combination skin. |
| details | object | The confidence level of each classification. |
| 0 | object | Oily skin information. |
| value | integer | Oily skin. 0: No. 1: Yes. |
| 1 | object | Dry skin information. |
| value | integer | Dry skin. 0: No. 1: Yes. |
| 2 | object | Neutral skin information. |
| value | integer | Neutral skin. 0: No. 1: Yes. |
| 3 | object | Combination skin information. |
| value | integer | Combination skin. 0: No. 1: Yes. |
| pores_forehead | object | Forehead pore test results. |
| value | integer | With or without enlarged pores. 0: No 1: Yes |
| pores_left_cheek | object | Results of the left cheek pore test. |
| pores_right_cheek | object | Results of the right cheek pore test. |
| pores_jaw | object | Chin pore test results. |
| blackhead | object | Blackhead test results. |
| value | integer | With or without blackheads. 0: No 1: Yes |
| acne | object | Acne test results. |
| value | integer | With or without Acne. 0: No 1: Yes |
| mole | object | Mole test results. |
| value | integer | With or without moles. 0: No 1: Yes |
| skin_spot | object | Spot detection results. |
| value | integer | With or without spotting. 0: No 1: Yes |

### 返回类型

- `BaseResponse<PortraitSkinAnalysisBasicResponseData>`

## Skin Analyze Advanced API

- SDK 方法：`portrait.portraitSkinAnalysisAdvanced()`
- HTTP：`POST /api/portrait/analysis/skin-analysis-advanced`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| face_quality_control | integer | 否 | Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error. |
| return_rect_confidence | integer | 否 | The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence. |
| return_maps | string | 否 | Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/skin-analysis-advanced
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| warning | array | Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]). |
| face_rectangle | object | The position of the face rectangle box. |
| top | float | The vertical coordinate of the pixel point in the upper-left corner of the rectangle box. |
| left | float | The horizontal coordinate of the pixel point in the upper-left corner of the rectangle. |
| width | float | The width of the rectangle box. |
| height | float | The height of the rectangle box. |
| result | object | Results of face skin analysis. |
| skin_color | object | Skin color test results. |
| value | integer | Skin color. 0: Transparent white. 1: White. 2: Naturally. 3: Wheat. 4: Dark. |
| confidence | float | Confidence. |
| skintone_ita | object | Returns skin color classification information based on the ITA (Individual Typology Angle) standard. **NOTE** |
| ITA | float | Angle value. |
| skintone | integer | Classified according to the skin tone of ITA. 0: Very light. 1: Light. 2: Intermediate. 3: Tan. 4: Brown. 5: Dark. 6: Abnormal color values that may be caused by weak lighting conditions or overexposure. |
| skin_hue_ha | object | Returns skin tone classification information based on HA (Hue Angle). **NOTE** |
| HA | float | HA angle value. |
| skintone | integer | Classified according to HA's skin tone hue. 0: Yellowish. 1: Neutral. 2: Reddish. 3: Abnormal hue values may be caused by abnormal ambient light tones or weak light environment or overexposure. |
| skin_age | object | Skin age test results. |
| value | integer | Face skin age value. |
| left_eyelids | object | Results of the double eyelid test on the left eye. |
| value | integer | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids |
| right_eyelids | object | Results of the double eyelid test on the right eye. |
| eye_pouch | object | Eye bag test results. |
| value | integer | With or without eye bags. 0: No 1: Yes |
| eye_pouch_severity | object | Severity of puffiness under the eyes (return when puffiness test result is 1) |
| value | integer | Severity. 0: Mild. 1: Moderate. 2: Severe. |
| dark_circle | object | Dark circles test results. |
| value | integer | Type of dark circles under the eyes. 0: No dark circles under the eyes. 1: Pigmented dark circles. 2: Vascular type dark circles under the eyes. 3: Shadow-type dark circles under the eyes. |
| forehead_wrinkle | object | Results of the head-lift test. |
| value | integer | With or without headlines. 0: No 1: Yes |
| crows_feet | object | Fishtail test results. |
| value | integer | With or without crow's feet. 0: No 1: Yes |
| eye_finelines | object | Results of the eye fine lines test. |
| value | integer | The presence or absence of fine lines under the eyes. 0: No 1: Yes |
| glabella_wrinkle | object | Results of the interbrow line test. |
| value | integer | With or without interbrow lines. 0: No 1: Yes |
| nasolabial_fold | object | Results of the forehead line test. |
| value | integer | With or without lines. 0: No 1: Yes |
| nasolabial_fold_severity | object | Severity of the forehead lines (returned when the result of the forehead line test is 1) |
| value | integer | Severity. 0: Mild. 1: Moderate. 1: Severe. |
| skin_type | object | Skin texture test results. |
| skin_type | integer | Type. 0: Oily skin. 1: Dry skin. 2: Neutral skin. 3: Combination skin. |
| details | object | The confidence level of each classification. |
| 0 | object | Oily skin information. |
| value | integer | Oily skin. 0: No. 1: Yes. |
| 1 | object | Dry skin information. |
| value | integer | Dry skin. 0: No. 1: Yes. |
| 2 | object | Neutral skin information. |
| value | integer | Neutral skin. 0: No. 1: Yes. |
| 3 | object | Combination skin information. |
| value | integer | Combination skin. 0: No. 1: Yes. |
| pores_forehead | object | Forehead pore test results. |
| value | integer | With or without enlarged pores. 0: No 1: Yes |
| pores_left_cheek | object | Results of the left cheek pore test. |
| pores_right_cheek | object | Results of the right cheek pore test. |
| pores_jaw | object | Chin pore test results. |
| blackhead | object | Blackhead test results. |
| value | integer | Severity. 0: No blackheads. 1: Mild. 2: Moderate. 3: Severe. |
| acne | object | Acne test results. |
| rectangle | array | The location of each pimple box. |
| width | float | Width. |
| height | float | Height. |
| left | float | The distance from the leftmost part of the picture. |
| top | float | The distance from the topmost edge of the image. |
| confidence | array | If return_rect_confidence is 1, the confidence that each rectangular region is discriminated as a positive case is returned. |
| mole | object | Mole test results. |
| rectangle | array | The position of each mole frame. |
| closed_comedones | object | Closure returns the result. |
| rectangle | array | The position of each closure frame. |
| skin_spot | object | Spot detection results. |
| rectangle | array | The position of each spot box. |
| face_maps | object | Returns the skin chromatography visualization image set in the entry (return_maps). |
| red_area | base64 | Red zone map. jpeg images for base64. |
| sensitivity | object | The sensitivity of the human face within the photo. This return value must be used with the red area map, you need to set the return red area map ("red_area") in the input parameter return_maps first. |
| sensitivity_area | float | Sensitive redness areas account for the proportion of cheeks and T-zone. |
| sensitivity_intensity | float | The intensity of redness in sensitive areas. |

### 返回类型

- `BaseResponse<PortraitSkinAnalysisAdvancedResponseData>`

## Skin Analyze Pro API

- SDK 方法：`portrait.portraitSkinAnalysisProfessional()`
- HTTP：`POST /api/portrait/analysis/skin-analysis-pro`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | Main Image. |
| left_side_image | file | 否 | Side face picture.(Left) |
| right_side_image | file | 否 | Side face picture.(Right) |
| return_maps | string | 否 | The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details |
| return_marks | string | 否 | The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details |
| roi_outline_color | json string | 否 | Customize the color. More Details |
| return_side_results | string | 否 | The side face information that needs to be returned. Use commas to separate multiple types. More Details |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/skin-analysis-pro
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| left_side_result | json string | Results of side face analysis. More Details |
| right_side_result | json string | Results of side face analysis. More Details |
| face_rectangle | object | Face position. More Details |
| result | object | Results of face skin analysis. More Details |

### 返回类型

- `BaseResponse<PortraitSkinAnalysisProfessionalResponseData>`

## Detect Skin Disease API

- SDK 方法：`portrait.portraitSkinDiseaseDetection()`
- HTTP：`POST /api/portrait/analysis/skin-disease-detection`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| body_part | string | Skin lesion site identification. scalp: Scalp. face: Face. neck: Neck. arm: Arm. chest: Chest. abdomen: Abdomen. oxter: Axilla. back: Back. waist: Lumbar region. hand: Hand. genitals: External genitalia. cruris: Groin / Inguinal region. leg: Leg. foot: Foot. unknown: Unknown. |
| image_quality | float | Image quality score. |
| image_type | string | Image classification. |
| results_english | object | 【English】The predicted results. Contains Key-Value pairs, where Key is the disease name and Value is the probability. |
| acne | float | Acne |
| actinic_keratosis | float | Actinic Keratosis |
| alopecia_androgenetica | float | Alopecia Androgenetica |
| alopecia_areata | float | Alopecia Areata |
| bullous_dermatosis | float | Bullous Dermatosis |
| chloasma | float | Chloasma |
| corn | float | Corn |
| dermatofibroma | float | Dermatofibroma |
| eczema_dermatitis | float | Eczema Dermatitis |
| erysipelas | float | Erysipelas |
| erythema_multiforme | float | Erythema Multiforme |
| folliculitis | float | Folliculitis |
| furuncle | float | Furuncle |
| haemangioma | float | Haemangioma |
| herpes | float | Herpes |
| herpes_simplex | float | Herpes Simplex |
| iga_vasculitis | float | Iga Vasculitis |
| keloid | float | Keloid |
| keratosis_follicularism | float | Keratosis Follicularism |
| lichen_planus | float | Lichen Planus |
| lupus_erythematosus | float | Lupus Erythematosus |
| molluscum_contagiosum | float | Molluscum Contagiosum |
| nevus | float | Nevus |
| paronychia | float | Paronychia |
| pityriasis_alba | float | Pityriasis Alba |
| pityriasis_rosea | float | Pityriasis Rosea |
| prurigo_nodularis | float | Prurigo Nodularis |
| psoriasis | float | Psoriasis |
| rosacea | float | Rosacea |
| sebaceous_cyst | float | Sebaceous Cyst |
| sebaceousnevus | float | Sebaceousnevus |
| seborrheic_dermatitis | float | Seborrheic Dermatitis |
| seborrheic_keratosis | float | Seborrheic Keratosis |
| skin_tag | float | Skin Tag |
| stasis_dermatitis | float | Stasis Dermatitis |
| syringoma | float | Syringoma |
| tinea_capitis | float | Tinea Capitis |
| tinea_corporis | float | Tinea Corporis |
| tinea_cruris | float | Tinea Cruris |
| tinea_manuum | float | Tinea Manuum |
| tinea_pedis | float | Tinea Pedis |
| tinea_unguium | float | Tinea Unguium |
| tinea_versicolor | float | Tinea Versicolor |
| urticaria | float | Urticaria |
| urticaria_papular | float | Urticaria Papular |
| varicella | float | Varicella |
| verruca_plana | float | Verruca Plana |
| verruca_vulgaris | float | Verruca Vulgaris |
| vitiligo | float | Vitiligo |

### 返回类型

- `BaseResponse<PortraitSkinDiseaseDetectionResponseData>`

## Try on Clothes API

- SDK 方法：`portrait.portraitTryOnClothes()`
- HTTP：`POST /api/portrait/editing/try-on-clothes`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| task_type | string | 是 | Task Type. async: Asynchronous tasks. |
| person_image | file | 是 | Portrait image. |
| clothes_image | file | 是 | Clothing image. |
| clothes_type | string | 是 | Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/editing/try-on-clothes
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### 返回类型

- `BaseResponse<PortraitTryOnClothesResponseData>`

## Try on Clothes Pro API

- SDK 方法：`portrait.portraitTryOnClothesPro()`
- HTTP：`POST /api/portrait/editing/try-on-clothes-pro`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| task_type | string | 是 | Task Type. async: Asynchronous tasks. |
| person_image | file | 是 | Portrait Image. |
| top_garment | file | 是 | Upper Body Clothing Image. |
| bottom_garment | file | 否 | Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty. |
| resolution | integer | 否 | Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px. |
| restore_face | boolean | 否 | Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/editing/try-on-clothes-pro
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### 返回类型

- `BaseResponse<PortraitTryOnClothesProResponseData>`

## Face Blur API

- SDK 方法：`portrait.portraitFacialBlurring()`
- HTTP：`POST /api/portrait/effects/blurred-faces`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/blurred-faces
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitFacialBlurringResponseData>`

## Change Facial Expressions API

- SDK 方法：`portrait.portraitExpressionEditing()`
- HTTP：`POST /api/portrait/effects/emotion-editor`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image_target | file | 是 |  |
| service_choice | integer | 是 | Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/emotion-editor
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### 返回类型

- `BaseResponse<PortraitExpressionEditingResponseData>`

## AI Face Enhancer API

- SDK 方法：`portrait.portraitFaceRestorationEnhancement()`
- HTTP：`POST /api/portrait/effects/enhance-face`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/enhance-face
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitFaceRestorationEnhancementResponseData>`

## Age & Gender Swap API

- SDK 方法：`portrait.portraitFaceAttributeEditing()`
- HTTP：`POST /api/portrait/effects/face-attribute-editing`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| action_type | string | 是 | Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift. |
| quality_control | string | 否 | Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details |
| face_location | json string | 否 | When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/face-attribute-editing
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| result | object | The content of the result data returned. |
| image | string | The BASE64 value of the edited image. |

### 返回类型

- `BaseResponse<PortraitFaceAttributeEditingResponseData>`

## Face Beauty API

- SDK 方法：`portrait.portraitFacialBeautification()`
- HTTP：`POST /api/portrait/effects/face-beauty`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| sharp | float | 是 | Sharpness level. A higher value indicates a greater degree of sharpness. |
| smooth | float | 是 | Smoothness level. A higher value results in a smoother appearance. |
| white | float | 是 | Whitening level. A higher value leads to lighter skin. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/face-beauty
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitFacialBeautificationResponseData>`

## Face Beauty Advanced API

- SDK 方法：`portrait.portraitFacialBeautificationAdvanced()`
- HTTP：`POST /api/portrait/effects/face-beauty-advanced`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| whitening | integer | 否 | Whitening level: 0 means no whitening, 100 represents the highest level. |
| smoothing | integer | 否 | Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level. |
| face_lifting | integer | 否 | Face slimming level: 0 means no face slimming, 100 represents the highest level. |
| eye_enlarging | integer | 否 | Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/face-beauty-advanced
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| result_image | string | Returns the base64 data of the processed image. |

### 返回类型

- `BaseResponse<PortraitFacialBeautificationAdvancedResponseData>`

## Face Beauty Pro API

- SDK 方法：`portrait.portraitFacialBeautificationPro()`
- HTTP：`POST /api/portrait/effects/face-beauty-pro`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| whitening | integer | 否 | Whitening Degree. 0 means no whitening effect, 100 represents the highest degree. |
| smoothing | integer | 否 | Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree. |
| thinface | integer | 否 | Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree. |
| shrink_face | integer | 否 | Small Face Degree. 0 means no small face effect, 100 represents the highest degree. |
| enlarge_eye | integer | 否 | Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree. |
| remove_eyebrow | integer | 否 | Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree. |
| filter_type | integer | 否 | Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain. |
| task_type | string | 否 | Task Type. sync: Synchronous tasks. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/face-beauty-pro
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. sync: Synchronous tasks. |
| result | string | Returns the base64 data of the processed image. |

### 返回类型

- `BaseResponse<PortraitFacialBeautificationProResponseData>`

## Face Filters API

- SDK 方法：`portrait.portraitFacialFilters()`
- HTTP：`POST /api/portrait/effects/face-filter`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| resource_type | string | 是 | Picture style. More Details |
| strength | float | 是 | Filter intensity. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/face-filter
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitFacialFiltersResponseData>`

## Merge Portraits API

- SDK 方法：`portrait.portraitFaceFusion()`
- HTTP：`POST /api/portrait/effects/face-fusion`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image_target | file | 是 | Target image. |
| image_template | file | 是 | Template images. |
| source_similarity | float | 否 | Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/face-fusion
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### 返回类型

- `BaseResponse<PortraitFaceFusionResponseData>`

## Hairstyle Changer API

- SDK 方法：`portrait.portraitHairstyleEditing()`
- HTTP：`POST /api/portrait/effects/hairstyle-editor`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image_target | file | 是 |  |
| hair_type | integer | 否 | Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/hairstyle-editor
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### 返回类型

- `BaseResponse<PortraitHairstyleEditingResponseData>`

## Hairstyle Changer Pro API

- SDK 方法：`portrait.portraitHairstyleEditingPro()`
- HTTP：`POST /api/portrait/effects/hairstyle-editor-pro`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| task_type | string | 是 | Task Type. async: Asynchronous tasks. |
| image | file | 是 | Main image. |
| hair_style | string | 是 | Hairstyle. More Details |
| color | string | 否 | Color. More Details |
| image_size | integer | 否 | Returns the number of images. |
| mask | file | 否 | Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically. |
| bangs | integer | 否 | Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison |
| mode | integer | 否 | Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison |
| reference | integer | 否 | Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/hairstyle-editor-pro
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### 返回类型

- `BaseResponse<PortraitHairstyleEditingProResponseData>`

## Lips Color Changer API

- SDK 方法：`portrait.portraitLipsColorChanger()`
- HTTP：`POST /api/portrait/effects/lips-color-changer`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| lip_color_infos | json string | 是 | Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/lips-color-changer
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| result_image | string | Returns the base64 data of the processed image. |

### 返回类型

- `BaseResponse<PortraitLipsColorChangerResponseData>`

## Live Photos API

- SDK 方法：`portrait.portraitLivePhotos()`
- HTTP：`POST /api/portrait/effects/live-photo`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image_target | file | 是 |  |
| type | integer | 否 | Live photo type. 0: Avatar version. 1: Full body version. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/live-photo
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| video | string | Returns the base64 encoded string of the generated video. |

### 返回类型

- `BaseResponse<PortraitLivePhotosResponseData>`

## Cartoon Yourself API

- SDK 方法：`portrait.portraitCartoonYourself()`
- HTTP：`POST /api/portrait/effects/portrait-animation`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| type | string | 是 | Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/portrait-animation
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitCartoonYourselfResponseData>`

## Smart Beauty API

- SDK 方法：`portrait.portraitIntelligentBeautification()`
- HTTP：`POST /api/portrait/effects/smart-beauty`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image_target | file | 是 |  |
| multi_face | string | 否 | Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed. |
| beauty_level | float | 否 | Beauty level. |
| task_type | string | 否 | Task Type. sync: Synchronous tasks. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/smart-beauty
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. sync: Synchronous tasks. |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### 返回类型

- `BaseResponse<PortraitIntelligentBeautificationResponseData>`

## AI Face Slimming API

- SDK 方法：`portrait.portraitIntelligentFaceSlimming()`
- HTTP：`POST /api/portrait/effects/smart-face-slimming`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| slim_degree | float | 否 | Standard strength. The higher the value, the more pronounced the face slimming effect. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/smart-face-slimming
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitIntelligentFaceSlimmingResponseData>`

## AI Skin Beauty API

- SDK 方法：`portrait.portraitIntelligentSkinRetouching()`
- HTTP：`POST /api/portrait/effects/smart-skin`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| retouch_degree | float | 否 | Dermabrasion intensity. The higher the value, the less visible the skin texture. |
| whitening_degree | float | 否 | Whitening strength. The higher the value, the whiter the skin. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/effects/smart-skin
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### 返回类型

- `BaseResponse<PortraitIntelligentSkinRetouchingResponseData>`

## Try on Clothes Refiner API

- SDK 方法：`portrait.portraitTryOnClothesRefiner()`
- HTTP：`POST /api/portrait/enhance/try-on-clothes-refiner`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| task_type | string | 是 | Task Type. async: Asynchronous tasks. |
| person_image | file | 是 | Model image for calling the Try on Clothes API. |
| top_garment | file | 是 | Top clothing image for calling the Try on Clothes API. |
| coarse_image | file | 是 | Result image obtained from calling the Try on Clothes API. |
| gender | string | 是 | Gender of the person_image. woman: Female. man: Male. |
| bottom_garment | file | 否 | Bottom clothing image for calling the Try on Clothes API. |

### 请求地址

```text
https://www.ailabapi.com/api/portrait/enhance/try-on-clothes-refiner
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### 返回类型

- `BaseResponse<PortraitTryOnClothesRefinerResponseData>`
