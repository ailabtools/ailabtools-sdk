# Image API 参考

> 本文档按当前 `packages/spec.json` 的 active 接口生成，已移除平台停用接口。

## Querying Async Task Results API

- SDK 方法：`image.imageQueryingAsyncTaskResults()`
- HTTP：`GET /api/image/asyn-task-results`

### Query 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| job_id | string | 是 | The request_id returned by the asynchronous API. |
| type | string | 是 | Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator |

### 请求地址

```text
https://www.ailabapi.com/api/image/asyn-task-results
```

### 响应字段

以平台异步任务查询返回结构为准。

### 返回类型

- `BaseResponse<ImageQueryingAsyncTaskResultsResponseData>`

## AI Image Extender API

- SDK 方法：`image.imageAiImageExtender()`
- HTTP：`POST /api/image/editing/ai-image-extender`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| custom_prompt | string | 否 | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. |
| steps | integer | 否 | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| strength | float | 否 | The smaller the value, the closer it is to the original image. |
| scale | float | 否 | The degree to which the text description influences the output. |
| seed | integer | 否 | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |
| max_height | integer | 否 | Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process. |
| max_width | integer | 否 | Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process. |
| image | file | 是 | Original image. |
| top | float | 否 | Upward expansion ratio. |
| bottom | float | 否 | Downward expansion ratio. |
| left | float | 否 | Leftward expansion ratio. |
| right | float | 否 | Rightward expansion ratio. |
| mask | file | 否 | Mask image. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/ai-image-extender
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### 返回类型

- `BaseResponse<ImageAiImageExtenderResponseData>`

## AI Object Replacer API

- SDK 方法：`image.imageAiObjectReplacer()`
- HTTP：`POST /api/image/editing/ai-object-replacer`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | Original image. |
| mask | file | 是 | Mask image. |
| custom_prompt | string | 否 | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. |
| steps | integer | 否 | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| scale | float | 否 | The degree to which the text description influences the output. |
| seed | integer | 否 | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/ai-object-replacer
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### 返回类型

- `BaseResponse<ImageAiObjectReplacerResponseData>`

## AI Image Cropping API

- SDK 方法：`image.imageAIImageCropping()`
- HTTP：`POST /api/image/editing/image-cropping`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| width | integer | 是 | The width of the target. Unit: px. |
| height | integer | 是 | The height of the target. Unit: px. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/image-cropping
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | The URL address of the image after size transformation. |
| retain_location | object | The coordinate information of the original image data in the generated image. |
| width | integer | Outputs the width of the original image after isoscaling according to the specified width. Unit: px. |
| height | integer | Outputs the height of the original image after isoscaling according to the specified height. Unit: px. |
| y | integer | The y-coordinate of the upper-left corner of the original figure. |
| x | integer | The x coordinate of the upper left corner of the original figure. |

### 返回类型

- `BaseResponse<ImageAIImageCroppingResponseData>`

## Image Erasure API

- SDK 方法：`image.imageErasure()`
- HTTP：`POST /api/image/editing/image-erase`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | The image to be erased. |
| user_mask | file | 是 | Mask image. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/image-erase
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### 返回类型

- `BaseResponse<ImageErasureResponseData>`

## Image Invisible Picture Watermark API

- SDK 方法：`image.imageInvisibleImageWatermark()`
- HTTP：`POST /api/image/editing/image-invisible-image-watermark`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| function_type | string | 是 | Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image. |
| origin_image | file | 否 | Original image. |
| logo | file | 否 | Watermark image. |
| watermark_image | file | 否 | Composite image with watermark. |
| output_file_type | string | 否 | Output format. |
| quality_factor | integer | 否 | Quality factor for jpg output. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/image-invisible-image-watermark
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| watermark_image_url | string | The URL address after adding the watermark. |
| logo_url | string | Watermark URL address after decoding. |

### 返回类型

- `BaseResponse<ImageInvisibleImageWatermarkResponseData>`

## Image Invisible Text Watermark API

- SDK 方法：`image.imageInvisibleTextWatermark()`
- HTTP：`POST /api/image/editing/image-invisible-text-watermarking`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| function_type | string | 是 | Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image. |
| origin_image | file | 否 | Original image. |
| text | string | 否 | Watermark text. |
| watermark_image | file | 否 | Composite image with watermark. |
| output_file_type | string | 否 | Output format. |
| quality_factor | integer | 否 | Quality factor for jpg output. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/image-invisible-text-watermarking
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| watermark_image_url | string | The URL address after adding the watermark. |
| text_image_url | string | Watermark URL address after decoding. |

### 返回类型

- `BaseResponse<ImageInvisibleTextWatermarkResponseData>`

## Intelligent Composition API

- SDK 方法：`image.imageIntelligentComposition()`
- HTTP：`POST /api/image/editing/intelligent-composition`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| num_boxes | integer | 否 | The number of output boxes. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/intelligent-composition
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | Intelligent composition results. |
| min_x | integer | The horizontal coordinate of the upper-left corner of the output box. |
| max_x | integer | The horizontal coordinate of the lower-right corner of the output box. |
| min_y | integer | The vertical coordinate of the upper-left corner of the output box. |
| max_y | integer | The lower-right vertical coordinate of the output box. |
| score | float | The higher the score, the better the composition. 3.8 or above is recommended as a better composition score. |

### 返回类型

- `BaseResponse<ImageIntelligentCompositionResponseData>`

## Photo Retouch API

- SDK 方法：`image.imagePhotoEditing()`
- HTTP：`POST /api/image/editing/photo-retouching`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | Images that require a style transformation. |
| style | file | 是 | Reference image. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/photo-retouching
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The resulting image after performing the style transformation. |

### 返回类型

- `BaseResponse<ImagePhotoEditingResponseData>`

## Remove Objects API

- SDK 方法：`image.imageRemoveObjects()`
- HTTP：`POST /api/image/editing/remove-objects`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | Original image. |
| mask | file | 是 | Mask image. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/remove-objects
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### 返回类型

- `BaseResponse<ImageRemoveObjectsResponseData>`

## Remove Objects Advanced API

- SDK 方法：`image.imageRemoveObjectsAdvanced()`
- HTTP：`POST /api/image/editing/remove-objects-advanced`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | Original image. |
| mask | file | 是 | Mask image. |
| steps | integer | 否 | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| strength | float | 否 | The smaller the value, the closer it is to the original image. |
| scale | float | 否 | The degree to which the text description influences the output. |
| seed | integer | 否 | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |
| dilate_size | integer | 否 | Mask Dilation Radius. The mask used for object removal should fully encompass the target object. When users manually draw the mask, it often extends beyond the object's boundary. However, if the mask is generated by a segmentation algorithm, it typically adheres closely to the object's edges, which might leave parts of the object uncovered. This can lead to incomplete removal or unexpected artifacts during generation. To avoid such issues, it's recommended to appropriately increase the dilate_size parameter to ensure the mask fully covers the object. |
| quality | string | 否 | Quality Parameter. H: High quality — best output quality, but slightly slower processing. M: Medium quality — balanced in both quality and speed. L: Low quality — fastest processing, suitable for scenarios where speed is prioritized. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/remove-objects-advanced
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### 返回类型

- `BaseResponse<ImageRemoveObjectsAdvancedResponseData>`

## Remove Objects Pro API

- SDK 方法：`image.imageRemoveObjectsPro()`
- HTTP：`POST /api/image/editing/remove-objects-pro`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 | Original image. |
| mask | file | 是 | Mask image. |

### 请求地址

```text
https://www.ailabapi.com/api/image/editing/remove-objects-pro
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### 返回类型

- `BaseResponse<ImageRemoveObjectsProResponseData>`

## AI Cartoon Generator API

- SDK 方法：`image.imageAICartoonGenerator()`
- HTTP：`POST /api/image/effects/ai-anime-generator`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| task_type | string | 是 | Task Type. async: Asynchronous tasks. |
| image | file | 是 |  |
| type | string | 是 | Style. Range of values |

### 请求地址

```text
https://www.ailabapi.com/api/image/effects/ai-anime-generator
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### 返回类型

- `BaseResponse<ImageAICartoonGeneratorResponseData>`

## AI Photo Colorize API

- SDK 方法：`image.imageColoring()`
- HTTP：`POST /api/image/effects/image-colorization`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/effects/image-colorization
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image | string | base64 encoded image. |

### 返回类型

- `BaseResponse<ImageColoringResponseData>`

## Photo to Painting API

- SDK 方法：`image.imageStyleTransfer()`
- HTTP：`POST /api/image/effects/image-style-conversion`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| option | string | 是 | cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style. |

### 请求地址

```text
https://www.ailabapi.com/api/image/effects/image-style-conversion
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image | string | base64 encoded image. |

### 返回类型

- `BaseResponse<ImageStyleTransferResponseData>`

## Style Transfer API

- SDK 方法：`image.imageStyleMigration()`
- HTTP：`POST /api/image/effects/image-style-migration`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| style | file | 是 | style image. |
| major | file | 是 | Content image. |

### 请求地址

```text
https://www.ailabapi.com/api/image/effects/image-style-migration
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | URL address of the result image for stylization, image format: PNG. |
| major_url | string | The result of keeping the portrait unchanged and stylizing the rest. If there is no figure in the input major content map, the empty string is returned here. |

### 返回类型

- `BaseResponse<ImageStyleMigrationResponseData>`

## Image Color Enhancement API

- SDK 方法：`image.imageColorEnhancement()`
- HTTP：`POST /api/image/enhance/image-color-enhancement`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| output_format | string | 是 | The format of the output image. |
| mode | string | 是 | Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality. |

### 请求地址

```text
https://www.ailabapi.com/api/image/enhance/image-color-enhancement
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Returns the URL address of the processed image. |

### 返回类型

- `BaseResponse<ImageColorEnhancementResponseData>`

## Image Contrast Enhancement API

- SDK 方法：`image.imageContrastEnhancement()`
- HTTP：`POST /api/image/enhance/image-contrast-enhancement`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/enhance/image-contrast-enhancement
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image | string | base64 encoded image. |

### 返回类型

- `BaseResponse<ImageContrastEnhancementResponseData>`

## Image Dehaze API

- SDK 方法：`image.imageDehaze()`
- HTTP：`POST /api/image/enhance/image-defogging`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/enhance/image-defogging
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image | string | base64 encoded image. |

### 返回类型

- `BaseResponse<ImageDehazeResponseData>`

## Image Upscaler API

- SDK 方法：`image.imageLosslessEnlargement()`
- HTTP：`POST /api/image/enhance/image-lossless-enlargement`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |
| upscale_factor | integer | 否 | Magnification. |
| mode | string | 否 | Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image. |
| output_format | string | 否 | Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg. |
| output_quality | integer | 否 | Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg. |

### 请求地址

```text
https://www.ailabapi.com/api/image/enhance/image-lossless-enlargement
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | URL address of the image after resolution enlargement, image format is PNG. |

### 返回类型

- `BaseResponse<ImageLosslessEnlargementResponseData>`

## Image Sharpness Enhancement API

- SDK 方法：`image.imageClarityEnhancement()`
- HTTP：`POST /api/image/enhance/image-sharpness-enhancement`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/enhance/image-sharpness-enhancement
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image | string | base64 encoded image. |

### 返回类型

- `BaseResponse<ImageClarityEnhancementResponseData>`

## Stretched Image Restoration API

- SDK 方法：`image.imageDistortionCorrection()`
- HTTP：`POST /api/image/enhance/stretch-image-recovery`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/enhance/stretch-image-recovery
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| image | string | base64 encoded image. |
| ratio | float | Recover ratio. |

### 返回类型

- `BaseResponse<ImageDistortionCorrectionResponseData>`

## Image Composition Aesthetics Score API

- SDK 方法：`image.imageCompositionAestheticsScore()`
- HTTP：`POST /api/image/rating/image-composition-aesthetics-scoring`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/rating/image-composition-aesthetics-scoring
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| score | float | The higher the score, the better the composition, with a recommended score of 3.8 or higher being the better composition score. |

### 返回类型

- `BaseResponse<ImageCompositionAestheticsScoreResponseData>`

## Image Exposure Score API

- SDK 方法：`image.imageExposureRating()`
- HTTP：`POST /api/image/rating/image-exposure-score`

### Body 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| image | file | 是 |  |

### 请求地址

```text
https://www.ailabapi.com/api/image/rating/image-exposure-score
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| exposure | float | Image exposure score, the value range is 0~1. The higher the score, the greater the exposure. |

### 返回类型

- `BaseResponse<ImageExposureRatingResponseData>`
