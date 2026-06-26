# AILabTools SDK Plan (Node.js TypeScript + Python async)

This document is generated from the active endpoints in `packages/spec.json`. Disabled platform endpoints are intentionally excluded.

## Base Conventions

- Base URL: `https://www.ailabapi.com`
- Authentication header: `ailabapi-api-key: <API_KEY>`
- Success condition: HTTP 200 and `error_code = 0`
- Async tasks: APIs return `task_id`; poll with the async task result endpoint.

## Parameter Naming and Mapping

- API field names may use hyphens or underscores. SDK methods expose camelCase parameters and map them back to platform field names internally.
- File fields are uploaded as `multipart/form-data`. Node.js supports `Buffer | ArrayBuffer | Uint8Array`; Python supports file-like objects or `bytes` / `bytearray` / `memoryview`.

## Module Naming

- `common`: credits and async task result queries.
- `image`: AI Image enhancement, effects, editing, and scoring APIs.
- `portrait`: AI Portrait analysis, effects, editing, and enhancement APIs.
- `cutout`: AI Cutout general and portrait cutout APIs.

## Endpoint List

| Module | SDK Method | API Name | unique_sign | Method | Path | Documentation |
| --- | --- | --- | --- | --- | --- | --- |
| common | `common.commonQueryAsyncTaskResult()` | Querying Async Task Results API | `common_query_async_task_result` | GET | `/api/common/query-async-task-result` | `` |
| common | `common.commonQueryCredits()` | Querying Credits API | `common_query_credits` | GET | `/api/common/query-credits` | `` |
| cutout | `cutout.cutoutClothingBackgroundRemoval()` | Costume Background Removal API | `cutout_apparel_background_removal` | POST | `/api/cutout/general/apparel-background-removal` | `` |
| cutout | `cutout.cutoutProductBackgroundRemoval()` | Product Background Removal API | `cutout_commodity_background_removal` | POST | `/api/cutout/general/commodity-background-removal` | `` |
| cutout | `cutout.cutoutFoodBackgroundRemoval()` | Food Background Removal API | `cutout_food_background_removal` | POST | `/api/cutout/general/food-background-removal` | `` |
| cutout | `cutout.cutoutUniversalBackgroundRemoval()` | Universal Background Removal API | `cutout_universal_background_removal` | POST | `/api/cutout/general/universal-background-removal` | `` |
| cutout | `cutout.cutoutAvatarExtraction()` | Head Extraction API | `cutout_avatar_extraction` | POST | `/api/cutout/portrait/avatar-extraction` | `` |
| cutout | `cutout.cutoutHairExtraction()` | Hairstyle Extraction API | `cutout_hairstyle_extraction` | POST | `/api/cutout/portrait/hairstyle-extraction` | `` |
| cutout | `cutout.cutoutHumanBackgroundRemoval()` | Human Background Removal API | `cutout_portrait_background_removal` | POST | `/api/cutout/portrait/portrait-background-removal` | `` |
| image | `image.imageQueryingAsyncTaskResults()` | Querying Async Task Results API | `image_asyn_task_results` | GET | `/api/image/asyn-task-results` | `` |
| image | `image.imageAiImageExtender()` | AI Image Extender API | `image_ai_image_extender` | POST | `/api/image/editing/ai-image-extender` | `` |
| image | `image.imageAiObjectReplacer()` | AI Object Replacer API | `image_ai_object_replacer` | POST | `/api/image/editing/ai-object-replacer` | `` |
| image | `image.imageAIImageCropping()` | AI Image Cropping API | `image_image_cropping` | POST | `/api/image/editing/image-cropping` | `` |
| image | `image.imageErasure()` | Image Erasure API | `image_image_erase` | POST | `/api/image/editing/image-erase` | `` |
| image | `image.imageInvisibleImageWatermark()` | Image Invisible Picture Watermark API | `image_image_invisible_image_watermark` | POST | `/api/image/editing/image-invisible-image-watermark` | `` |
| image | `image.imageInvisibleTextWatermark()` | Image Invisible Text Watermark API | `image_image_invisible_text_watermarking` | POST | `/api/image/editing/image-invisible-text-watermarking` | `` |
| image | `image.imageIntelligentComposition()` | Intelligent Composition API | `image_intelligent_composition` | POST | `/api/image/editing/intelligent-composition` | `` |
| image | `image.imagePhotoEditing()` | Photo Retouch API | `image_photo_retouching` | POST | `/api/image/editing/photo-retouching` | `` |
| image | `image.imageRemoveObjects()` | Remove Objects API | `image_remove_objects` | POST | `/api/image/editing/remove-objects` | `` |
| image | `image.imageRemoveObjectsAdvanced()` | Remove Objects Advanced API | `image_remove_objects_advanced` | POST | `/api/image/editing/remove-objects-advanced` | `` |
| image | `image.imageRemoveObjectsPro()` | Remove Objects Pro API | `image_remove_objects_pro` | POST | `/api/image/editing/remove-objects-pro` | `` |
| image | `image.imageAICartoonGenerator()` | AI Cartoon Generator API | `image_ai_anime_generator` | POST | `/api/image/effects/ai-anime-generator` | `` |
| image | `image.imageColoring()` | AI Photo Colorize API | `image_image_colorization` | POST | `/api/image/effects/image-colorization` | `` |
| image | `image.imageStyleTransfer()` | Photo to Painting API | `image_image_style_conversion` | POST | `/api/image/effects/image-style-conversion` | `` |
| image | `image.imageStyleMigration()` | Style Transfer API | `image_image_style_migration` | POST | `/api/image/effects/image-style-migration` | `` |
| image | `image.imageColorEnhancement()` | Image Color Enhancement API | `image_image_color_enhancement` | POST | `/api/image/enhance/image-color-enhancement` | `` |
| image | `image.imageContrastEnhancement()` | Image Contrast Enhancement API | `image_image_contrast_enhancement` | POST | `/api/image/enhance/image-contrast-enhancement` | `` |
| image | `image.imageDehaze()` | Image Dehaze API | `image_image_defogging` | POST | `/api/image/enhance/image-defogging` | `` |
| image | `image.imageLosslessEnlargement()` | Image Upscaler API | `image_image_lossless_enlargement` | POST | `/api/image/enhance/image-lossless-enlargement` | `` |
| image | `image.imageClarityEnhancement()` | Image Sharpness Enhancement API | `image_image_sharpness_enhancement` | POST | `/api/image/enhance/image-sharpness-enhancement` | `` |
| image | `image.imageDistortionCorrection()` | Stretched Image Restoration API | `image_stretch_image_recovery` | POST | `/api/image/enhance/stretch-image-recovery` | `` |
| image | `image.imageCompositionAestheticsScore()` | Image Composition Aesthetics Score API | `image_image_composition_aesthetics_scoring` | POST | `/api/image/rating/image-composition-aesthetics-scoring` | `` |
| image | `image.imageExposureRating()` | Image Exposure Score API | `image_image_exposure_score` | POST | `/api/image/rating/image-exposure-score` | `` |
| portrait | `portrait.portraitFaceAnalyzer()` | Face Analyzer API | `portrait_face_analyzer` | POST | `/api/portrait/analysis/face-analyzer` | `` |
| portrait | `portrait.portraitFaceAnalyzerAdvanced()` | Face Analyzer Advanced API | `portrait_face_analyzer_advanced` | POST | `/api/portrait/analysis/face-analyzer-advanced` | `` |
| portrait | `portrait.portraitFacialLandmarks()` | Facial Landmarks API | `portrait_face_key_points` | POST | `/api/portrait/analysis/face-key-points` | `` |
| portrait | `portrait.portraitSkinAnalysisBasic()` | Skin Analyze API | `portrait_skin_analysis` | POST | `/api/portrait/analysis/skin-analysis` | `` |
| portrait | `portrait.portraitSkinAnalysisAdvanced()` | Skin Analyze Advanced API | `portrait_skin_analysis_advanced` | POST | `/api/portrait/analysis/skin-analysis-advanced` | `` |
| portrait | `portrait.portraitSkinAnalysisProfessional()` | Skin Analyze Pro API | `portrait_skin_analysis_pro` | POST | `/api/portrait/analysis/skin-analysis-pro` | `` |
| portrait | `portrait.portraitSkinDiseaseDetection()` | Detect Skin Disease API | `portrait_skin_disease_detection` | POST | `/api/portrait/analysis/skin-disease-detection` | `` |
| portrait | `portrait.portraitTryOnClothes()` | Try on Clothes API | `portrait_try_on_clothes` | POST | `/api/portrait/editing/try-on-clothes` | `` |
| portrait | `portrait.portraitTryOnClothesPro()` | Try on Clothes Pro API | `portrait_try_on_clothes_pro` | POST | `/api/portrait/editing/try-on-clothes-pro` | `` |
| portrait | `portrait.portraitFacialBlurring()` | Face Blur API | `portrait_blurred_faces` | POST | `/api/portrait/effects/blurred-faces` | `` |
| portrait | `portrait.portraitExpressionEditing()` | Change Facial Expressions API | `portrait_emotion_editor` | POST | `/api/portrait/effects/emotion-editor` | `` |
| portrait | `portrait.portraitFaceRestorationEnhancement()` | AI Face Enhancer API | `portrait_enhance_face` | POST | `/api/portrait/effects/enhance-face` | `` |
| portrait | `portrait.portraitFaceAttributeEditing()` | Age & Gender Swap API | `portrait_face_attribute_editing` | POST | `/api/portrait/effects/face-attribute-editing` | `` |
| portrait | `portrait.portraitFacialBeautification()` | Face Beauty API | `portrait_face_beauty` | POST | `/api/portrait/effects/face-beauty` | `` |
| portrait | `portrait.portraitFacialBeautificationAdvanced()` | Face Beauty Advanced API | `portrait_face_beauty_advanced` | POST | `/api/portrait/effects/face-beauty-advanced` | `` |
| portrait | `portrait.portraitFacialBeautificationPro()` | Face Beauty Pro API | `portrait_face_beauty_pro` | POST | `/api/portrait/effects/face-beauty-pro` | `` |
| portrait | `portrait.portraitFacialFilters()` | Face Filters API | `portrait_face_filter` | POST | `/api/portrait/effects/face-filter` | `` |
| portrait | `portrait.portraitFaceFusion()` | Merge Portraits API | `portrait_face_fusion` | POST | `/api/portrait/effects/face-fusion` | `` |
| portrait | `portrait.portraitHairstyleEditing()` | Hairstyle Changer API | `portrait_hairstyle_editor` | POST | `/api/portrait/effects/hairstyle-editor` | `` |
| portrait | `portrait.portraitHairstyleEditingPro()` | Hairstyle Changer Pro API | `portrait_hairstyle_editor_pro` | POST | `/api/portrait/effects/hairstyle-editor-pro` | `` |
| portrait | `portrait.portraitLipsColorChanger()` | Lips Color Changer API | `portrait_lips_color_changer` | POST | `/api/portrait/effects/lips-color-changer` | `` |
| portrait | `portrait.portraitLivePhotos()` | Live Photos API | `portrait_live_photo` | POST | `/api/portrait/effects/live-photo` | `` |
| portrait | `portrait.portraitCartoonYourself()` | Cartoon Yourself API | `portrait_portrait_animation` | POST | `/api/portrait/effects/portrait-animation` | `` |
| portrait | `portrait.portraitIntelligentBeautification()` | Smart Beauty API | `portrait_smart_beauty` | POST | `/api/portrait/effects/smart-beauty` | `` |
| portrait | `portrait.portraitIntelligentFaceSlimming()` | AI Face Slimming API | `portrait_smart_face_slimming` | POST | `/api/portrait/effects/smart-face-slimming` | `` |
| portrait | `portrait.portraitIntelligentSkinRetouching()` | AI Skin Beauty API | `portrait_smart_skin` | POST | `/api/portrait/effects/smart-skin` | `` |
| portrait | `portrait.portraitTryOnClothesRefiner()` | Try on Clothes Refiner API | `portrait_try_on_clothes_refiner` | POST | `/api/portrait/enhance/try-on-clothes-refiner` | `` |

## Parameters and Response Shapes

### Querying Async Task Results API (`common_query_async_task_result`)

- SDK method: `common.commonQueryAsyncTaskResult()`
- HTTP: `GET /api/common/query-async-task-result`

**Query**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_id | string | Yes | The task_id returned by the asynchronous API. |

**Body**

None.

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_status | integer | Asynchronous task status. 0: The task is queued. 1: Asynchronous processing. 2: Processing was successful. |

### Querying Credits API (`common_query_credits`)

- SDK method: `common.commonQueryCredits()`
- HTTP: `GET /api/common/query-credits`

**Query**

None.

**Body**

None.

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | array |  |
| unique_sign | string | Unique identification. |
| name | string | Name. |
| balance | float | Credit Balance. |
| total | float | Total Credits. |
| last_recharge_balance | float | Balance after last purchase. |
| balance_warning | float | Credit Balance Early Warning Value. |
| first_buy_time | integer | Time of first purchase. |
| last_update_time | integer | Last update time. |

### Costume Background Removal API (`cutout_apparel_background_removal`)

- SDK method: `cutout.cutoutClothingBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/apparel-background-removal`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| out_mode | integer | No | 0 |
| cloth_class | string | No | Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat. |
| return_form | string | No | Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | Returns an array of elements. |
| 0 | object |  |
| image_url | string | Returns the keying result image URL address. |
| 1 | object |  |
| class_url | object | Return the URL corresponding to the clothing category based on the input cloth_class. |
| tops | string | Tops URL. |
| coat | string | Coat URL. |
| skirt | string | Skirt URL. |
| pants | string | Pants URL. |
| bag | string | Bag URL. |
| shoes | string | Shoes URL. |
| hat | string | Hat URL. |

### Product Background Removal API (`cutout_commodity_background_removal`)

- SDK method: `cutout.cutoutProductBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/commodity-background-removal`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Food Background Removal API (`cutout_food_background_removal`)

- SDK method: `cutout.cutoutFoodBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/food-background-removal`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Universal Background Removal API (`cutout_universal_background_removal`)

- SDK method: `cutout.cutoutUniversalBackgroundRemoval()`
- HTTP: `POST /api/cutout/general/universal-background-removal`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Head Extraction API (`cutout_avatar_extraction`)

- SDK method: `cutout.cutoutAvatarExtraction()`
- HTTP: `POST /api/cutout/portrait/avatar-extraction`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | The keying result of each child element. |
| image_url | string | Resulting image URL address. |
| width | integer | The width of the result map. |
| height | integer | The height of the resultant graph. |
| x | integer | Top left x-coordinate. |
| y | integer | Top left y-coordinate. |

### Hairstyle Extraction API (`cutout_hairstyle_extraction`)

- SDK method: `cutout.cutoutHairExtraction()`
- HTTP: `POST /api/cutout/portrait/hairstyle-extraction`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | The keying result of each child element. |
| image_url | string | Resulting image URL address. |
| width | integer | The width of the result map. |
| height | integer | The height of the resultant graph. |
| x | integer | Top left x-coordinate. |
| y | integer | Top left y-coordinate. |

### Human Background Removal API (`cutout_portrait_background_removal`)

- SDK method: `cutout.cutoutHumanBackgroundRemoval()`
- HTTP: `POST /api/cutout/portrait/portrait-background-removal`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| return_form | string | No | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges). |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Querying Async Task Results API (`image_asyn_task_results`)

- SDK method: `image.imageQueryingAsyncTaskResults()`
- HTTP: `GET /api/image/asyn-task-results`

**Query**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| job_id | string | Yes | The request_id returned by the asynchronous API. |
| type | string | Yes | Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator |

**Body**

None.

**Response**

Use the platform async-task result response shape.

### AI Image Extender API (`image_ai_image_extender`)

- SDK method: `image.imageAiImageExtender()`
- HTTP: `POST /api/image/editing/ai-image-extender`

**Query**

None.

**Body**

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

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### AI Object Replacer API (`image_ai_object_replacer`)

- SDK method: `image.imageAiObjectReplacer()`
- HTTP: `POST /api/image/editing/ai-object-replacer`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |
| custom_prompt | string | No | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. |
| steps | integer | No | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. |
| scale | float | No | The degree to which the text description influences the output. |
| seed | integer | No | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### AI Image Cropping API (`image_image_cropping`)

- SDK method: `image.imageAIImageCropping()`
- HTTP: `POST /api/image/editing/image-cropping`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| width | integer | Yes | The width of the target. Unit: px. |
| height | integer | Yes | The height of the target. Unit: px. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | The URL address of the image after size transformation. |
| retain_location | object | The coordinate information of the original image data in the generated image. |
| width | integer | Outputs the width of the original image after isoscaling according to the specified width. Unit: px. |
| height | integer | Outputs the height of the original image after isoscaling according to the specified height. Unit: px. |
| y | integer | The y-coordinate of the upper-left corner of the original figure. |
| x | integer | The x coordinate of the upper left corner of the original figure. |

### Image Erasure API (`image_image_erase`)

- SDK method: `image.imageErasure()`
- HTTP: `POST /api/image/editing/image-erase`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | The image to be erased. |
| user_mask | file | Yes | Mask image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### Image Invisible Picture Watermark API (`image_image_invisible_image_watermark`)

- SDK method: `image.imageInvisibleImageWatermark()`
- HTTP: `POST /api/image/editing/image-invisible-image-watermark`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| function_type | string | Yes | Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image. |
| origin_image | file | No | Original image. |
| logo | file | No | Watermark image. |
| watermark_image | file | No | Composite image with watermark. |
| output_file_type | string | No | Output format. |
| quality_factor | integer | No | Quality factor for jpg output. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| watermark_image_url | string | The URL address after adding the watermark. |
| logo_url | string | Watermark URL address after decoding. |

### Image Invisible Text Watermark API (`image_image_invisible_text_watermarking`)

- SDK method: `image.imageInvisibleTextWatermark()`
- HTTP: `POST /api/image/editing/image-invisible-text-watermarking`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| function_type | string | Yes | Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image. |
| origin_image | file | No | Original image. |
| text | string | No | Watermark text. |
| watermark_image | file | No | Composite image with watermark. |
| output_file_type | string | No | Output format. |
| quality_factor | integer | No | Quality factor for jpg output. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| watermark_image_url | string | The URL address after adding the watermark. |
| text_image_url | string | Watermark URL address after decoding. |

### Intelligent Composition API (`image_intelligent_composition`)

- SDK method: `image.imageIntelligentComposition()`
- HTTP: `POST /api/image/editing/intelligent-composition`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| num_boxes | integer | No | The number of output boxes. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| elements | array | Intelligent composition results. |
| min_x | integer | The horizontal coordinate of the upper-left corner of the output box. |
| max_x | integer | The horizontal coordinate of the lower-right corner of the output box. |
| min_y | integer | The vertical coordinate of the upper-left corner of the output box. |
| max_y | integer | The lower-right vertical coordinate of the output box. |
| score | float | The higher the score, the better the composition. 3.8 or above is recommended as a better composition score. |

### Photo Retouch API (`image_photo_retouching`)

- SDK method: `image.imagePhotoEditing()`
- HTTP: `POST /api/image/editing/photo-retouching`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Images that require a style transformation. |
| style | file | Yes | Reference image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The resulting image after performing the style transformation. |

### Remove Objects API (`image_remove_objects`)

- SDK method: `image.imageRemoveObjects()`
- HTTP: `POST /api/image/editing/remove-objects`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### Remove Objects Advanced API (`image_remove_objects_advanced`)

- SDK method: `image.imageRemoveObjectsAdvanced()`
- HTTP: `POST /api/image/editing/remove-objects-advanced`

**Query**

None.

**Body**

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

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| binary_data_base64 | array of string | Output the processed image as a Base64 array (single image). |

### Remove Objects Pro API (`image_remove_objects_pro`)

- SDK method: `image.imageRemoveObjectsPro()`
- HTTP: `POST /api/image/editing/remove-objects-pro`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Original image. |
| mask | file | Yes | Mask image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | The URL of the image after erasing. |

### AI Cartoon Generator API (`image_ai_anime_generator`)

- SDK method: `image.imageAICartoonGenerator()`
- HTTP: `POST /api/image/effects/ai-anime-generator`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_type | string | Yes | Task Type. async: Asynchronous tasks. |
| image | file | Yes |  |
| type | string | Yes | Style. Range of values |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### AI Photo Colorize API (`image_image_colorization`)

- SDK method: `image.imageColoring()`
- HTTP: `POST /api/image/effects/image-colorization`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### Photo to Painting API (`image_image_style_conversion`)

- SDK method: `image.imageStyleTransfer()`
- HTTP: `POST /api/image/effects/image-style-conversion`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| option | string | Yes | cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### Style Transfer API (`image_image_style_migration`)

- SDK method: `image.imageStyleMigration()`
- HTTP: `POST /api/image/effects/image-style-migration`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| style | file | Yes | style image. |
| major | file | Yes | Content image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | URL address of the result image for stylization, image format: PNG. |
| major_url | string | The result of keeping the portrait unchanged and stylizing the rest. If there is no figure in the input major content map, the empty string is returned here. |

### Image Color Enhancement API (`image_image_color_enhancement`)

- SDK method: `image.imageColorEnhancement()`
- HTTP: `POST /api/image/enhance/image-color-enhancement`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| output_format | string | Yes | The format of the output image. |
| mode | string | Yes | Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Returns the URL address of the processed image. |

### Image Contrast Enhancement API (`image_image_contrast_enhancement`)

- SDK method: `image.imageContrastEnhancement()`
- HTTP: `POST /api/image/enhance/image-contrast-enhancement`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### Image Dehaze API (`image_image_defogging`)

- SDK method: `image.imageDehaze()`
- HTTP: `POST /api/image/enhance/image-defogging`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### Image Upscaler API (`image_image_lossless_enlargement`)

- SDK method: `image.imageLosslessEnlargement()`
- HTTP: `POST /api/image/enhance/image-lossless-enlargement`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| upscale_factor | integer | No | Magnification. |
| mode | string | No | Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image. |
| output_format | string | No | Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg. |
| output_quality | integer | No | Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| url | string | URL address of the image after resolution enlargement, image format is PNG. |

### Image Sharpness Enhancement API (`image_image_sharpness_enhancement`)

- SDK method: `image.imageClarityEnhancement()`
- HTTP: `POST /api/image/enhance/image-sharpness-enhancement`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |

### Stretched Image Restoration API (`image_stretch_image_recovery`)

- SDK method: `image.imageDistortionCorrection()`
- HTTP: `POST /api/image/enhance/stretch-image-recovery`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| image | string | base64 encoded image. |
| ratio | float | Recover ratio. |

### Image Composition Aesthetics Score API (`image_image_composition_aesthetics_scoring`)

- SDK method: `image.imageCompositionAestheticsScore()`
- HTTP: `POST /api/image/rating/image-composition-aesthetics-scoring`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| score | float | The higher the score, the better the composition, with a recommended score of 3.8 or higher being the better composition score. |

### Image Exposure Score API (`image_image_exposure_score`)

- SDK method: `image.imageExposureRating()`
- HTTP: `POST /api/image/rating/image-exposure-score`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| exposure | float | Image exposure score, the value range is 0~1. The higher the score, the greater the exposure. |

### Face Analyzer API (`portrait_face_analyzer`)

- SDK method: `portrait.portraitFaceAnalyzer()`
- HTTP: `POST /api/portrait/analysis/face-analyzer`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| max_face_num | integer | No | The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed. |
| face_attributes_type | string | No | Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced. |
| need_rotate_detection | integer | No | Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open. |

**Response**

| Field | Type | Description |
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

### Face Analyzer Advanced API (`portrait_face_analyzer_advanced`)

- SDK method: `portrait.portraitFaceAnalyzerAdvanced()`
- HTTP: `POST /api/portrait/analysis/face-analyzer-advanced`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
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

### Facial Landmarks API (`portrait_face_key_points`)

- SDK method: `portrait.portraitFacialLandmarks()`
- HTTP: `POST /api/portrait/analysis/face-key-points`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| max_face_num | integer | No | The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected). |
| face_field | string | No | Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points. |

**Response**

| Field | Type | Description |
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

### Skin Analyze API (`portrait_skin_analysis`)

- SDK method: `portrait.portraitSkinAnalysisBasic()`
- HTTP: `POST /api/portrait/analysis/skin-analysis`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
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

### Skin Analyze Advanced API (`portrait_skin_analysis_advanced`)

- SDK method: `portrait.portraitSkinAnalysisAdvanced()`
- HTTP: `POST /api/portrait/analysis/skin-analysis-advanced`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| face_quality_control | integer | No | Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error. |
| return_rect_confidence | integer | No | The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence. |
| return_maps | string | No | Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details |

**Response**

| Field | Type | Description |
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

### Skin Analyze Pro API (`portrait_skin_analysis_pro`)

- SDK method: `portrait.portraitSkinAnalysisProfessional()`
- HTTP: `POST /api/portrait/analysis/skin-analysis-pro`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes | Main Image. |
| left_side_image | file | No | Side face picture.(Left) |
| right_side_image | file | No | Side face picture.(Right) |
| return_maps | string | No | The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details |
| return_marks | string | No | The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details |
| roi_outline_color | json string | No | Customize the color. More Details |
| return_side_results | string | No | The side face information that needs to be returned. Use commas to separate multiple types. More Details |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| left_side_result | json string | Results of side face analysis. More Details |
| right_side_result | json string | Results of side face analysis. More Details |
| face_rectangle | object | Face position. More Details |
| result | object | Results of face skin analysis. More Details |

### Detect Skin Disease API (`portrait_skin_disease_detection`)

- SDK method: `portrait.portraitSkinDiseaseDetection()`
- HTTP: `POST /api/portrait/analysis/skin-disease-detection`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
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

### Try on Clothes API (`portrait_try_on_clothes`)

- SDK method: `portrait.portraitTryOnClothes()`
- HTTP: `POST /api/portrait/editing/try-on-clothes`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_type | string | Yes | Task Type. async: Asynchronous tasks. |
| person_image | file | Yes | Portrait image. |
| clothes_image | file | Yes | Clothing image. |
| clothes_type | string | Yes | Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### Try on Clothes Pro API (`portrait_try_on_clothes_pro`)

- SDK method: `portrait.portraitTryOnClothesPro()`
- HTTP: `POST /api/portrait/editing/try-on-clothes-pro`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_type | string | Yes | Task Type. async: Asynchronous tasks. |
| person_image | file | Yes | Portrait Image. |
| top_garment | file | Yes | Upper Body Clothing Image. |
| bottom_garment | file | No | Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty. |
| resolution | integer | No | Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px. |
| restore_face | boolean | No | Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### Face Blur API (`portrait_blurred_faces`)

- SDK method: `portrait.portraitFacialBlurring()`
- HTTP: `POST /api/portrait/effects/blurred-faces`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Change Facial Expressions API (`portrait_emotion_editor`)

- SDK method: `portrait.portraitExpressionEditing()`
- HTTP: `POST /api/portrait/effects/emotion-editor`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image_target | file | Yes |  |
| service_choice | integer | Yes | Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### AI Face Enhancer API (`portrait_enhance_face`)

- SDK method: `portrait.portraitFaceRestorationEnhancement()`
- HTTP: `POST /api/portrait/effects/enhance-face`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Age & Gender Swap API (`portrait_face_attribute_editing`)

- SDK method: `portrait.portraitFaceAttributeEditing()`
- HTTP: `POST /api/portrait/effects/face-attribute-editing`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| action_type | string | Yes | Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift. |
| quality_control | string | No | Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details |
| face_location | json string | No | When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| result | object | The content of the result data returned. |
| image | string | The BASE64 value of the edited image. |

### Face Beauty API (`portrait_face_beauty`)

- SDK method: `portrait.portraitFacialBeautification()`
- HTTP: `POST /api/portrait/effects/face-beauty`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| sharp | float | Yes | Sharpness level. A higher value indicates a greater degree of sharpness. |
| smooth | float | Yes | Smoothness level. A higher value results in a smoother appearance. |
| white | float | Yes | Whitening level. A higher value leads to lighter skin. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Face Beauty Advanced API (`portrait_face_beauty_advanced`)

- SDK method: `portrait.portraitFacialBeautificationAdvanced()`
- HTTP: `POST /api/portrait/effects/face-beauty-advanced`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| whitening | integer | No | Whitening level: 0 means no whitening, 100 represents the highest level. |
| smoothing | integer | No | Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level. |
| face_lifting | integer | No | Face slimming level: 0 means no face slimming, 100 represents the highest level. |
| eye_enlarging | integer | No | Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| result_image | string | Returns the base64 data of the processed image. |

### Face Beauty Pro API (`portrait_face_beauty_pro`)

- SDK method: `portrait.portraitFacialBeautificationPro()`
- HTTP: `POST /api/portrait/effects/face-beauty-pro`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| whitening | integer | No | Whitening Degree. 0 means no whitening effect, 100 represents the highest degree. |
| smoothing | integer | No | Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree. |
| thinface | integer | No | Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree. |
| shrink_face | integer | No | Small Face Degree. 0 means no small face effect, 100 represents the highest degree. |
| enlarge_eye | integer | No | Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree. |
| remove_eyebrow | integer | No | Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree. |
| filter_type | integer | No | Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain. |
| task_type | string | No | Task Type. sync: Synchronous tasks. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. sync: Synchronous tasks. |
| result | string | Returns the base64 data of the processed image. |

### Face Filters API (`portrait_face_filter`)

- SDK method: `portrait.portraitFacialFilters()`
- HTTP: `POST /api/portrait/effects/face-filter`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| resource_type | string | Yes | Picture style. More Details |
| strength | float | Yes | Filter intensity. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Merge Portraits API (`portrait_face_fusion`)

- SDK method: `portrait.portraitFaceFusion()`
- HTTP: `POST /api/portrait/effects/face-fusion`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image_target | file | Yes | Target image. |
| image_template | file | Yes | Template images. |
| source_similarity | float | No | Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### Hairstyle Changer API (`portrait_hairstyle_editor`)

- SDK method: `portrait.portraitHairstyleEditing()`
- HTTP: `POST /api/portrait/effects/hairstyle-editor`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image_target | file | Yes |  |
| hair_type | integer | No | Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### Hairstyle Changer Pro API (`portrait_hairstyle_editor_pro`)

- SDK method: `portrait.portraitHairstyleEditingPro()`
- HTTP: `POST /api/portrait/effects/hairstyle-editor-pro`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_type | string | Yes | Task Type. async: Asynchronous tasks. |
| image | file | Yes | Main image. |
| hair_style | string | Yes | Hairstyle. More Details |
| color | string | No | Color. More Details |
| image_size | integer | No | Returns the number of images. |
| mask | file | No | Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically. |
| bangs | integer | No | Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison |
| mode | integer | No | Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison |
| reference | integer | No | Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |

### Lips Color Changer API (`portrait_lips_color_changer`)

- SDK method: `portrait.portraitLipsColorChanger()`
- HTTP: `POST /api/portrait/effects/lips-color-changer`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| lip_color_infos | json string | Yes | Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| result_image | string | Returns the base64 data of the processed image. |

### Live Photos API (`portrait_live_photo`)

- SDK method: `portrait.portraitLivePhotos()`
- HTTP: `POST /api/portrait/effects/live-photo`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image_target | file | Yes |  |
| type | integer | No | Live photo type. 0: Avatar version. 1: Full body version. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| video | string | Returns the base64 encoded string of the generated video. |

### Cartoon Yourself API (`portrait_portrait_animation`)

- SDK method: `portrait.portraitCartoonYourself()`
- HTTP: `POST /api/portrait/effects/portrait-animation`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| type | string | Yes | Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Smart Beauty API (`portrait_smart_beauty`)

- SDK method: `portrait.portraitIntelligentBeautification()`
- HTTP: `POST /api/portrait/effects/smart-beauty`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image_target | file | Yes |  |
| multi_face | string | No | Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed. |
| beauty_level | float | No | Beauty level. |
| task_type | string | No | Task Type. sync: Synchronous tasks. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. sync: Synchronous tasks. |
| data | object | The content of the result data returned. |
| image | string | The result image, returning the Base64 encoding of the image. |

### AI Face Slimming API (`portrait_smart_face_slimming`)

- SDK method: `portrait.portraitIntelligentFaceSlimming()`
- HTTP: `POST /api/portrait/effects/smart-face-slimming`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| slim_degree | float | No | Standard strength. The higher the value, the more pronounced the face slimming effect. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### AI Skin Beauty API (`portrait_smart_skin`)

- SDK method: `portrait.portraitIntelligentSkinRetouching()`
- HTTP: `POST /api/portrait/effects/smart-skin`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| image | file | Yes |  |
| retouch_degree | float | No | Dermabrasion intensity. The higher the value, the less visible the skin texture. |
| whitening_degree | float | No | Whitening strength. The higher the value, the whiter the skin. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| data | object | The content of the result data returned. |
| image_url | string | Resulting image URL address. |

### Try on Clothes Refiner API (`portrait_try_on_clothes_refiner`)

- SDK method: `portrait.portraitTryOnClothesRefiner()`
- HTTP: `POST /api/portrait/enhance/try-on-clothes-refiner`

**Query**

None.

**Body**

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_type | string | Yes | Task Type. async: Asynchronous tasks. |
| person_image | file | Yes | Model image for calling the Try on Clothes API. |
| top_garment | file | Yes | Top clothing image for calling the Try on Clothes API. |
| coarse_image | file | Yes | Result image obtained from calling the Try on Clothes API. |
| gender | string | Yes | Gender of the person_image. woman: Female. man: Male. |
| bottom_garment | file | No | Bottom clothing image for calling the Try on Clothes API. |

**Response**

| Field | Type | Description |
| --- | --- | --- |
| task_type | string | Task Type. async: Asynchronous tasks. |
| task_id | string | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** |
