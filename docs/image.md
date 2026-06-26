# Image API Reference

> This document is generated from the active endpoints in `packages/spec.json`. Disabled platform endpoints are intentionally excluded.

## Querying Async Task Results API

- SDK method: `image.imageQueryingAsyncTaskResults()`
- HTTP: `GET /api/image/asyn-task-results`

### Query Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| job_id | string | Yes | The request_id returned by the asynchronous API. |
| type | string | Yes | Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator |

### Request URL

```text
https://www.ailabapi.com/api/image/asyn-task-results
```

### Response Fields

Use the platform async-task result response shape.

### SDK Return Type

- `BaseResponse<ImageQueryingAsyncTaskResultsResponseData>`

## AI Image Extender API

- SDK method: `image.imageAiImageExtender()`
- HTTP: `POST /api/image/editing/ai-image-extender`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| custom_prompt | string | No | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. |
| steps | integer | No | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| strength | float | No | The smaller the value, the closer it is to the original image. |
| scale | float | No | The degree to which the text description influences the output. |
| seed | integer | No | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |
| max_height | integer | No | Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process. |
| max_width | integer | No | Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process. |
| image | file | Yes | Original image. |
| top | float | No | Upward expansion ratio. |
| bottom | float | No | Downward expansion ratio. |
| left | float | No | Leftward expansion ratio. |
| right | float | No | Rightward expansion ratio. |
| mask | file | No | Mask image. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/ai-image-extender
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### SDK Return Type

- `BaseResponse<ImageAiImageExtenderResponseData>`

## AI Object Replacer API

- SDK method: `image.imageAiObjectReplacer()`
- HTTP: `POST /api/image/editing/ai-object-replacer`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |
| custom_prompt | string | No | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. |
| steps | integer | No | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| scale | float | No | The degree to which the text description influences the output. |
| seed | integer | No | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/ai-object-replacer
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### SDK Return Type

- `BaseResponse<ImageAiObjectReplacerResponseData>`

## AI Image Cropping API

- SDK method: `image.imageAIImageCropping()`
- HTTP: `POST /api/image/editing/image-cropping`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| width | integer | Yes | The width of the target. Unit: px. |
| height | integer | Yes | The height of the target. Unit: px. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/image-cropping
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | The URL address of the image after size transformation. |
| retain_location | object | The coordinate information of the original image data in the generated image. |
| width | integer | Outputs the width of the original image after isoscaling according to the specified width. Unit: px. |
| height | integer | Outputs the height of the original image after isoscaling according to the specified height. Unit: px. |
| y | integer | The y-coordinate of the upper-left corner of the original figure. |
| x | integer | The x coordinate of the upper left corner of the original figure. |

### SDK Return Type

- `BaseResponse<ImageAIImageCroppingResponseData>`

## Image Erasure API

- SDK method: `image.imageErasure()`
- HTTP: `POST /api/image/editing/image-erase`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | The image to be erased. |
| user_mask | file | Yes | Mask image. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/image-erase
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### SDK Return Type

- `BaseResponse<ImageErasureResponseData>`

## Image Invisible Picture Watermark API

- SDK method: `image.imageInvisibleImageWatermark()`
- HTTP: `POST /api/image/editing/image-invisible-image-watermark`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| function_type | string | Yes | Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image. |
| origin_image | file | No | Original image. |
| logo | file | No | Watermark image. |
| watermark_image | file | No | Composite image with watermark. |
| output_file_type | string | No | Output format. |
| quality_factor | integer | No | Quality factor for jpg output. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/image-invisible-image-watermark
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| watermark_image_url | string | The URL address after adding the watermark. |
| logo_url | string | Watermark URL address after decoding. |

### SDK Return Type

- `BaseResponse<ImageInvisibleImageWatermarkResponseData>`

## Image Invisible Text Watermark API

- SDK method: `image.imageInvisibleTextWatermark()`
- HTTP: `POST /api/image/editing/image-invisible-text-watermarking`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| function_type | string | Yes | Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image. |
| origin_image | file | No | Original image. |
| text | string | No | Watermark text. |
| watermark_image | file | No | Composite image with watermark. |
| output_file_type | string | No | Output format. |
| quality_factor | integer | No | Quality factor for jpg output. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/image-invisible-text-watermarking
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| watermark_image_url | string | The URL address after adding the watermark. |
| text_image_url | string | Watermark URL address after decoding. |

### SDK Return Type

- `BaseResponse<ImageInvisibleTextWatermarkResponseData>`

## Intelligent Composition API

- SDK method: `image.imageIntelligentComposition()`
- HTTP: `POST /api/image/editing/intelligent-composition`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| num_boxes | integer | No | The number of output boxes. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/intelligent-composition
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | Intelligent composition results. |
| min_x | integer | The horizontal coordinate of the upper-left corner of the output box. |
| max_x | integer | The horizontal coordinate of the lower-right corner of the output box. |
| min_y | integer | The vertical coordinate of the upper-left corner of the output box. |
| max_y | integer | The lower-right vertical coordinate of the output box. |
| score | float | The higher the score, the better the composition. 3.8 or above is recommended as a better composition score. |

### SDK Return Type

- `BaseResponse<ImageIntelligentCompositionResponseData>`

## Photo Retouch API

- SDK method: `image.imagePhotoEditing()`
- HTTP: `POST /api/image/editing/photo-retouching`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Images that require a style transformation. |
| style | file | Yes | Reference image. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/photo-retouching
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The resulting image after performing the style transformation. |

### SDK Return Type

- `BaseResponse<ImagePhotoEditingResponseData>`

## Remove Objects API

- SDK method: `image.imageRemoveObjects()`
- HTTP: `POST /api/image/editing/remove-objects`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/remove-objects
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### SDK Return Type

- `BaseResponse<ImageRemoveObjectsResponseData>`

## Remove Objects Advanced API

- SDK method: `image.imageRemoveObjectsAdvanced()`
- HTTP: `POST /api/image/editing/remove-objects-advanced`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |
| steps | integer | No | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| strength | float | No | The smaller the value, the closer it is to the original image. |
| scale | float | No | The degree to which the text description influences the output. |
| seed | integer | No | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |
| dilate_size | integer | No | Mask Dilation Radius. The mask used for object removal should fully encompass the target object. When users manually draw the mask, it often extends beyond the object's boundary. However, if the mask is generated by a segmentation algorithm, it typically adheres closely to the object's edges, which might leave parts of the object uncovered. This can lead to incomplete removal or unexpected artifacts during generation. To avoid such issues, it's recommended to appropriately increase the dilate_size parameter to ensure the mask fully covers the object. |
| quality | string | No | Quality Parameter. H: High quality — best output quality, but slightly slower processing. M: Medium quality — balanced in both quality and speed. L: Low quality — fastest processing, suitable for scenarios where speed is prioritized. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/remove-objects-advanced
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### SDK Return Type

- `BaseResponse<ImageRemoveObjectsAdvancedResponseData>`

## Remove Objects Pro API

- SDK method: `image.imageRemoveObjectsPro()`
- HTTP: `POST /api/image/editing/remove-objects-pro`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |

### Request URL

```text
https://www.ailabapi.com/api/image/editing/remove-objects-pro
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### SDK Return Type

- `BaseResponse<ImageRemoveObjectsProResponseData>`

## AI Cartoon Generator API

- SDK method: `image.imageAICartoonGenerator()`
- HTTP: `POST /api/image/effects/ai-anime-generator`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_type | string | Yes | Task Type. async: Asynchronous tasks. |
| image | file | Yes |  |
| type | string | Yes | Style. Range of values |

### Request URL

```text
https://www.ailabapi.com/api/image/effects/ai-anime-generator
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### SDK Return Type

- `BaseResponse<ImageAICartoonGeneratorResponseData>`

## AI Photo Colorize API

- SDK method: `image.imageColoring()`
- HTTP: `POST /api/image/effects/image-colorization`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/effects/image-colorization
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### SDK Return Type

- `BaseResponse<ImageColoringResponseData>`

## Photo to Painting API

- SDK method: `image.imageStyleTransfer()`
- HTTP: `POST /api/image/effects/image-style-conversion`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| option | string | Yes | cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style. |

### Request URL

```text
https://www.ailabapi.com/api/image/effects/image-style-conversion
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### SDK Return Type

- `BaseResponse<ImageStyleTransferResponseData>`

## Style Transfer API

- SDK method: `image.imageStyleMigration()`
- HTTP: `POST /api/image/effects/image-style-migration`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| style | file | Yes | style image. |
| major | file | Yes | Content image. |

### Request URL

```text
https://www.ailabapi.com/api/image/effects/image-style-migration
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | URL address of the result image for stylization, image format: PNG. |
| major_url | string | The result of keeping the portrait unchanged and stylizing the rest. If there is no figure in the input major content map, the empty string is returned here. |

### SDK Return Type

- `BaseResponse<ImageStyleMigrationResponseData>`

## Image Color Enhancement API

- SDK method: `image.imageColorEnhancement()`
- HTTP: `POST /api/image/enhance/image-color-enhancement`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| output_format | string | Yes | The format of the output image. |
| mode | string | Yes | Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality. |

### Request URL

```text
https://www.ailabapi.com/api/image/enhance/image-color-enhancement
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Returns the URL address of the processed image. |

### SDK Return Type

- `BaseResponse<ImageColorEnhancementResponseData>`

## Image Contrast Enhancement API

- SDK method: `image.imageContrastEnhancement()`
- HTTP: `POST /api/image/enhance/image-contrast-enhancement`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/enhance/image-contrast-enhancement
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### SDK Return Type

- `BaseResponse<ImageContrastEnhancementResponseData>`

## Image Dehaze API

- SDK method: `image.imageDehaze()`
- HTTP: `POST /api/image/enhance/image-defogging`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/enhance/image-defogging
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### SDK Return Type

- `BaseResponse<ImageDehazeResponseData>`

## Image Upscaler API

- SDK method: `image.imageLosslessEnlargement()`
- HTTP: `POST /api/image/enhance/image-lossless-enlargement`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| upscale_factor | integer | No | Magnification. |
| mode | string | No | Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image. |
| output_format | string | No | Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg. |
| output_quality | integer | No | Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg. |

### Request URL

```text
https://www.ailabapi.com/api/image/enhance/image-lossless-enlargement
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | URL address of the image after resolution enlargement, image format is PNG. |

### SDK Return Type

- `BaseResponse<ImageLosslessEnlargementResponseData>`

## Image Sharpness Enhancement API

- SDK method: `image.imageClarityEnhancement()`
- HTTP: `POST /api/image/enhance/image-sharpness-enhancement`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/enhance/image-sharpness-enhancement
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### SDK Return Type

- `BaseResponse<ImageClarityEnhancementResponseData>`

## Stretched Image Restoration API

- SDK method: `image.imageDistortionCorrection()`
- HTTP: `POST /api/image/enhance/stretch-image-recovery`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/enhance/stretch-image-recovery
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |
| ratio | float | Recover ratio. |

### SDK Return Type

- `BaseResponse<ImageDistortionCorrectionResponseData>`

## Image Composition Aesthetics Score API

- SDK method: `image.imageCompositionAestheticsScore()`
- HTTP: `POST /api/image/rating/image-composition-aesthetics-scoring`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/rating/image-composition-aesthetics-scoring
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| score | float | The higher the score, the better the composition, with a recommended score of 3.8 or higher being the better composition score. |

### SDK Return Type

- `BaseResponse<ImageCompositionAestheticsScoreResponseData>`

## Image Exposure Score API

- SDK method: `image.imageExposureRating()`
- HTTP: `POST /api/image/rating/image-exposure-score`

### Body Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

### Request URL

```text
https://www.ailabapi.com/api/image/rating/image-exposure-score
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| exposure | float | Image exposure score, the value range is 0~1. The higher the score, the greater the exposure. |

### SDK Return Type

- `BaseResponse<ImageExposureRatingResponseData>`
