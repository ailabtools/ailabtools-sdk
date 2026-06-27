import type { FileInput, BaseResponse } from "../types";

export interface CommonQueryAsyncTaskResultParams {
  taskId: string; // task_id | The task_id returned by the asynchronous API.
}
export interface CommonQueryAsyncTaskResultResponseData {
  task_status?: number; // task_status | Asynchronous task status. 0: The task is queued. 1: Asynchronous processing. 2: Processing was successful.
}
export interface CommonQueryAsyncTaskResultResponse extends BaseResponse<CommonQueryAsyncTaskResultResponseData> {
}

export interface CommonQueryCreditsParams {
  // no params
}
export interface CommonQueryCreditsResponseData {
  unique_sign?: string; // unique_sign | Unique identification.
  name?: string; // name | Name.
  balance?: number; // balance | Credit Balance.
  total?: number; // total | Total Credits.
  last_recharge_balance?: number; // last_recharge_balance | Balance after last purchase.
  balance_warning?: number; // balance_warning | Credit Balance Early Warning Value.
  first_buy_time?: number; // first_buy_time | Time of first purchase.
  last_update_time?: number; // last_update_time | Last update time.
}
export interface CommonQueryCreditsResponse extends BaseResponse<CommonQueryCreditsResponseData[]> {
  balance?: number;
  balance_warning?: number;
  first_buy_time?: number;
  last_recharge_balance?: number;
  last_update_time?: number;
  name?: string;
  total?: number;
  unique_sign?: string;
}

export interface CutoutClothingBackgroundRemovalParams {
  image: FileInput; // image
  outMode?: number; // out_mode | 0
  clothClass?: string; // cloth_class | Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat.
  returnForm?: string; // return_form | Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned.
}
export interface CutoutClothingBackgroundRemovalResponseData {
  elements?: unknown[]; // elements | Returns an array of elements.
  "0"?: Record<string, unknown>; // 0
  image_url?: string; // image_url | Returns the keying result image URL address.
  "1"?: Record<string, unknown>; // 1
  class_url?: Record<string, unknown>; // class_url | Return the URL corresponding to the clothing category based on the input cloth_class.
  tops?: string; // tops | Tops URL.
  coat?: string; // coat | Coat URL.
  skirt?: string; // skirt | Skirt URL.
  pants?: string; // pants | Pants URL.
  bag?: string; // bag | Bag URL.
  shoes?: string; // shoes | Shoes URL.
  hat?: string; // hat | Hat URL.
}
export interface CutoutClothingBackgroundRemovalResponse extends BaseResponse<CutoutClothingBackgroundRemovalResponseData> {
  "0"?: Record<string, unknown>;
  "1"?: Record<string, unknown>;
  bag?: string;
  class_url?: Record<string, unknown>;
  coat?: string;
  elements?: unknown[];
  hat?: string;
  image_url?: string;
  pants?: string;
  shoes?: string;
  skirt?: string;
  tops?: string;
}

export interface CutoutProductBackgroundRemovalParams {
  image: FileInput; // image
  returnForm?: string; // return_form | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
}
export interface CutoutProductBackgroundRemovalResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface CutoutProductBackgroundRemovalResponse extends BaseResponse<CutoutProductBackgroundRemovalResponseData> {
  image_url?: string;
}

export interface CutoutFoodBackgroundRemovalParams {
  image: FileInput; // image
  returnForm?: string; // return_form | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image.
}
export interface CutoutFoodBackgroundRemovalResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface CutoutFoodBackgroundRemovalResponse extends BaseResponse<CutoutFoodBackgroundRemovalResponseData> {
  image_url?: string;
}

export interface CutoutUniversalBackgroundRemovalParams {
  image: FileInput; // image
  returnForm?: string; // return_form | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
}
export interface CutoutUniversalBackgroundRemovalResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface CutoutUniversalBackgroundRemovalResponse extends BaseResponse<CutoutUniversalBackgroundRemovalResponseData> {
  image_url?: string;
}

export interface CutoutAvatarExtractionParams {
  image: FileInput; // image
  returnForm?: string; // return_form | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask.
}
export interface CutoutAvatarExtractionResponseData {
  elements?: unknown[]; // elements | The keying result of each child element.
  image_url?: string; // image_url | Resulting image URL address.
  width?: number; // width | The width of the result map.
  height?: number; // height | The height of the resultant graph.
  x?: number; // x | Top left x-coordinate.
  y?: number; // y | Top left y-coordinate.
}
export interface CutoutAvatarExtractionResponse extends BaseResponse<CutoutAvatarExtractionResponseData> {
  elements?: unknown[];
  height?: number;
  image_url?: string;
  width?: number;
  x?: number;
  y?: number;
}

export interface CutoutHairExtractionParams {
  image: FileInput; // image
}
export interface CutoutHairExtractionResponseData {
  elements?: unknown[]; // elements | The keying result of each child element.
  image_url?: string; // image_url | Resulting image URL address.
  width?: number; // width | The width of the result map.
  height?: number; // height | The height of the resultant graph.
  x?: number; // x | Top left x-coordinate.
  y?: number; // y | Top left y-coordinate.
}
export interface CutoutHairExtractionResponse extends BaseResponse<CutoutHairExtractionResponseData> {
  elements?: unknown[];
  height?: number;
  image_url?: string;
  width?: number;
  x?: number;
  y?: number;
}

export interface CutoutHumanBackgroundRemovalParams {
  image: FileInput; // image
  returnForm?: string; // return_form | Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
}
export interface CutoutHumanBackgroundRemovalResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface CutoutHumanBackgroundRemovalResponse extends BaseResponse<CutoutHumanBackgroundRemovalResponseData> {
  image_url?: string;
}

export interface ImageQueryingAsyncTaskResultsParams {
  jobId: string; // job_id | The request_id returned by the asynchronous API.
  type: string; // type | Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator
}
export interface ImageQueryingAsyncTaskResultsResponseData {
  // empty
}
export interface ImageQueryingAsyncTaskResultsResponse extends BaseResponse<ImageQueryingAsyncTaskResultsResponseData> {
}

export interface ImageAiImageExtenderParams {
  customPrompt?: string; // custom_prompt | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process.
  steps?: number; // steps | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
  strength?: number; // strength | The smaller the value, the closer it is to the original image.
  scale?: number; // scale | The degree to which the text description influences the output.
  seed?: number; // seed | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
  maxHeight?: number; // max_height | Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process.
  maxWidth?: number; // max_width | Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process.
  image: FileInput; // image | Original image.
  top?: number; // top | Upward expansion ratio.
  bottom?: number; // bottom | Downward expansion ratio.
  left?: number; // left | Leftward expansion ratio.
  right?: number; // right | Rightward expansion ratio.
  mask?: FileInput; // mask | Mask image.
}
export interface ImageAiImageExtenderResponseData {
  binary_data_base64?: unknown[]; // binary_data_base64 | Output the processed image as a Base64 array (single image).
}
export interface ImageAiImageExtenderResponse extends BaseResponse<ImageAiImageExtenderResponseData> {
  binary_data_base64?: unknown[];
}

export interface ImageAiObjectReplacerParams {
  image: FileInput; // image | Original image.
  mask: FileInput; // mask | Mask image.
  customPrompt?: string; // custom_prompt | Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process.
  steps?: number; // steps | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
  scale?: number; // scale | The degree to which the text description influences the output.
  seed?: number; // seed | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
}
export interface ImageAiObjectReplacerResponseData {
  binary_data_base64?: unknown[]; // binary_data_base64 | Output the processed image as a Base64 array (single image).
}
export interface ImageAiObjectReplacerResponse extends BaseResponse<ImageAiObjectReplacerResponseData> {
  binary_data_base64?: unknown[];
}

export interface ImageAIImageCroppingParams {
  image: FileInput; // image
  width: number; // width | The width of the target. Unit: px.
  height: number; // height | The height of the target. Unit: px.
}
export interface ImageAIImageCroppingResponseData {
  url?: string; // url | The URL address of the image after size transformation.
  retain_location?: Record<string, unknown>; // retain_location | The coordinate information of the original image data in the generated image.
  width?: number; // width | Outputs the width of the original image after isoscaling according to the specified width. Unit: px.
  height?: number; // height | Outputs the height of the original image after isoscaling according to the specified height. Unit: px.
  y?: number; // y | The y-coordinate of the upper-left corner of the original figure.
  x?: number; // x | The x coordinate of the upper left corner of the original figure.
}
export interface ImageAIImageCroppingResponse extends BaseResponse<ImageAIImageCroppingResponseData> {
  height?: number;
  retain_location?: Record<string, unknown>;
  url?: string;
  width?: number;
  x?: number;
  y?: number;
}

export interface ImageErasureParams {
  image: FileInput; // image | The image to be erased.
  userMask: FileInput; // user_mask | Mask image.
}
export interface ImageErasureResponseData {
  image_url?: string; // image_url | The URL of the image after erasing.
}
export interface ImageErasureResponse extends BaseResponse<ImageErasureResponseData> {
  image_url?: string;
}

export interface ImageInvisibleImageWatermarkParams {
  functionType: string; // function_type | Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image.
  originImage?: FileInput; // origin_image | Original image.
  logo?: FileInput; // logo | Watermark image.
  watermarkImage?: FileInput; // watermark_image | Composite image with watermark.
  outputFileType?: string; // output_file_type | Output format.
  qualityFactor?: number; // quality_factor | Quality factor for jpg output.
}
export interface ImageInvisibleImageWatermarkResponseData {
  watermark_image_url?: string; // watermark_image_url | The URL address after adding the watermark.
  logo_url?: string; // logo_url | Watermark URL address after decoding.
}
export interface ImageInvisibleImageWatermarkResponse extends BaseResponse<ImageInvisibleImageWatermarkResponseData> {
  logo_url?: string;
  watermark_image_url?: string;
}

export interface ImageInvisibleTextWatermarkParams {
  functionType: string; // function_type | Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image.
  originImage?: FileInput; // origin_image | Original image.
  text?: string; // text | Watermark text.
  watermarkImage?: FileInput; // watermark_image | Composite image with watermark.
  outputFileType?: string; // output_file_type | Output format.
  qualityFactor?: number; // quality_factor | Quality factor for jpg output.
}
export interface ImageInvisibleTextWatermarkResponseData {
  watermark_image_url?: string; // watermark_image_url | The URL address after adding the watermark.
  text_image_url?: string; // text_image_url | Watermark URL address after decoding.
}
export interface ImageInvisibleTextWatermarkResponse extends BaseResponse<ImageInvisibleTextWatermarkResponseData> {
  text_image_url?: string;
  watermark_image_url?: string;
}

export interface ImageIntelligentCompositionParams {
  image: FileInput; // image
  numBoxes?: number; // num_boxes | The number of output boxes.
}
export interface ImageIntelligentCompositionResponseData {
  elements?: unknown[]; // elements | Intelligent composition results.
  min_x?: number; // min_x | The horizontal coordinate of the upper-left corner of the output box.
  max_x?: number; // max_x | The horizontal coordinate of the lower-right corner of the output box.
  min_y?: number; // min_y | The vertical coordinate of the upper-left corner of the output box.
  max_y?: number; // max_y | The lower-right vertical coordinate of the output box.
  score?: number; // score | The higher the score, the better the composition. 3.8 or above is recommended as a better composition score.
}
export interface ImageIntelligentCompositionResponse extends BaseResponse<ImageIntelligentCompositionResponseData> {
  elements?: unknown[];
  max_x?: number;
  max_y?: number;
  min_x?: number;
  min_y?: number;
  score?: number;
}

export interface ImagePhotoEditingParams {
  image: FileInput; // image | Images that require a style transformation.
  style: FileInput; // style | Reference image.
}
export interface ImagePhotoEditingResponseData {
  image_url?: string; // image_url | The resulting image after performing the style transformation.
}
export interface ImagePhotoEditingResponse extends BaseResponse<ImagePhotoEditingResponseData> {
  image_url?: string;
}

export interface ImageRemoveObjectsParams {
  image: FileInput; // image | Original image.
  mask: FileInput; // mask | Mask image.
}
export interface ImageRemoveObjectsResponseData {
  image_url?: string; // image_url | The URL of the image after erasing.
}
export interface ImageRemoveObjectsResponse extends BaseResponse<ImageRemoveObjectsResponseData> {
  image_url?: string;
}

export interface ImageRemoveObjectsAdvancedParams {
  image: FileInput; // image | Original image.
  mask: FileInput; // mask | Mask image.
  steps?: number; // steps | Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
  strength?: number; // strength | The smaller the value, the closer it is to the original image.
  scale?: number; // scale | The degree to which the text description influences the output.
  seed?: number; // seed | Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
  dilateSize?: number; // dilate_size | Mask Dilation Radius. The mask used for object removal should fully encompass the target object. When users manually draw the mask, it often extends beyond the object's boundary. However, if the mask is generated by a segmentation algorithm, it typically adheres closely to the object's edges, which might leave parts of the object uncovered. This can lead to incomplete removal or unexpected artifacts during generation. To avoid such issues, it's recommended to appropriately increase the dilate_size parameter to ensure the mask fully covers the object.
  quality?: string; // quality | Quality Parameter. H: High quality — best output quality, but slightly slower processing. M: Medium quality — balanced in both quality and speed. L: Low quality — fastest processing, suitable for scenarios where speed is prioritized.
}
export interface ImageRemoveObjectsAdvancedResponseData {
  binary_data_base64?: unknown[]; // binary_data_base64 | Output the processed image as a Base64 array (single image).
}
export interface ImageRemoveObjectsAdvancedResponse extends BaseResponse<ImageRemoveObjectsAdvancedResponseData> {
  binary_data_base64?: unknown[];
}

export interface ImageRemoveObjectsProParams {
  image: FileInput; // image | Original image.
  mask: FileInput; // mask | Mask image.
}
export interface ImageRemoveObjectsProResponseData {
  image_url?: string; // image_url | The URL of the image after erasing.
}
export interface ImageRemoveObjectsProResponse extends BaseResponse<ImageRemoveObjectsProResponseData> {
  image_url?: string;
}

export interface ImageAICartoonGeneratorParams {
  taskType: string; // task_type | Task Type. async: Asynchronous tasks.
  image: FileInput; // image
  type: string; // type | Style. Range of values
}
export interface ImageAICartoonGeneratorResponseData {
  task_type?: string; // task_type | Task Type. async: Asynchronous tasks.
  task_id?: string; // task_id | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
}
export interface ImageAICartoonGeneratorResponse extends BaseResponse<ImageAICartoonGeneratorResponseData> {
}

export interface ImageColoringParams {
  image: FileInput; // image
}
export interface ImageColoringResponseData {
  image?: string; // image | base64 encoded image.
}
export interface ImageColoringResponse extends BaseResponse<ImageColoringResponseData> {
}

export interface ImageStyleTransferParams {
  image: FileInput; // image
  option: string; // option | cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style.
}
export interface ImageStyleTransferResponseData {
  image?: string; // image | base64 encoded image.
}
export interface ImageStyleTransferResponse extends BaseResponse<ImageStyleTransferResponseData> {
}

export interface ImageStyleMigrationParams {
  style: FileInput; // style | style image.
  major: FileInput; // major | Content image.
}
export interface ImageStyleMigrationResponseData {
  url?: string; // url | URL address of the result image for stylization, image format: PNG.
  major_url?: string; // major_url | The result of keeping the portrait unchanged and stylizing the rest. If there is no figure in the input major content map, the empty string is returned here.
}
export interface ImageStyleMigrationResponse extends BaseResponse<ImageStyleMigrationResponseData> {
  major_url?: string;
  url?: string;
}

export interface ImageColorEnhancementParams {
  image: FileInput; // image
  outputFormat: string; // output_format | The format of the output image.
  mode: string; // mode | Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality.
}
export interface ImageColorEnhancementResponseData {
  image_url?: string; // image_url | Returns the URL address of the processed image.
}
export interface ImageColorEnhancementResponse extends BaseResponse<ImageColorEnhancementResponseData> {
  image_url?: string;
}

export interface ImageContrastEnhancementParams {
  image: FileInput; // image
}
export interface ImageContrastEnhancementResponseData {
  image?: string; // image | base64 encoded image.
}
export interface ImageContrastEnhancementResponse extends BaseResponse<ImageContrastEnhancementResponseData> {
}

export interface ImageDehazeParams {
  image: FileInput; // image
}
export interface ImageDehazeResponseData {
  image?: string; // image | base64 encoded image.
}
export interface ImageDehazeResponse extends BaseResponse<ImageDehazeResponseData> {
}

export interface ImageLosslessEnlargementParams {
  image: FileInput; // image
  upscaleFactor?: number; // upscale_factor | Magnification.
  mode?: string; // mode | Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image.
  outputFormat?: string; // output_format | Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg.
  outputQuality?: number; // output_quality | Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg.
}
export interface ImageLosslessEnlargementResponseData {
  url?: string; // url | URL address of the image after resolution enlargement, image format is PNG.
}
export interface ImageLosslessEnlargementResponse extends BaseResponse<ImageLosslessEnlargementResponseData> {
  url?: string;
}

export interface ImageClarityEnhancementParams {
  image: FileInput; // image
}
export interface ImageClarityEnhancementResponseData {
  image?: string; // image | base64 encoded image.
}
export interface ImageClarityEnhancementResponse extends BaseResponse<ImageClarityEnhancementResponseData> {
}

export interface ImageDistortionCorrectionParams {
  image: FileInput; // image
}
export interface ImageDistortionCorrectionResponseData {
  image?: string; // image | base64 encoded image.
  ratio?: number; // ratio | Recover ratio.
}
export interface ImageDistortionCorrectionResponse extends BaseResponse<ImageDistortionCorrectionResponseData> {
}

export interface ImageCompositionAestheticsScoreParams {
  image: FileInput; // image
}
export interface ImageCompositionAestheticsScoreResponseData {
  score?: number; // score | The higher the score, the better the composition, with a recommended score of 3.8 or higher being the better composition score.
}
export interface ImageCompositionAestheticsScoreResponse extends BaseResponse<ImageCompositionAestheticsScoreResponseData> {
  score?: number;
}

export interface ImageExposureRatingParams {
  image: FileInput; // image
}
export interface ImageExposureRatingResponseData {
  exposure?: number; // exposure | Image exposure score, the value range is 0~1. The higher the score, the greater the exposure.
}
export interface ImageExposureRatingResponse extends BaseResponse<ImageExposureRatingResponseData> {
  exposure?: number;
}

export interface PortraitFaceAnalyzerParams {
  image: FileInput; // image
  maxFaceNum?: number; // max_face_num | The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed.
  faceAttributesType?: string; // face_attributes_type | Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced.
  needRotateDetection?: number; // need_rotate_detection | Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open.
}
export interface PortraitFaceAnalyzerResponseData {
  image_width?: number; // image_width | Image width.
  image_height?: number; // image_height | Image height.
  face_detail_infos?: unknown[]; // face_detail_infos | List of face information.
  face_rect?: Record<string, unknown>; // face_rect | Face frame position.
  x?: number; // x | The horizontal coordinate of the upper left corner of the face frame.The face frame contains the positions of the five senses of the face and expands on them, if the face frame is out of the range of the picture, it will lead to negative coordinates.If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand.
  y?: number; // y | The vertical coordinate of the upper left corner of the face frame. The face frame contains the positions of the five senses of the face and expands them to a certain extent. If the face frame exceeds the range of the picture, it will lead to negative coordinates. If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand.
  width?: number; // width | Face width.
  height?: number; // height | Face height.
  face_detail_attributes_info?: Record<string, unknown>; // face_detail_attributes_info | Face attribute information.
  age?: number; // age | Age. 65: 65 years old and above. When face_attributes_type does not contain Age or when more than 5 faces are detected, this parameter is still returned but is not informative.
  beauty?: number; // beauty | Beauty Score. When face_attributes_type does not contain Beauty or when more than 5 faces are detected, this parameter is still returned but is not informative.
  emotion?: Record<string, unknown>; // emotion | Emotional information. When face_attributes_type does not contain Emotion or when more than 5 faces are detected, this parameter is still returned but is not informative.
  type?: number; // type | 0: Neutral. 1: Happy. 2: Surprised. 3: Angry. 4: Sad. 5: Disgusted. 6: Fearful.
  probability?: number; // probability | Probability of being correct.
  eye?: Record<string, unknown>; // eye | Eye-related information. face_attributes_type does not contain Eye or when more than 5 faces are detected, this parameter is still returned but is not informative.
  glass?: Record<string, unknown>; // glass | Wearing glasses.
  eye_open?: Record<string, unknown>; // eye_open | Closed eyes.
  eyelid_type?: Record<string, unknown>; // eyelid_type | Double eyelids.
  eye_size?: Record<string, unknown>; // eye_size | Eye size.
  eyebrow?: Record<string, unknown>; // eyebrow | Eyebrow information. face_attributes_type does not contain Eyebrow or when more than 5 faces are detected, this parameter is still returned but is not informative.
  eyebrow_density?: Record<string, unknown>; // eyebrow_density | Thick eyebrows.
  eyebrow_curve?: Record<string, unknown>; // eyebrow_curve | Curved eyebrows.
  eyebrow_length?: Record<string, unknown>; // eyebrow_length | Eyebrow length.
  gender?: Record<string, unknown>; // gender | Gender information. face_attributes_type does not contain Gender or when more than 5 faces are detected, this parameter is still returned but is not informative.
  hair?: Record<string, unknown>; // hair | Hair information. face_attributes_type does not contain Hair or when more than 5 faces are detected, this parameter is still returned but is not informative.
  length?: Record<string, unknown>; // length | Hair length information.
  bang?: Record<string, unknown>; // bang | Fringe (bangs) information.
  color?: Record<string, unknown>; // color | Hair color information.
  hat?: Record<string, unknown>; // hat | Hat information. face_attributes_type does not contain Hat or when more than 5 faces are detected, this parameter is still returned but is not informative.
  style?: Record<string, unknown>; // style | Hat wearing status information.
  head_pose?: Record<string, unknown>; // head_pose | Face offset information. face_attributes_type does not contain HeadPose or when more than 5 faces are detected, this parameter is still returned but is not informative.
  pitch?: number; // pitch | Vertical Offset.
  yaw?: number; // yaw | Horizontal Offset.
  mask?: Record<string, unknown>; // mask | Mask wearing information. face_attributes_type does not contain Mask or when more than 5 faces are detected, this parameter is still returned but is not informative.
  mouth?: Record<string, unknown>; // mouth | Mouth information. face_attributes_type does not contain Mouth or when more than 5 faces are detected, this parameter is still returned but is not informative.
  mouth_open?: Record<string, unknown>; // mouth_open | Mouth open.
  moustache?: Record<string, unknown>; // moustache | Facial hair information. face_attributes_type does not contain Moustache or when more than 5 faces are detected, this parameter is still returned but is not informative.
  nose?: Record<string, unknown>; // nose | Nose information. face_attributes_type does not contain Nose or when more than 5 faces are detected, this parameter is still returned but is not informative.
  shape?: Record<string, unknown>; // shape | Face shape information. face_attributes_type does not contain Shape or when more than 5 faces are detected, this parameter is still returned but is not informative.
  skin?: Record<string, unknown>; // skin | Skin color information. face_attributes_type does not contain Skin or when more than 5 faces are detected, this parameter is still returned but is not informative.
  smile?: number; // smile | Smile Rating. face_attributes_type does not contain Smile or when more than 5 faces are detected, this parameter is still returned but is not informative.
}
export interface PortraitFaceAnalyzerResponse extends BaseResponse<PortraitFaceAnalyzerResponseData> {
  age?: number;
  bang?: Record<string, unknown>;
  beauty?: number;
  color?: Record<string, unknown>;
  emotion?: Record<string, unknown>;
  eye?: Record<string, unknown>;
  eye_open?: Record<string, unknown>;
  eye_size?: Record<string, unknown>;
  eyebrow?: Record<string, unknown>;
  eyebrow_curve?: Record<string, unknown>;
  eyebrow_density?: Record<string, unknown>;
  eyebrow_length?: Record<string, unknown>;
  eyelid_type?: Record<string, unknown>;
  face_detail_attributes_info?: Record<string, unknown>;
  face_detail_infos?: unknown[];
  face_rect?: Record<string, unknown>;
  gender?: Record<string, unknown>;
  glass?: Record<string, unknown>;
  hair?: Record<string, unknown>;
  hat?: Record<string, unknown>;
  head_pose?: Record<string, unknown>;
  height?: number;
  image_height?: number;
  image_width?: number;
  length?: Record<string, unknown>;
  mask?: Record<string, unknown>;
  moustache?: Record<string, unknown>;
  mouth?: Record<string, unknown>;
  mouth_open?: Record<string, unknown>;
  nose?: Record<string, unknown>;
  pitch?: number;
  probability?: number;
  shape?: Record<string, unknown>;
  skin?: Record<string, unknown>;
  smile?: number;
  style?: Record<string, unknown>;
  type?: number;
  width?: number;
  x?: number;
  y?: number;
  yaw?: number;
}

export interface PortraitFaceAnalyzerAdvancedParams {
  image: FileInput; // image
}
export interface PortraitFaceAnalyzerAdvancedResponseData {
  pupils?: number; // pupils | The center point coordinates and radius of the left and right pupils, with 6 floating-point values per face, in the order of [left_iris_cenpt.x, left_iris_cenpt.y, left_iris_radius, right_iris_cenpt.x, right_iris_cenpt.y, right_iris_radius]. If multiple faces are detected, results are returned in order.
  gender_list?: number; // gender_list | Gender. If multiple faces are detected, results are returned in order. 0: Female. 1: Male.
  expressions?: number; // expressions | Expression. If multiple faces are detected, results are returned in order. 0: Neutral. 1: Smile.
  face_count?: number; // face_count | Number of faces.
  landmarks?: number; // landmarks | Facial landmark detection results. A set of landmark coordinates is returned for each face, represented as (x0, y0, x1, y1, …). If multiple faces are detected, results are returned in order.
  landmark_count?: number; // landmark_count | Number of facial landmarks. distributed as follows: Eyebrows: 24 points Eyes: 32 points Nose: 6 points Mouth: 34 points Outer contour: 9 points
  beauty_list?: number; // beauty_list | Attractiveness score. A higher score indicates a higher level of attractiveness. If multiple faces are detected, results are returned in order.
  hat_list?: number; // hat_list | Whether wearing a hat. If multiple faces are detected, results are returned in order. 0: No. 1: Yes.
  face_probability_list?: number; // face_probability_list | Probability of a face. If multiple faces are detected, results are returned in order.
  glasses?: number; // glasses | Whether wearing glasses. If multiple faces are detected, results are returned in order. 0: No glasses. 1: Wearing regular glasses. 2: Wearing sunglasses.
  face_rectangles?: number; // face_rectangles | Face bounding box, represented as [left, top, width, height]. If multiple faces are detected, results are returned in order.
  pose_list?: number; // pose_list | Face pose, in the format [yaw, pitch, roll]. If multiple faces are detected, results are returned in order. yaw: left-right angle. Range: [-90, 90]. pitch: up-down angle. Range: [-90, 90]. roll: in-plane rotation angle. Range: [-180, 180].
  age_list?: number; // age_list | Age. If multiple faces are detected, results are returned in order.
  dense_feature_length?: number; // dense_feature_length | The feature dimension returned by face recognition.
  masks?: number; // masks | Whether wearing a mask. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. 2: Mask worn incorrectly.
  qualities?: Record<string, unknown>; // qualities | Face quality score, where a higher score indicates better suitability for recognition.
  score_list?: number; // score_list | Overall quality score, where a higher score indicates better suitability for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates high overall image quality, while a score below 85 indicates lower overall image quality. If multiple faces are detected, results are returned in order.
  blur_list?: number; // blur_list | Face blur score indicating the impact of blurriness on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower likelihood of the image being blurry, while a score below 85 indicates a higher likelihood of blurriness. If multiple faces are detected, results are returned in order.
  fnf_list?: number; // fnf_list | Score indicating whether the target is a face and its impact on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image is a face, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order.
  glass_list?: number; // glass_list | Score indicating the impact of upper-face occlusion (e.g., glasses) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing glasses, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order.
  illu_list?: number; // illu_list | Score indicating the impact of lighting on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image has good lighting, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order.
  mask_list?: number; // mask_list | Score indicating the impact of lower-face occlusion (e.g., mask) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing a mask, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order.
  noise_list?: number; // noise_list | Score indicating the impact of image noise on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of image noise, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order.
}
export interface PortraitFaceAnalyzerAdvancedResponse extends BaseResponse<PortraitFaceAnalyzerAdvancedResponseData> {
  age_list?: number;
  beauty_list?: number;
  blur_list?: number;
  dense_feature_length?: number;
  expressions?: number;
  face_count?: number;
  face_probability_list?: number;
  face_rectangles?: number;
  fnf_list?: number;
  gender_list?: number;
  glass_list?: number;
  glasses?: number;
  hat_list?: number;
  illu_list?: number;
  landmark_count?: number;
  landmarks?: number;
  mask_list?: number;
  masks?: number;
  noise_list?: number;
  pose_list?: number;
  pupils?: number;
  qualities?: Record<string, unknown>;
  score_list?: number;
}

export interface PortraitFacialLandmarksParams {
  image: FileInput; // image
  maxFaceNum?: number; // max_face_num | The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected).
  faceField?: string; // face_field | Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points.
}
export interface PortraitFacialLandmarksResponseData {
  result?: Record<string, unknown>; // result | The content of the result data returned.
  face_num?: number; // face_num | The number of faces in the picture.
  face_list?: unknown[]; // face_list | List of face information.
  face_token?: string; // face_token | Face Token.
  location?: Record<string, unknown>; // location | The position of the face in the picture.
  left?: number; // left | The distance of the face area from the left border.
  top?: number; // top | The distance of the face area from the upper boundary.
  width?: number; // width | The width of the face area.
  height?: number; // height | The height of the face area.
  rotation?: number; // rotation | The clockwise rotation angle of the face frame with respect to the vertical direction.
  face_probability?: number; // face_probability | Face confidence.
  angle?: Record<string, unknown>; // angle | Face rotation parameters, refer to Face Spatial Pose Angle Reference for detailed description.
  yaw?: number; // yaw | The left and right rotation angle of 3D rotation.
  pitch?: number; // pitch | Three-dimensional rotation of the pitch angle.
  roll?: number; // roll | In-plane rotation angle.
  age?: number; // age | Age.
  gender?: Record<string, unknown>; // gender | Gender information.
  type?: string; // type
  probability?: number; // probability | Gender confidence.
  landmark4?: unknown[]; // landmark4 | 4 feature points.
  landmark72?: unknown[]; // landmark72 | 72 feature points. Refer to 72 feature points for details.
  landmark150?: Record<string, unknown>; // landmark150 | 150 feature points. Refer to 150 feature points for details.
  landmark201?: Record<string, unknown>; // landmark201 | 201 feature points. Refer to 201 feature points for details.
}
export interface PortraitFacialLandmarksResponse extends BaseResponse<PortraitFacialLandmarksResponseData> {
  age?: number;
  angle?: Record<string, unknown>;
  face_list?: unknown[];
  face_num?: number;
  face_probability?: number;
  face_token?: string;
  gender?: Record<string, unknown>;
  height?: number;
  landmark150?: Record<string, unknown>;
  landmark201?: Record<string, unknown>;
  landmark4?: unknown[];
  landmark72?: unknown[];
  left?: number;
  location?: Record<string, unknown>;
  pitch?: number;
  probability?: number;
  result?: Record<string, unknown>;
  roll?: number;
  rotation?: number;
  top?: number;
  type?: string;
  width?: number;
  yaw?: number;
}

export interface PortraitSkinAnalysisBasicParams {
  image: FileInput; // image
}
export interface PortraitSkinAnalysisBasicResponseData {
  warning?: unknown[]; // warning | Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]).
  face_rectangle?: Record<string, unknown>; // face_rectangle | The position of the face rectangle box.
  top?: number; // top | The vertical coordinate of the pixel point in the upper-left corner of the rectangle box.
  left?: number; // left | The horizontal coordinate of the pixel point in the upper-left corner of the rectangle.
  width?: number; // width | The width of the rectangle box.
  height?: number; // height | The height of the rectangle box.
  result?: Record<string, unknown>; // result | Results of face skin analysis.
  left_eyelids?: Record<string, unknown>; // left_eyelids | Results of the double eyelid test on the left eye.
  value?: number; // value | Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids
  confidence?: number; // confidence | Confidence.
  right_eyelids?: Record<string, unknown>; // right_eyelids | Results of the double eyelid test on the right eye.
  eye_pouch?: Record<string, unknown>; // eye_pouch | Eye bag test results.
  dark_circle?: Record<string, unknown>; // dark_circle | Dark circles test results.
  forehead_wrinkle?: Record<string, unknown>; // forehead_wrinkle | Results of the head-lift test.
  crows_feet?: Record<string, unknown>; // crows_feet | Fishtail test results.
  eye_finelines?: Record<string, unknown>; // eye_finelines | Results of the eye fine lines test.
  glabella_wrinkle?: Record<string, unknown>; // glabella_wrinkle | Results of the interbrow line test.
  nasolabial_fold?: Record<string, unknown>; // nasolabial_fold | Results of the forehead line test.
  skin_type?: Record<string, unknown>; // skin_type | Skin texture test results.
  details?: Record<string, unknown>; // details | The confidence level of each classification.
  "0"?: Record<string, unknown>; // 0 | Oily skin information.
  "1"?: Record<string, unknown>; // 1 | Dry skin information.
  "2"?: Record<string, unknown>; // 2 | Neutral skin information.
  "3"?: Record<string, unknown>; // 3 | Combination skin information.
  pores_forehead?: Record<string, unknown>; // pores_forehead | Forehead pore test results.
  pores_left_cheek?: Record<string, unknown>; // pores_left_cheek | Results of the left cheek pore test.
  pores_right_cheek?: Record<string, unknown>; // pores_right_cheek | Results of the right cheek pore test.
  pores_jaw?: Record<string, unknown>; // pores_jaw | Chin pore test results.
  blackhead?: Record<string, unknown>; // blackhead | Blackhead test results.
  acne?: Record<string, unknown>; // acne | Acne test results.
  mole?: Record<string, unknown>; // mole | Mole test results.
  skin_spot?: Record<string, unknown>; // skin_spot | Spot detection results.
}
export interface PortraitSkinAnalysisBasicResponse extends BaseResponse<PortraitSkinAnalysisBasicResponseData> {
  "0"?: Record<string, unknown>;
  "1"?: Record<string, unknown>;
  "2"?: Record<string, unknown>;
  "3"?: Record<string, unknown>;
  acne?: Record<string, unknown>;
  blackhead?: Record<string, unknown>;
  confidence?: number;
  crows_feet?: Record<string, unknown>;
  dark_circle?: Record<string, unknown>;
  details?: Record<string, unknown>;
  eye_finelines?: Record<string, unknown>;
  eye_pouch?: Record<string, unknown>;
  face_rectangle?: Record<string, unknown>;
  forehead_wrinkle?: Record<string, unknown>;
  glabella_wrinkle?: Record<string, unknown>;
  height?: number;
  left?: number;
  left_eyelids?: Record<string, unknown>;
  mole?: Record<string, unknown>;
  nasolabial_fold?: Record<string, unknown>;
  pores_forehead?: Record<string, unknown>;
  pores_jaw?: Record<string, unknown>;
  pores_left_cheek?: Record<string, unknown>;
  pores_right_cheek?: Record<string, unknown>;
  result?: Record<string, unknown>;
  right_eyelids?: Record<string, unknown>;
  skin_spot?: Record<string, unknown>;
  skin_type?: Record<string, unknown>;
  top?: number;
  value?: number;
  warning?: unknown[];
  width?: number;
}

export interface PortraitSkinAnalysisAdvancedParams {
  image: FileInput; // image
  faceQualityControl?: number; // face_quality_control | Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error.
  returnRectConfidence?: number; // return_rect_confidence | The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence.
  returnMaps?: string; // return_maps | Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details
}
export interface PortraitSkinAnalysisAdvancedResponseData {
  warning?: unknown[]; // warning | Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]).
  face_rectangle?: Record<string, unknown>; // face_rectangle | The position of the face rectangle box.
  top?: number; // top | The vertical coordinate of the pixel point in the upper-left corner of the rectangle box.
  left?: number; // left | The horizontal coordinate of the pixel point in the upper-left corner of the rectangle.
  width?: number; // width | The width of the rectangle box.
  height?: number; // height | The height of the rectangle box.
  result?: Record<string, unknown>; // result | Results of face skin analysis.
  skin_color?: Record<string, unknown>; // skin_color | Skin color test results.
  value?: number; // value | Skin color. 0: Transparent white. 1: White. 2: Naturally. 3: Wheat. 4: Dark.
  confidence?: number; // confidence | Confidence.
  skintone_ita?: Record<string, unknown>; // skintone_ita | Returns skin color classification information based on the ITA (Individual Typology Angle) standard. **NOTE**
  ITA?: number; // ITA | Angle value.
  skintone?: number; // skintone | Classified according to the skin tone of ITA. 0: Very light. 1: Light. 2: Intermediate. 3: Tan. 4: Brown. 5: Dark. 6: Abnormal color values that may be caused by weak lighting conditions or overexposure.
  skin_hue_ha?: Record<string, unknown>; // skin_hue_ha | Returns skin tone classification information based on HA (Hue Angle). **NOTE**
  HA?: number; // HA | HA angle value.
  skin_age?: Record<string, unknown>; // skin_age | Skin age test results.
  left_eyelids?: Record<string, unknown>; // left_eyelids | Results of the double eyelid test on the left eye.
  right_eyelids?: Record<string, unknown>; // right_eyelids | Results of the double eyelid test on the right eye.
  eye_pouch?: Record<string, unknown>; // eye_pouch | Eye bag test results.
  eye_pouch_severity?: Record<string, unknown>; // eye_pouch_severity | Severity of puffiness under the eyes (return when puffiness test result is 1)
  dark_circle?: Record<string, unknown>; // dark_circle | Dark circles test results.
  forehead_wrinkle?: Record<string, unknown>; // forehead_wrinkle | Results of the head-lift test.
  crows_feet?: Record<string, unknown>; // crows_feet | Fishtail test results.
  eye_finelines?: Record<string, unknown>; // eye_finelines | Results of the eye fine lines test.
  glabella_wrinkle?: Record<string, unknown>; // glabella_wrinkle | Results of the interbrow line test.
  nasolabial_fold?: Record<string, unknown>; // nasolabial_fold | Results of the forehead line test.
  nasolabial_fold_severity?: Record<string, unknown>; // nasolabial_fold_severity | Severity of the forehead lines (returned when the result of the forehead line test is 1)
  skin_type?: Record<string, unknown>; // skin_type | Skin texture test results.
  details?: Record<string, unknown>; // details | The confidence level of each classification.
  "0"?: Record<string, unknown>; // 0 | Oily skin information.
  "1"?: Record<string, unknown>; // 1 | Dry skin information.
  "2"?: Record<string, unknown>; // 2 | Neutral skin information.
  "3"?: Record<string, unknown>; // 3 | Combination skin information.
  pores_forehead?: Record<string, unknown>; // pores_forehead | Forehead pore test results.
  pores_left_cheek?: Record<string, unknown>; // pores_left_cheek | Results of the left cheek pore test.
  pores_right_cheek?: Record<string, unknown>; // pores_right_cheek | Results of the right cheek pore test.
  pores_jaw?: Record<string, unknown>; // pores_jaw | Chin pore test results.
  blackhead?: Record<string, unknown>; // blackhead | Blackhead test results.
  acne?: Record<string, unknown>; // acne | Acne test results.
  rectangle?: unknown[]; // rectangle | The location of each pimple box.
  mole?: Record<string, unknown>; // mole | Mole test results.
  closed_comedones?: Record<string, unknown>; // closed_comedones | Closure returns the result.
  skin_spot?: Record<string, unknown>; // skin_spot | Spot detection results.
  face_maps?: Record<string, unknown>; // face_maps | Returns the skin chromatography visualization image set in the entry (return_maps).
  red_area?: string; // red_area | Red zone map. jpeg images for base64.
  sensitivity?: Record<string, unknown>; // sensitivity | The sensitivity of the human face within the photo. This return value must be used with the red area map, you need to set the return red area map ("red_area") in the input parameter return_maps first.
  sensitivity_area?: number; // sensitivity_area | Sensitive redness areas account for the proportion of cheeks and T-zone.
  sensitivity_intensity?: number; // sensitivity_intensity | The intensity of redness in sensitive areas.
}
export interface PortraitSkinAnalysisAdvancedResponse extends BaseResponse<PortraitSkinAnalysisAdvancedResponseData> {
  "0"?: Record<string, unknown>;
  "1"?: Record<string, unknown>;
  "2"?: Record<string, unknown>;
  "3"?: Record<string, unknown>;
  HA?: number;
  ITA?: number;
  acne?: Record<string, unknown>;
  blackhead?: Record<string, unknown>;
  closed_comedones?: Record<string, unknown>;
  confidence?: number;
  crows_feet?: Record<string, unknown>;
  dark_circle?: Record<string, unknown>;
  details?: Record<string, unknown>;
  eye_finelines?: Record<string, unknown>;
  eye_pouch?: Record<string, unknown>;
  eye_pouch_severity?: Record<string, unknown>;
  face_maps?: Record<string, unknown>;
  face_rectangle?: Record<string, unknown>;
  forehead_wrinkle?: Record<string, unknown>;
  glabella_wrinkle?: Record<string, unknown>;
  height?: number;
  left?: number;
  left_eyelids?: Record<string, unknown>;
  mole?: Record<string, unknown>;
  nasolabial_fold?: Record<string, unknown>;
  nasolabial_fold_severity?: Record<string, unknown>;
  pores_forehead?: Record<string, unknown>;
  pores_jaw?: Record<string, unknown>;
  pores_left_cheek?: Record<string, unknown>;
  pores_right_cheek?: Record<string, unknown>;
  rectangle?: unknown[];
  red_area?: string;
  result?: Record<string, unknown>;
  right_eyelids?: Record<string, unknown>;
  sensitivity?: Record<string, unknown>;
  sensitivity_area?: number;
  sensitivity_intensity?: number;
  skin_age?: Record<string, unknown>;
  skin_color?: Record<string, unknown>;
  skin_hue_ha?: Record<string, unknown>;
  skin_spot?: Record<string, unknown>;
  skin_type?: Record<string, unknown>;
  skintone?: number;
  skintone_ita?: Record<string, unknown>;
  top?: number;
  value?: number;
  warning?: unknown[];
  width?: number;
}

export interface PortraitSkinAnalysisProfessionalParams {
  image: FileInput; // image | Main Image.
  leftSideImage?: FileInput; // left_side_image | Side face picture.(Left)
  rightSideImage?: FileInput; // right_side_image | Side face picture.(Right)
  returnMaps?: string; // return_maps | The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details
  returnMarks?: string; // return_marks | The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details
  roiOutlineColor?: string; // roi_outline_color | Customize the color. More Details
  returnSideResults?: string; // return_side_results | The side face information that needs to be returned. Use commas to separate multiple types. More Details
}
export interface PortraitSkinAnalysisProfessionalResponseData {
  left_side_result?: string; // left_side_result | Results of side face analysis. More Details
  right_side_result?: string; // right_side_result | Results of side face analysis. More Details
  face_rectangle?: Record<string, unknown>; // face_rectangle | Face position. More Details
  result?: Record<string, unknown>; // result | Results of face skin analysis. More Details
}
export interface PortraitSkinAnalysisProfessionalResponse extends BaseResponse<PortraitSkinAnalysisProfessionalResponseData> {
  face_rectangle?: Record<string, unknown>;
  left_side_result?: string;
  result?: Record<string, unknown>;
  right_side_result?: string;
}

export interface PortraitSkinDiseaseDetectionParams {
  image: FileInput; // image
}
export interface PortraitSkinDiseaseDetectionResponseData {
  body_part?: string; // body_part | Skin lesion site identification. scalp: Scalp. face: Face. neck: Neck. arm: Arm. chest: Chest. abdomen: Abdomen. oxter: Axilla. back: Back. waist: Lumbar region. hand: Hand. genitals: External genitalia. cruris: Groin / Inguinal region. leg: Leg. foot: Foot. unknown: Unknown.
  image_quality?: number; // image_quality | Image quality score.
  image_type?: string; // image_type | Image classification.
  results_english?: Record<string, unknown>; // results_english | 【English】The predicted results. Contains Key-Value pairs, where Key is the disease name and Value is the probability.
  acne?: number; // acne | Acne
  actinic_keratosis?: number; // actinic_keratosis | Actinic Keratosis
  alopecia_androgenetica?: number; // alopecia_androgenetica | Alopecia Androgenetica
  alopecia_areata?: number; // alopecia_areata | Alopecia Areata
  bullous_dermatosis?: number; // bullous_dermatosis | Bullous Dermatosis
  chloasma?: number; // chloasma | Chloasma
  corn?: number; // corn | Corn
  dermatofibroma?: number; // dermatofibroma | Dermatofibroma
  eczema_dermatitis?: number; // eczema_dermatitis | Eczema Dermatitis
  erysipelas?: number; // erysipelas | Erysipelas
  erythema_multiforme?: number; // erythema_multiforme | Erythema Multiforme
  folliculitis?: number; // folliculitis | Folliculitis
  furuncle?: number; // furuncle | Furuncle
  haemangioma?: number; // haemangioma | Haemangioma
  herpes?: number; // herpes | Herpes
  herpes_simplex?: number; // herpes_simplex | Herpes Simplex
  iga_vasculitis?: number; // iga_vasculitis | Iga Vasculitis
  keloid?: number; // keloid | Keloid
  keratosis_follicularism?: number; // keratosis_follicularism | Keratosis Follicularism
  lichen_planus?: number; // lichen_planus | Lichen Planus
  lupus_erythematosus?: number; // lupus_erythematosus | Lupus Erythematosus
  molluscum_contagiosum?: number; // molluscum_contagiosum | Molluscum Contagiosum
  nevus?: number; // nevus | Nevus
  paronychia?: number; // paronychia | Paronychia
  pityriasis_alba?: number; // pityriasis_alba | Pityriasis Alba
  pityriasis_rosea?: number; // pityriasis_rosea | Pityriasis Rosea
  prurigo_nodularis?: number; // prurigo_nodularis | Prurigo Nodularis
  psoriasis?: number; // psoriasis | Psoriasis
  rosacea?: number; // rosacea | Rosacea
  sebaceous_cyst?: number; // sebaceous_cyst | Sebaceous Cyst
  sebaceousnevus?: number; // sebaceousnevus | Sebaceousnevus
  seborrheic_dermatitis?: number; // seborrheic_dermatitis | Seborrheic Dermatitis
  seborrheic_keratosis?: number; // seborrheic_keratosis | Seborrheic Keratosis
  skin_tag?: number; // skin_tag | Skin Tag
  stasis_dermatitis?: number; // stasis_dermatitis | Stasis Dermatitis
  syringoma?: number; // syringoma | Syringoma
  tinea_capitis?: number; // tinea_capitis | Tinea Capitis
  tinea_corporis?: number; // tinea_corporis | Tinea Corporis
  tinea_cruris?: number; // tinea_cruris | Tinea Cruris
  tinea_manuum?: number; // tinea_manuum | Tinea Manuum
  tinea_pedis?: number; // tinea_pedis | Tinea Pedis
  tinea_unguium?: number; // tinea_unguium | Tinea Unguium
  tinea_versicolor?: number; // tinea_versicolor | Tinea Versicolor
  urticaria?: number; // urticaria | Urticaria
  urticaria_papular?: number; // urticaria_papular | Urticaria Papular
  varicella?: number; // varicella | Varicella
  verruca_plana?: number; // verruca_plana | Verruca Plana
  verruca_vulgaris?: number; // verruca_vulgaris | Verruca Vulgaris
  vitiligo?: number; // vitiligo | Vitiligo
}
export interface PortraitSkinDiseaseDetectionResponse extends BaseResponse<PortraitSkinDiseaseDetectionResponseData> {
  acne?: number;
  actinic_keratosis?: number;
  alopecia_androgenetica?: number;
  alopecia_areata?: number;
  body_part?: string;
  bullous_dermatosis?: number;
  chloasma?: number;
  corn?: number;
  dermatofibroma?: number;
  eczema_dermatitis?: number;
  erysipelas?: number;
  erythema_multiforme?: number;
  folliculitis?: number;
  furuncle?: number;
  haemangioma?: number;
  herpes?: number;
  herpes_simplex?: number;
  iga_vasculitis?: number;
  image_quality?: number;
  image_type?: string;
  keloid?: number;
  keratosis_follicularism?: number;
  lichen_planus?: number;
  lupus_erythematosus?: number;
  molluscum_contagiosum?: number;
  nevus?: number;
  paronychia?: number;
  pityriasis_alba?: number;
  pityriasis_rosea?: number;
  prurigo_nodularis?: number;
  psoriasis?: number;
  results_english?: Record<string, unknown>;
  rosacea?: number;
  sebaceous_cyst?: number;
  sebaceousnevus?: number;
  seborrheic_dermatitis?: number;
  seborrheic_keratosis?: number;
  skin_tag?: number;
  stasis_dermatitis?: number;
  syringoma?: number;
  tinea_capitis?: number;
  tinea_corporis?: number;
  tinea_cruris?: number;
  tinea_manuum?: number;
  tinea_pedis?: number;
  tinea_unguium?: number;
  tinea_versicolor?: number;
  urticaria?: number;
  urticaria_papular?: number;
  varicella?: number;
  verruca_plana?: number;
  verruca_vulgaris?: number;
  vitiligo?: number;
}

export interface PortraitTryOnClothesParams {
  taskType: string; // task_type | Task Type. async: Asynchronous tasks.
  personImage: FileInput; // person_image | Portrait image.
  clothesImage: FileInput; // clothes_image | Clothing image.
  clothesType: string; // clothes_type | Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing.
}
export interface PortraitTryOnClothesResponseData {
  task_type?: string; // task_type | Task Type. async: Asynchronous tasks.
  task_id?: string; // task_id | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
}
export interface PortraitTryOnClothesResponse extends BaseResponse<PortraitTryOnClothesResponseData> {
}

export interface PortraitTryOnClothesProParams {
  taskType: string; // task_type | Task Type. async: Asynchronous tasks.
  personImage: FileInput; // person_image | Portrait Image.
  topGarment: FileInput; // top_garment | Upper Body Clothing Image.
  bottomGarment?: FileInput; // bottom_garment | Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.
  resolution?: number; // resolution | Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px.
  restoreFace?: boolean; // restore_face | Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face.
}
export interface PortraitTryOnClothesProResponseData {
  task_type?: string; // task_type | Task Type. async: Asynchronous tasks.
  task_id?: string; // task_id | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
}
export interface PortraitTryOnClothesProResponse extends BaseResponse<PortraitTryOnClothesProResponseData> {
}

export interface PortraitFacialBlurringParams {
  image: FileInput; // image
}
export interface PortraitFacialBlurringResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitFacialBlurringResponse extends BaseResponse<PortraitFacialBlurringResponseData> {
  image_url?: string;
}

export interface PortraitExpressionEditingParams {
  imageTarget: FileInput; // image_target
  serviceChoice: number; // service_choice | Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes.
}
export interface PortraitExpressionEditingResponseData {
  image?: string; // image | The result image, returning the Base64 encoding of the image.
}
export interface PortraitExpressionEditingResponse extends BaseResponse<PortraitExpressionEditingResponseData> {
}

export interface PortraitFaceRestorationEnhancementParams {
  image: FileInput; // image
}
export interface PortraitFaceRestorationEnhancementResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitFaceRestorationEnhancementResponse extends BaseResponse<PortraitFaceRestorationEnhancementResponseData> {
  image_url?: string;
}

export interface PortraitFaceAttributeEditingParams {
  image: FileInput; // image
  actionType: string; // action_type | Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift.
  qualityControl?: string; // quality_control | Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details
  faceLocation?: string; // face_location | When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details
}
export interface PortraitFaceAttributeEditingResponseData {
  result?: Record<string, unknown>; // result | The content of the result data returned.
  image?: string; // image | The BASE64 value of the edited image.
}
export interface PortraitFaceAttributeEditingResponse extends BaseResponse<PortraitFaceAttributeEditingResponseData> {
  result?: Record<string, unknown>;
}

export interface PortraitFacialBeautificationParams {
  image: FileInput; // image
  sharp: number; // sharp | Sharpness level. A higher value indicates a greater degree of sharpness.
  smooth: number; // smooth | Smoothness level. A higher value results in a smoother appearance.
  white: number; // white | Whitening level. A higher value leads to lighter skin.
}
export interface PortraitFacialBeautificationResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitFacialBeautificationResponse extends BaseResponse<PortraitFacialBeautificationResponseData> {
  image_url?: string;
}

export interface PortraitFacialBeautificationAdvancedParams {
  image: FileInput; // image
  whitening?: number; // whitening | Whitening level: 0 means no whitening, 100 represents the highest level.
  smoothing?: number; // smoothing | Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level.
  faceLifting?: number; // face_lifting | Face slimming level: 0 means no face slimming, 100 represents the highest level.
  eyeEnlarging?: number; // eye_enlarging | Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level.
}
export interface PortraitFacialBeautificationAdvancedResponseData {
  result_image?: string; // result_image | Returns the base64 data of the processed image.
}
export interface PortraitFacialBeautificationAdvancedResponse extends BaseResponse<PortraitFacialBeautificationAdvancedResponseData> {
  result_image?: string;
}

export interface PortraitFacialBeautificationProParams {
  image: FileInput; // image
  whitening?: number; // whitening | Whitening Degree. 0 means no whitening effect, 100 represents the highest degree.
  smoothing?: number; // smoothing | Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree.
  thinface?: number; // thinface | Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree.
  shrinkFace?: number; // shrink_face | Small Face Degree. 0 means no small face effect, 100 represents the highest degree.
  enlargeEye?: number; // enlarge_eye | Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree.
  removeEyebrow?: number; // remove_eyebrow | Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree.
  filterType?: number; // filter_type | Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain.
  taskType?: string; // task_type | Task Type. sync: Synchronous tasks.
}
export interface PortraitFacialBeautificationProResponseData {
  task_type?: string; // task_type | Task Type. sync: Synchronous tasks.
  result?: string; // result | Returns the base64 data of the processed image.
}
export interface PortraitFacialBeautificationProResponse extends BaseResponse<PortraitFacialBeautificationProResponseData> {
  result?: string;
}

export interface PortraitFacialFiltersParams {
  image: FileInput; // image
  resourceType: string; // resource_type | Picture style. More Details
  strength: number; // strength | Filter intensity.
}
export interface PortraitFacialFiltersResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitFacialFiltersResponse extends BaseResponse<PortraitFacialFiltersResponseData> {
  image_url?: string;
}

export interface PortraitFaceFusionParams {
  imageTarget: FileInput; // image_target | Target image.
  imageTemplate: FileInput; // image_template | Template images.
  sourceSimilarity?: number; // source_similarity | Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image.
}
export interface PortraitFaceFusionResponseData {
  image?: string; // image | The result image, returning the Base64 encoding of the image.
}
export interface PortraitFaceFusionResponse extends BaseResponse<PortraitFaceFusionResponseData> {
}

export interface PortraitHairstyleEditingParams {
  imageTarget: FileInput; // image_target
  hairType?: number; // hair_type | Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair.
}
export interface PortraitHairstyleEditingResponseData {
  image?: string; // image | The result image, returning the Base64 encoding of the image.
}
export interface PortraitHairstyleEditingResponse extends BaseResponse<PortraitHairstyleEditingResponseData> {
}

export interface PortraitHairstyleEditingProParams {
  taskType: string; // task_type | Task Type. async: Asynchronous tasks.
  image: FileInput; // image | Main image.
  hairStyle: string; // hair_style | Hairstyle. More Details
  color?: string; // color | Color. More Details
  imageSize?: number; // image_size | Returns the number of images.
  mask?: FileInput; // mask | Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically.
  bangs?: number; // bangs | Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison
  mode?: number; // mode | Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison
  reference?: number; // reference | Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison
}
export interface PortraitHairstyleEditingProResponseData {
  task_type?: string; // task_type | Task Type. async: Asynchronous tasks.
  task_id?: string; // task_id | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
}
export interface PortraitHairstyleEditingProResponse extends BaseResponse<PortraitHairstyleEditingProResponseData> {
}

export interface PortraitLipsColorChangerParams {
  image: FileInput; // image
  lipColorInfos: string; // lip_color_infos | Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description
}
export interface PortraitLipsColorChangerResponseData {
  result_image?: string; // result_image | Returns the base64 data of the processed image.
}
export interface PortraitLipsColorChangerResponse extends BaseResponse<PortraitLipsColorChangerResponseData> {
  result_image?: string;
}

export interface PortraitLivePhotosParams {
  imageTarget: FileInput; // image_target
  type?: number; // type | Live photo type. 0: Avatar version. 1: Full body version.
}
export interface PortraitLivePhotosResponseData {
  video?: string; // video | Returns the base64 encoded string of the generated video.
}
export interface PortraitLivePhotosResponse extends BaseResponse<PortraitLivePhotosResponseData> {
  video?: string;
}

export interface PortraitCartoonYourselfParams {
  image: FileInput; // image
  type: string; // type | Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects
}
export interface PortraitCartoonYourselfResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitCartoonYourselfResponse extends BaseResponse<PortraitCartoonYourselfResponseData> {
  image_url?: string;
}

export interface PortraitIntelligentBeautificationParams {
  imageTarget: FileInput; // image_target
  multiFace?: string; // multi_face | Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed.
  beautyLevel?: number; // beauty_level | Beauty level.
  taskType?: string; // task_type | Task Type. sync: Synchronous tasks.
}
export interface PortraitIntelligentBeautificationResponseData {
  task_type?: string; // task_type | Task Type. sync: Synchronous tasks.
  image?: string; // image | The result image, returning the Base64 encoding of the image.
}
export interface PortraitIntelligentBeautificationResponse extends BaseResponse<PortraitIntelligentBeautificationResponseData> {
}

export interface PortraitIntelligentFaceSlimmingParams {
  image: FileInput; // image
  slimDegree?: number; // slim_degree | Standard strength. The higher the value, the more pronounced the face slimming effect.
}
export interface PortraitIntelligentFaceSlimmingResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitIntelligentFaceSlimmingResponse extends BaseResponse<PortraitIntelligentFaceSlimmingResponseData> {
  image_url?: string;
}

export interface PortraitIntelligentSkinRetouchingParams {
  image: FileInput; // image
  retouchDegree?: number; // retouch_degree | Dermabrasion intensity. The higher the value, the less visible the skin texture.
  whiteningDegree?: number; // whitening_degree | Whitening strength. The higher the value, the whiter the skin.
}
export interface PortraitIntelligentSkinRetouchingResponseData {
  image_url?: string; // image_url | Resulting image URL address.
}
export interface PortraitIntelligentSkinRetouchingResponse extends BaseResponse<PortraitIntelligentSkinRetouchingResponseData> {
  image_url?: string;
}

export interface PortraitTryOnClothesRefinerParams {
  taskType: string; // task_type | Task Type. async: Asynchronous tasks.
  personImage: FileInput; // person_image | Model image for calling the Try on Clothes API.
  topGarment: FileInput; // top_garment | Top clothing image for calling the Try on Clothes API.
  coarseImage: FileInput; // coarse_image | Result image obtained from calling the Try on Clothes API.
  gender: string; // gender | Gender of the person_image. woman: Female. man: Male.
  bottomGarment?: FileInput; // bottom_garment | Bottom clothing image for calling the Try on Clothes API.
}
export interface PortraitTryOnClothesRefinerResponseData {
  task_type?: string; // task_type | Task Type. async: Asynchronous tasks.
  task_id?: string; // task_id | Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
}
export interface PortraitTryOnClothesRefinerResponse extends BaseResponse<PortraitTryOnClothesRefinerResponseData> {
}

export interface CutoutHDUniversalBackgroundRemovalParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `BMP` `PNG` - Image size: No more than 40 MB. - Image resolution: Larger than 32x32px, smaller than 10000x10000px.
}
export interface CutoutHDUniversalBackgroundRemovalResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface CutoutHDUniversalBackgroundRemovalResponse extends BaseResponse<CutoutHDUniversalBackgroundRemovalResponseData> {
}

export interface CutoutHdHumanBodyBackgroundRemovalParams {
  image: FileInput; // image
}
export interface CutoutHdHumanBodyBackgroundRemovalElement {
  image_url?: string; // image_url | URL of the background-removed image.
}
export interface CutoutHdHumanBodyBackgroundRemovalResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  elements?: CutoutHdHumanBodyBackgroundRemovalElement[]; // elements
}
export interface CutoutHdHumanBodyBackgroundRemovalResponse extends BaseResponse<CutoutHdHumanBodyBackgroundRemovalResponseData> {
}

export interface ImageAINailArtParams {
  image: FileInput; // image | Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  nailName: string; // nail_name | Nail Name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  nailDesc: string; // nail_desc | Nail Description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
}
export interface ImageAINailArtResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface ImageAINailArtResponse extends BaseResponse<ImageAINailArtResponseData> {
}

export interface ImageAINailArtProParams {
  image: FileInput; // image | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  referenceImage: FileInput; // reference_image | Reference image for guidance. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  resolution?: string; // resolution | Output resolution. Allowed values: 1K, 2K. Default: 1K.
}
export interface ImageAINailArtProResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface ImageAINailArtProResponse extends BaseResponse<ImageAINailArtProResponseData> {
}

export interface ImageAIPhotographyParams {
  image: FileInput; // image | Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  styleTitle: string; // style_title | Style name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  styleDesc: string; // style_desc | Style description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  imageSize?: string; // image_size | Output Image Aspect Ratio. Allowed values: auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: auto.
}
export interface ImageAIPhotographyResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface ImageAIPhotographyResponse extends BaseResponse<ImageAIPhotographyResponseData> {
}

export interface ImageAIEmojiGeneratorParams {
  image: FileInput; // image | Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  expression: string; // expression | Expression (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  style: string; // style | Style (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  scene: string; // scene | Scene (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  filler?: string; // filler | Filler Text (English only). Max 20 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
}
export interface ImageAIEmojiGeneratorResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface ImageAIEmojiGeneratorResponse extends BaseResponse<ImageAIEmojiGeneratorResponseData> {
}

export interface ImagePhotoToColoringPageParams {
  image: FileInput; // image | Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  prompt?: string; // prompt | Prompt (English only). Max 3000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
  imageSize?: string; // image_size | Output Image Aspect Ratio. Allowed values: A4, auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: A4.
}
export interface ImagePhotoToColoringPageResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface ImagePhotoToColoringPageResponse extends BaseResponse<ImagePhotoToColoringPageResponseData> {
}

export interface ImageAIFlowerWallpaperParams {
  name?: string; // name | User name to display in the wallpaper (English only). Default: AUTO.
  flowerElements?: string; // flower_elements | Flower elements and bouquet composition description (English only). Default: AUTO.
  style?: string; // style | Artwork style for the generated wallpaper (English only). Default: soft watercolor floral illustration.
  background?: string; // background | Background style or color theme for the wallpaper (English only). Default: pastel gradient background.
  aspectRatio?: string; // aspect_ratio | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
}
export interface ImageAIFlowerWallpaperResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface ImageAIFlowerWallpaperResponse extends BaseResponse<ImageAIFlowerWallpaperResponseData> {
}

export interface PortraitAIFaceRatingParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  aspectRatio?: string; // aspect_ratio | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
}
export interface PortraitAIFaceRatingResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIFaceRatingResponse extends BaseResponse<PortraitAIFaceRatingResponseData> {
}

export interface PortraitAIBaldParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIBaldResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIBaldResponse extends BaseResponse<PortraitAIBaldResponseData> {
}

export interface PortraitAIBeardRemovalParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIBeardRemovalResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIBeardRemovalResponse extends BaseResponse<PortraitAIBeardRemovalResponseData> {
}

export interface PortraitAIBeardStylingParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  beard?: string; // beard | Built-in beard preset. Provide this field or `image_template`. If both are provided, `beard` takes precedence. See [Supported beard values](/docs/ai-portrait/editing/ai-beard-styling/api#beard). Allowed values: FullBeardClassic, CorporateBeard, Garibaldi, Verdi, FullBeardTapered, VanDyke, Bandholz, VanDykeRefined, Goatee, ExtendedGoatee, Balbo, AnchorBeardClean, DucktailBeardPointed, AnchorBeardFull, DucktailBeardFull, HeavyStubble, ChevronMoustache, HandlebarMoustache, ImperialMoustache, CircleBeard, ChinStrap, MuttonChops, SoulPatch, PetiteGoatee.
  imageTemplate?: FileInput; // image_template | Reference image for beard transfer. Provide this field or `beard`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIBeardStylingResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIBeardStylingResponse extends BaseResponse<PortraitAIBeardStylingResponseData> {
}

export interface PortraitAIBreastExpansionParams {
  taskType?: string; // task_type | Task Type. <li>`async`: Asynchronous tasks.</li>
  personImage: FileInput; // person_image
}
export interface PortraitAIBreastExpansionResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  image?: string; // image
}
export interface PortraitAIBreastExpansionResponse extends BaseResponse<PortraitAIBreastExpansionResponseData> {
}

export interface PortraitAIButtEnhancementParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIButtEnhancementResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIButtEnhancementResponse extends BaseResponse<PortraitAIButtEnhancementResponseData> {
}

export interface PortraitAIColoredContactsParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  name?: string; // name | Contact Lens Name (English only).
  desc?: string; // desc | Contact Lens Description (English only).
}
export interface PortraitAIColoredContactsResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIColoredContactsResponse extends BaseResponse<PortraitAIColoredContactsResponseData> {
}

export interface PortraitAIEyebrowsParams {
  image: FileInput; // image | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  referenceImage: FileInput; // reference_image | Reference Image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  resolution?: string; // resolution | Resolution. Allowed values: 1K, 2K. Default: 1K.
}
export interface PortraitAIEyebrowsResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIEyebrowsResponse extends BaseResponse<PortraitAIEyebrowsResponseData> {
}

export interface PortraitAIEyelashesParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  name?: string; // name | Eyelash Name (English only).
  desc?: string; // desc | Eyelash Description (English only).
}
export interface PortraitAIEyelashesResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIEyelashesResponse extends BaseResponse<PortraitAIEyelashesResponseData> {
}

export interface PortraitAIEyeshadowTryOnParams {
  image: FileInput; // image | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  eyeshadowStyle?: string; // eyeshadow_style | Built-in eyeshadow preset. Provide this field or `image_template`. If both are provided, `eyeshadow_style` takes precedence. See [Supported eyeshadow styles](/docs/ai-portrait/editing/ai-eyeshadow/api#eyeshadow_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36.
  imageTemplate?: FileInput; // image_template | Reference image for eyeshadow transfer. Provide this field or `eyeshadow_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  aspectRatio?: string; // aspect_ratio | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
}
export interface PortraitAIEyeshadowTryOnResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIEyeshadowTryOnResponse extends BaseResponse<PortraitAIEyeshadowTryOnResponseData> {
}

export interface PortraitAIFaceSwapParams {
  imageTarget: FileInput; // image_target | The image to be modified. The face in this image will be replaced. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
  imageTemplate: FileInput; // image_template | The image that provides the face to use. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIFaceSwapResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface PortraitAIFaceSwapResponse extends BaseResponse<PortraitAIFaceSwapResponseData> {
}

export interface PortraitAIFatFilterParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIFatFilterResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIFatFilterResponse extends BaseResponse<PortraitAIFatFilterResponseData> {
}

export interface PortraitAIHairColorParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  name?: string; // name | Hair Color Name (English only).
  desc?: string; // desc | Hair Color Description (English only).
}
export interface PortraitAIHairColorResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIHairColorResponse extends BaseResponse<PortraitAIHairColorResponseData> {
}

export interface PortraitAIHairLossSimulationParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  level: string; // level | Hair loss level. See [Supported level values](/docs/ai-portrait/editing/ai-hair-loss-simulation/api#level). Allowed values: man_1, man_2, man_3, man_4, man_5, man_6, man_7, woman_1, woman_2, woman_3, woman_4, woman_5, woman_6, woman_7.
}
export interface PortraitAIHairLossSimulationResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIHairLossSimulationResponse extends BaseResponse<PortraitAIHairLossSimulationResponseData> {
}

export interface PortraitAILipEnhancementParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAILipEnhancementResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAILipEnhancementResponse extends BaseResponse<PortraitAILipEnhancementResponseData> {
}

export interface PortraitAIWaistSlimmingParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIWaistSlimmingResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIWaistSlimmingResponse extends BaseResponse<PortraitAIWaistSlimmingResponseData> {
}

export interface PortraitTryOnClothesPremiumParams {
  taskType: string; // task_type | Task Type. <li>`async`: Asynchronous tasks.</li>
  personImage: FileInput; // person_image | Portrait image.
  topGarment: FileInput; // top_garment | Upper Body Clothing Image.
  resolution?: number; // resolution | Output Image Resolution. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `-1`. <li>`-1`: Original image resolution.</li> <li>`1024`: 576x1024px.</li> <li>`1280`: 720x1280px.</li>
  restoreFace?: boolean; // restore_face | Whether to Keep the Model’s Face. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `true`. <li>`true`: Keep the model’s original face.</li> <li>`false`: Regenerate the model’s face.</li>
  bottomGarment?: FileInput; // bottom_garment | Lower Body Clothing Image. <li>If no lower body clothing image is provided, the lower body clothing effect will be randomly generated.</li> <li>If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.</li>
}
export interface PortraitTryOnClothesPremiumResponseData {
  request_id?: string; // request_id
  log_id?: string; // log_id
  error_code?: number; // error_code
  error_code_str?: string; // error_code_str
  error_msg?: string; // error_msg
  error_detail?: Record<string, unknown>; // error_detail
  task_type?: string; // task_type
  task_id?: string; // task_id
}
export interface PortraitTryOnClothesPremiumResponse extends BaseResponse<PortraitTryOnClothesPremiumResponseData> {
}

export interface PortraitAIBigHeadEffectParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIBigHeadEffectResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIBigHeadEffectResponse extends BaseResponse<PortraitAIBigHeadEffectResponseData> {
}

export interface PortraitAIHalloweenMaskParams {
  image: FileInput; // image | Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  maskStyle?: string; // mask_style | Built-in mask preset. Provide either this field or `image_template`. If both are provided, `mask_style` takes precedence. See [Supported mask styles](/docs/ai-portrait/effects/ai-halloween-mask/api#mask_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85.
  imageTemplate?: FileInput; // image_template | Reference image for eyeshadow transfer. Provide this field or `mask_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  aspectRatio?: string; // aspect_ratio | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
}
export interface PortraitAIHalloweenMaskResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIHalloweenMaskResponse extends BaseResponse<PortraitAIHalloweenMaskResponseData> {
}

export interface PortraitAILipBiteExpressionsParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  gridCount?: number; // grid_count | Specifies the number of emoji stickers to generate in a single image. Allowed values: 1, 4, 6, 9. Default: 1.
  aspectRatio?: string; // aspect_ratio | Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
}
export interface PortraitAILipBiteExpressionsResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAILipBiteExpressionsResponse extends BaseResponse<PortraitAILipBiteExpressionsResponseData> {
}

export interface PortraitAIRedLipGlossParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAIRedLipGlossResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAIRedLipGlossResponse extends BaseResponse<PortraitAIRedLipGlossResponseData> {
}

export interface PortraitAISquareFaceFilterParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
}
export interface PortraitAISquareFaceFilterResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAISquareFaceFilterResponse extends BaseResponse<PortraitAISquareFaceFilterResponseData> {
}

export interface PortraitExpressionEditingAdvancedParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  expression: string; // expression | Expression. See [Supported expression values](/docs/ai-portrait/effects/emotion-editor-advanced/api#expression). Allowed values: natural_smile, bright_laugh, sweet_smile, happy_surprise, proud_smirk, laughing_with_tears, crazy_happy_face, overjoyed_screaming_laugh, slight_annoyance, angry_stare, gritted_teeth_anger, furious_shout, cold_glare, cartoon_rage_face, angry_puffed_cheeks, villain_angry_smirk, downcast_sadness, wronged_near_tears, tearful_sadness, heartbroken_breakdown, silent_grief, big_crying_face, puppy_eyes_sad, fake_crying_funny, tongue_out_playful, wink_cute, silly_face, mischievous_smirk, exaggerated_surprised_face, cross_eyed_silly_face, one_eye_squint_funny, duck_face_funny, crazy_tongue_face, slight_surprise, shocked_open_mouth, disbelief, fearful_surprise, jaw_drop_surprise, cartoon_shocked_face, speechless_shock, nervous_fear, terrified_expression, timid_withdrawal, panic_breakdown, screaming_fear_face, frozen_in_fear, panic_wide_eyes, mild_dislike, strong_aversion, nauseated_disgust, eye_roll_disgust, extreme_disgust_face, grossed_out_face, dramatic_eye_roll, shy_smile, blushing_shyness, awkward_forced_smile, socially_embarrassed, over_shy_blushing_face, awkward_sweat_smile, embarrassed_cover_mouth, confident_smile, dominant_gaze, cold_cool_expression, victorious_pride, super_confident_smirk, bossy_cool_face, winning_smug_face, slight_confusion, frowning_thought, not_understanding, suspicious_look, confused_tilted_face, what_are_you_doing_face, brain_loading_face, tired_blank_eyes, helpless_expression, awkward_silence, sleepy_yawn, dead_inside_face, exhausted_melting_face, speechless_blank_stare, charming_smile, flirty_eyebrow_raise, soft_lip_bite, dreamy_gaze, playful_seductive_smirk, wink_flirty_face, dramatic_lip_bite, gentle_gaze, fond_smile, sweet_pouting_affection, deep_affectionate_gaze, heart_eyes_expression, overly_sweet_affection, clingy_cute_pout, cold_contempt, sarcastic_sneer, dismissive_pout, in_control_expression, extreme_smug_face, mocking_laugh_face, looking_down_contempt, soft_cute_smile, cute_pout, innocent_big_eyes, expectant_sparkling_eyes, super_cute_pouting_face, sparkling_eyes_cute, baby_like_innocent_face, frowning_in_pain, holding_back_tears, crying_breakdown, repressed_exhaustion, dramatic_pain_face, holding_back_scream, overwhelmed_breakdown_face.
}
export interface PortraitExpressionEditingAdvancedResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitExpressionEditingAdvancedResponse extends BaseResponse<PortraitExpressionEditingAdvancedResponseData> {
}

export interface PortraitHairstyleEditingPremiumParams {
  image: FileInput; // image | Source image. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Larger than 200x200px, smaller than 4090x4090px. - Minimum Face Proportion: To ensure effectiveness, the proportion of the face in the image cannot be less than 10%. - Facial Integrity: To ensure effectiveness, the face in the image should ideally not be obscured. - Facial Angle: To ensure effectiveness, the face in the image should ideally be front-facing, with no more than a 30-degree rotation to the left or right.
  imageTemplate?: FileInput; // image_template | Reference image for hairstyle transfer. Provide this field or `hair_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Larger than 200x200px, smaller than 4090x4090px. - Minimum Face Proportion: To ensure effectiveness, the proportion of the face in the image cannot be less than 10%. - Facial Integrity: To ensure effectiveness, the face in the image should ideally not be obscured. - Facial Angle: To ensure effectiveness, the face in the image should ideally be front-facing, with no more than a 30-degree rotation to the left or right.
  hairStyle?: string; // hair_style | Built-in hairstyle preset. Provide this field or `image_template`. If both are provided, `hair_style` takes precedence. See [Supported hair_style values](/docs/ai-portrait/effects/hairstyle-editor-premium/api#hair_style). Allowed values: BuzzCut, UnderCut, Pompadour, SlickBack, CurlyShag, WavyShag, FauxHawk, Spiky, CombOver, HighTightFade, ManBun, Afro, LowFade, UndercutLongHair, TwoBlockHaircut, TexturedFringe, BluntBowlCut, LongWavyCurtainBangs, MessyTousled, CornrowBraids, LongHairTiedUp, Middle-parted, ManGreased, WavyMiddlePart, Natural_Side-Part, Wolf_Crop, Wind-Tousled_Crop, Side-Parted_Textured, FluffyMiddlePart, FreshSide-Parted, Smooth_Crop, Korean_Wavy_Crop, Comma_Hair, Side-Part_Crop, Natural_Middle_Part, ShortPixieWithShavedSides, ShortNeatBob, DoubleBun, Updo, Spiked, bowlCut, Chignon, PixieCut, SlickedBack, LongCurly, CurlyBob, StackedCurlsInShortBob, SidePartCombOverHairstyleWithHighFade, WavyFrenchBobVibesfrom1920, BobCut, ShortTwintails, ShortCurlyPixie, LongStraight, LongWavy, FishtailBraid, TwinBraids, Ponytail, Dreadlocks, Cornrows, ShoulderLengthHair, LooseCurlyAfro, LongTwintails, LongHimeCut, BoxBraids, Layered_Waves, Side_Flip_Perm, Textured_Crop, Mushroom_Curl, Vintage_Curls, Magic_Perm, Side-Parted_Waves, Fluffy_Short, Smooth_Inward_Bob, Neat_Short, Natural_Short, Chic_Tapered_Bob, Edgy_Textured_Pixie, Elegant_Wavy_Crop, Chic_Wavy_Pixie, Elegant_Side_Wave, Soft_Layered_Curl, Executive_Pixie, Curved_Chic_Bob, Airy_Short_Curls, Playful_Curly_Bob, Playful_Wavy_Bob, Elegant_Soft_Curl, Elegant_Smooth_Bob, Retro_Airy_Curl, Soft_Wavy_Bob, Light_Inward_Bob, Neat_Curly_Crop_Cut, Elegant_Volumized_Bob, Modern_Curls_Chic, Mocha_Volume_Pixie, Elegant_Side_Flow, Chestnut, ChoppyBangs, StructuredWavyShag, TinfoilPerm, ClassicWavyBob, Fluffy_Pixie_Cut, FrenchBangs, JapaneseShort, MediumLongLayered, male_hairstyle_0001, male_hairstyle_0002, male_hairstyle_0003, male_hairstyle_0004, male_hairstyle_0005, male_hairstyle_0006, male_hairstyle_0007, male_hairstyle_0008, male_hairstyle_0009, male_hairstyle_0010, male_hairstyle_0011, male_hairstyle_0012, male_hairstyle_0013, male_hairstyle_0014, male_hairstyle_0015, male_hairstyle_0016, male_hairstyle_0017, male_hairstyle_0018, male_hairstyle_0019, male_hairstyle_0020, male_hairstyle_0021, male_hairstyle_0022, male_hairstyle_0023, male_hairstyle_0024, male_hairstyle_0025, male_hairstyle_0026, male_hairstyle_0027, male_hairstyle_0028, male_hairstyle_0029, male_hairstyle_0030, male_hairstyle_0031, male_hairstyle_0032, male_hairstyle_0033, male_hairstyle_0034, male_hairstyle_0035, male_hairstyle_0036, male_hairstyle_0037, male_hairstyle_0038, male_hairstyle_0039, male_hairstyle_0040, male_hairstyle_0041, male_hairstyle_0042, male_hairstyle_0043, male_hairstyle_0044, male_hairstyle_0045, male_hairstyle_0046, male_hairstyle_0047, male_hairstyle_0048, male_hairstyle_0049, male_hairstyle_0050, male_hairstyle_0051, male_hairstyle_0052, male_hairstyle_0053, male_hairstyle_0054, male_hairstyle_0055, male_hairstyle_0056, male_hairstyle_0057, male_hairstyle_0058, male_hairstyle_0059, male_hairstyle_0060, male_hairstyle_0061, male_hairstyle_0062, female_hairstyle_0001, female_hairstyle_0002, female_hairstyle_0003, female_hairstyle_0004, female_hairstyle_0005, female_hairstyle_0006, female_hairstyle_0007, female_hairstyle_0008, female_hairstyle_0009, female_hairstyle_0010, female_hairstyle_0011, female_hairstyle_0012, female_hairstyle_0013, female_hairstyle_0014, female_hairstyle_0015, female_hairstyle_0016, female_hairstyle_0017, female_hairstyle_0018, female_hairstyle_0019, female_hairstyle_0020, female_hairstyle_0021, female_hairstyle_0022, female_hairstyle_0023, female_hairstyle_0024, female_hairstyle_0025, female_hairstyle_0026, female_hairstyle_0027, female_hairstyle_0028, female_hairstyle_0029, female_hairstyle_0030, female_hairstyle_0031, female_hairstyle_0032, female_hairstyle_0033, female_hairstyle_0034, female_hairstyle_0035, female_hairstyle_0036, female_hairstyle_0037, female_hairstyle_0038, female_hairstyle_0039, female_hairstyle_0040, female_hairstyle_0041, female_hairstyle_0042, female_hairstyle_0043, female_hairstyle_0044, female_hairstyle_0045, female_hairstyle_0046, female_hairstyle_0047, female_hairstyle_0048, female_hairstyle_0049, female_hairstyle_0050, female_hairstyle_0051, female_hairstyle_0052, female_hairstyle_0053, female_hairstyle_0054, female_hairstyle_0055, female_hairstyle_0056, female_hairstyle_0057, female_hairstyle_0058, female_hairstyle_0059, female_hairstyle_0060, female_hairstyle_0061, female_hairstyle_0062, female_hairstyle_0063, female_hairstyle_0064, female_hairstyle_0065, female_hairstyle_0066, female_hairstyle_0067, female_hairstyle_0068, female_hairstyle_0069, female_hairstyle_0070, female_hairstyle_0071, female_hairstyle_0072, female_hairstyle_0073.
  color?: string; // color | Hair color preset. `original` keeps the source image color. `reference` uses the hair color from `image_template`. See [Supported color values](/docs/ai-portrait/effects/hairstyle-editor-premium/api#color). Allowed values: original, reference, blonde, platinumBlonde, brown, lightBrown, blue, lightBlue, purple, lightPurple, pink, black, white, grey, silver, red, orange, green, gradient, multicolored, darkBlue, burgundy, darkGreen. Default: original.
}
export interface PortraitHairstyleEditingPremiumResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitHairstyleEditingPremiumResponse extends BaseResponse<PortraitHairstyleEditingPremiumResponseData> {
}

export interface PortraitAISkinEnhancementAdvancedParams {
  image: FileInput; // image | - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
  smartSkin?: string; // smart_skin | Smart all-in-one skin beautification. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  acneRemoval?: string; // acne_removal | Acne and blemish removal. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  spotCorrection?: string; // spot_correction | Spot and pigmentation correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  skinBrightening?: string; // skin_brightening | Skin brightening and tone enhancement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  skinSmoothing?: string; // skin_smoothing | Skin smoothing and refinement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  poreControl?: string; // pore_control | Pore and oil control. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  wrinkleReduction?: string; // wrinkle_reduction | Wrinkle and fine-line reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  underEyeCorrection?: string; // under_eye_correction | Under-eye correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
  scarReduction?: string; // scar_reduction | Scar and skin damage reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
}
export interface PortraitAISkinEnhancementAdvancedResponseData {
  request_id?: string; // request_id | Request ID for debugging.
  log_id?: string; // log_id | Log ID for debugging.
  error_detail?: Record<string, unknown>; // error_detail
  task_id?: string; // task_id | Task ID for querying [Querying Async Task Results](/docs/ai-common/async-task-results/api).
}
export interface PortraitAISkinEnhancementAdvancedResponse extends BaseResponse<PortraitAISkinEnhancementAdvancedResponseData> {
}

export const CommonQueryAsyncTaskResultParamMap: Record<string, string> = {
  "taskId": "task_id",
};

export const CommonQueryCreditsParamMap: Record<string, string> = {
};

export const CutoutClothingBackgroundRemovalParamMap: Record<string, string> = {
  "outMode": "out_mode",
  "clothClass": "cloth_class",
  "returnForm": "return_form",
};

export const CutoutProductBackgroundRemovalParamMap: Record<string, string> = {
  "returnForm": "return_form",
};

export const CutoutFoodBackgroundRemovalParamMap: Record<string, string> = {
  "returnForm": "return_form",
};

export const CutoutUniversalBackgroundRemovalParamMap: Record<string, string> = {
  "returnForm": "return_form",
};

export const CutoutAvatarExtractionParamMap: Record<string, string> = {
  "returnForm": "return_form",
};

export const CutoutHairExtractionParamMap: Record<string, string> = {
};

export const CutoutHumanBackgroundRemovalParamMap: Record<string, string> = {
  "returnForm": "return_form",
};

export const ImageQueryingAsyncTaskResultsParamMap: Record<string, string> = {
  "jobId": "job_id",
};

export const ImageAiImageExtenderParamMap: Record<string, string> = {
  "customPrompt": "custom_prompt",
  "maxHeight": "max_height",
  "maxWidth": "max_width",
};

export const ImageAiObjectReplacerParamMap: Record<string, string> = {
  "customPrompt": "custom_prompt",
};

export const ImageAIImageCroppingParamMap: Record<string, string> = {
};

export const ImageErasureParamMap: Record<string, string> = {
  "userMask": "user_mask",
};

export const ImageInvisibleImageWatermarkParamMap: Record<string, string> = {
  "functionType": "function_type",
  "originImage": "origin_image",
  "watermarkImage": "watermark_image",
  "outputFileType": "output_file_type",
  "qualityFactor": "quality_factor",
};

export const ImageInvisibleTextWatermarkParamMap: Record<string, string> = {
  "functionType": "function_type",
  "originImage": "origin_image",
  "watermarkImage": "watermark_image",
  "outputFileType": "output_file_type",
  "qualityFactor": "quality_factor",
};

export const ImageIntelligentCompositionParamMap: Record<string, string> = {
  "numBoxes": "num_boxes",
};

export const ImagePhotoEditingParamMap: Record<string, string> = {
};

export const ImageRemoveObjectsParamMap: Record<string, string> = {
};

export const ImageRemoveObjectsAdvancedParamMap: Record<string, string> = {
  "dilateSize": "dilate_size",
};

export const ImageRemoveObjectsProParamMap: Record<string, string> = {
};

export const ImageAICartoonGeneratorParamMap: Record<string, string> = {
  "taskType": "task_type",
};

export const ImageColoringParamMap: Record<string, string> = {
};

export const ImageStyleTransferParamMap: Record<string, string> = {
};

export const ImageStyleMigrationParamMap: Record<string, string> = {
};

export const ImageColorEnhancementParamMap: Record<string, string> = {
  "outputFormat": "output_format",
};

export const ImageContrastEnhancementParamMap: Record<string, string> = {
};

export const ImageDehazeParamMap: Record<string, string> = {
};

export const ImageLosslessEnlargementParamMap: Record<string, string> = {
  "upscaleFactor": "upscale_factor",
  "outputFormat": "output_format",
  "outputQuality": "output_quality",
};

export const ImageClarityEnhancementParamMap: Record<string, string> = {
};

export const ImageDistortionCorrectionParamMap: Record<string, string> = {
};

export const ImageCompositionAestheticsScoreParamMap: Record<string, string> = {
};

export const ImageExposureRatingParamMap: Record<string, string> = {
};

export const PortraitFaceAnalyzerParamMap: Record<string, string> = {
  "maxFaceNum": "max_face_num",
  "faceAttributesType": "face_attributes_type",
  "needRotateDetection": "need_rotate_detection",
};

export const PortraitFaceAnalyzerAdvancedParamMap: Record<string, string> = {
};

export const PortraitFacialLandmarksParamMap: Record<string, string> = {
  "maxFaceNum": "max_face_num",
  "faceField": "face_field",
};

export const PortraitSkinAnalysisBasicParamMap: Record<string, string> = {
};

export const PortraitSkinAnalysisAdvancedParamMap: Record<string, string> = {
  "faceQualityControl": "face_quality_control",
  "returnRectConfidence": "return_rect_confidence",
  "returnMaps": "return_maps",
};

export const PortraitSkinAnalysisProfessionalParamMap: Record<string, string> = {
  "leftSideImage": "left_side_image",
  "rightSideImage": "right_side_image",
  "returnMaps": "return_maps",
  "returnMarks": "return_marks",
  "roiOutlineColor": "roi_outline_color",
  "returnSideResults": "return_side_results",
};

export const PortraitSkinDiseaseDetectionParamMap: Record<string, string> = {
};

export const PortraitTryOnClothesParamMap: Record<string, string> = {
  "taskType": "task_type",
  "personImage": "person_image",
  "clothesImage": "clothes_image",
  "clothesType": "clothes_type",
};

export const PortraitTryOnClothesProParamMap: Record<string, string> = {
  "taskType": "task_type",
  "personImage": "person_image",
  "topGarment": "top_garment",
  "bottomGarment": "bottom_garment",
  "restoreFace": "restore_face",
};

export const PortraitFacialBlurringParamMap: Record<string, string> = {
};

export const PortraitExpressionEditingParamMap: Record<string, string> = {
  "imageTarget": "image_target",
  "serviceChoice": "service_choice",
};

export const PortraitFaceRestorationEnhancementParamMap: Record<string, string> = {
};

export const PortraitFaceAttributeEditingParamMap: Record<string, string> = {
  "actionType": "action_type",
  "qualityControl": "quality_control",
  "faceLocation": "face_location",
};

export const PortraitFacialBeautificationParamMap: Record<string, string> = {
};

export const PortraitFacialBeautificationAdvancedParamMap: Record<string, string> = {
  "faceLifting": "face_lifting",
  "eyeEnlarging": "eye_enlarging",
};

export const PortraitFacialBeautificationProParamMap: Record<string, string> = {
  "shrinkFace": "shrink_face",
  "enlargeEye": "enlarge_eye",
  "removeEyebrow": "remove_eyebrow",
  "filterType": "filter_type",
  "taskType": "task_type",
};

export const PortraitFacialFiltersParamMap: Record<string, string> = {
  "resourceType": "resource_type",
};

export const PortraitFaceFusionParamMap: Record<string, string> = {
  "imageTarget": "image_target",
  "imageTemplate": "image_template",
  "sourceSimilarity": "source_similarity",
};

export const PortraitHairstyleEditingParamMap: Record<string, string> = {
  "imageTarget": "image_target",
  "hairType": "hair_type",
};

export const PortraitHairstyleEditingProParamMap: Record<string, string> = {
  "taskType": "task_type",
  "hairStyle": "hair_style",
  "imageSize": "image_size",
};

export const PortraitLipsColorChangerParamMap: Record<string, string> = {
  "lipColorInfos": "lip_color_infos",
};

export const PortraitLivePhotosParamMap: Record<string, string> = {
  "imageTarget": "image_target",
};

export const PortraitCartoonYourselfParamMap: Record<string, string> = {
};

export const PortraitIntelligentBeautificationParamMap: Record<string, string> = {
  "imageTarget": "image_target",
  "multiFace": "multi_face",
  "beautyLevel": "beauty_level",
  "taskType": "task_type",
};

export const PortraitIntelligentFaceSlimmingParamMap: Record<string, string> = {
  "slimDegree": "slim_degree",
};

export const PortraitIntelligentSkinRetouchingParamMap: Record<string, string> = {
  "retouchDegree": "retouch_degree",
  "whiteningDegree": "whitening_degree",
};

export const PortraitTryOnClothesRefinerParamMap: Record<string, string> = {
  "taskType": "task_type",
  "personImage": "person_image",
  "topGarment": "top_garment",
  "coarseImage": "coarse_image",
  "bottomGarment": "bottom_garment",
};

export const CutoutHDUniversalBackgroundRemovalParamMap: Record<string, string> = {
};

export const CutoutHdHumanBodyBackgroundRemovalParamMap: Record<string, string> = {
};

export const ImageAINailArtParamMap: Record<string, string> = {
  "nailName": "nail_name",
  "nailDesc": "nail_desc",
};

export const ImageAINailArtProParamMap: Record<string, string> = {
  "referenceImage": "reference_image",
};

export const ImageAIPhotographyParamMap: Record<string, string> = {
  "styleTitle": "style_title",
  "styleDesc": "style_desc",
  "imageSize": "image_size",
};

export const ImageAIEmojiGeneratorParamMap: Record<string, string> = {
};

export const ImagePhotoToColoringPageParamMap: Record<string, string> = {
  "imageSize": "image_size",
};

export const ImageAIFlowerWallpaperParamMap: Record<string, string> = {
  "flowerElements": "flower_elements",
  "aspectRatio": "aspect_ratio",
};

export const PortraitAIFaceRatingParamMap: Record<string, string> = {
  "aspectRatio": "aspect_ratio",
};

export const PortraitAIBaldParamMap: Record<string, string> = {
};

export const PortraitAIBeardRemovalParamMap: Record<string, string> = {
};

export const PortraitAIBeardStylingParamMap: Record<string, string> = {
  "imageTemplate": "image_template",
};

export const PortraitAIBreastExpansionParamMap: Record<string, string> = {
  "taskType": "task_type",
  "personImage": "person_image",
};

export const PortraitAIButtEnhancementParamMap: Record<string, string> = {
};

export const PortraitAIColoredContactsParamMap: Record<string, string> = {
};

export const PortraitAIEyebrowsParamMap: Record<string, string> = {
  "referenceImage": "reference_image",
};

export const PortraitAIEyelashesParamMap: Record<string, string> = {
};

export const PortraitAIEyeshadowTryOnParamMap: Record<string, string> = {
  "eyeshadowStyle": "eyeshadow_style",
  "imageTemplate": "image_template",
  "aspectRatio": "aspect_ratio",
};

export const PortraitAIFaceSwapParamMap: Record<string, string> = {
  "imageTarget": "image_target",
  "imageTemplate": "image_template",
};

export const PortraitAIFatFilterParamMap: Record<string, string> = {
};

export const PortraitAIHairColorParamMap: Record<string, string> = {
};

export const PortraitAIHairLossSimulationParamMap: Record<string, string> = {
};

export const PortraitAILipEnhancementParamMap: Record<string, string> = {
};

export const PortraitAIWaistSlimmingParamMap: Record<string, string> = {
};

export const PortraitTryOnClothesPremiumParamMap: Record<string, string> = {
  "taskType": "task_type",
  "personImage": "person_image",
  "topGarment": "top_garment",
  "restoreFace": "restore_face",
  "bottomGarment": "bottom_garment",
};

export const PortraitAIBigHeadEffectParamMap: Record<string, string> = {
};

export const PortraitAIHalloweenMaskParamMap: Record<string, string> = {
  "maskStyle": "mask_style",
  "imageTemplate": "image_template",
  "aspectRatio": "aspect_ratio",
};

export const PortraitAILipBiteExpressionsParamMap: Record<string, string> = {
  "gridCount": "grid_count",
  "aspectRatio": "aspect_ratio",
};

export const PortraitAIRedLipGlossParamMap: Record<string, string> = {
};

export const PortraitAISquareFaceFilterParamMap: Record<string, string> = {
};

export const PortraitExpressionEditingAdvancedParamMap: Record<string, string> = {
};

export const PortraitHairstyleEditingPremiumParamMap: Record<string, string> = {
  "imageTemplate": "image_template",
  "hairStyle": "hair_style",
};

export const PortraitAISkinEnhancementAdvancedParamMap: Record<string, string> = {
  "smartSkin": "smart_skin",
  "acneRemoval": "acne_removal",
  "spotCorrection": "spot_correction",
  "skinBrightening": "skin_brightening",
  "skinSmoothing": "skin_smoothing",
  "poreControl": "pore_control",
  "wrinkleReduction": "wrinkle_reduction",
  "underEyeCorrection": "under_eye_correction",
  "scarReduction": "scar_reduction",
};

export function validateCommonQueryAsyncTaskResultParams(params: CommonQueryAsyncTaskResultParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskId === undefined || params.taskId === null) throw new Error("Missing required param: taskId");
}

export function validateCommonQueryCreditsParams(params: CommonQueryCreditsParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
}

export function validateCutoutClothingBackgroundRemovalParams(params: CutoutClothingBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutProductBackgroundRemovalParams(params: CutoutProductBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutFoodBackgroundRemovalParams(params: CutoutFoodBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutUniversalBackgroundRemovalParams(params: CutoutUniversalBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutAvatarExtractionParams(params: CutoutAvatarExtractionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutHairExtractionParams(params: CutoutHairExtractionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutHumanBackgroundRemovalParams(params: CutoutHumanBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageQueryingAsyncTaskResultsParams(params: ImageQueryingAsyncTaskResultsParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.jobId === undefined || params.jobId === null) throw new Error("Missing required param: jobId");
  if (params.type === undefined || params.type === null) throw new Error("Missing required param: type");
}

export function validateImageAiImageExtenderParams(params: ImageAiImageExtenderParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.mask !== undefined && params.mask !== null && !isFileInput(params.mask)) throw new Error("Invalid file param: mask");
}

export function validateImageAiObjectReplacerParams(params: ImageAiObjectReplacerParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.mask === undefined || params.mask === null) throw new Error("Missing required param: mask");
  if (params.mask !== undefined && params.mask !== null && !isFileInput(params.mask)) throw new Error("Invalid file param: mask");
}

export function validateImageAIImageCroppingParams(params: ImageAIImageCroppingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.width === undefined || params.width === null) throw new Error("Missing required param: width");
  if (params.height === undefined || params.height === null) throw new Error("Missing required param: height");
}

export function validateImageErasureParams(params: ImageErasureParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.userMask === undefined || params.userMask === null) throw new Error("Missing required param: userMask");
  if (params.userMask !== undefined && params.userMask !== null && !isFileInput(params.userMask)) throw new Error("Invalid file param: userMask");
}

export function validateImageInvisibleImageWatermarkParams(params: ImageInvisibleImageWatermarkParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.functionType === undefined || params.functionType === null) throw new Error("Missing required param: functionType");
  if (params.originImage !== undefined && params.originImage !== null && !isFileInput(params.originImage)) throw new Error("Invalid file param: originImage");
  if (params.logo !== undefined && params.logo !== null && !isFileInput(params.logo)) throw new Error("Invalid file param: logo");
  if (params.watermarkImage !== undefined && params.watermarkImage !== null && !isFileInput(params.watermarkImage)) throw new Error("Invalid file param: watermarkImage");
}

export function validateImageInvisibleTextWatermarkParams(params: ImageInvisibleTextWatermarkParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.functionType === undefined || params.functionType === null) throw new Error("Missing required param: functionType");
  if (params.originImage !== undefined && params.originImage !== null && !isFileInput(params.originImage)) throw new Error("Invalid file param: originImage");
  if (params.watermarkImage !== undefined && params.watermarkImage !== null && !isFileInput(params.watermarkImage)) throw new Error("Invalid file param: watermarkImage");
}

export function validateImageIntelligentCompositionParams(params: ImageIntelligentCompositionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImagePhotoEditingParams(params: ImagePhotoEditingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.style === undefined || params.style === null) throw new Error("Missing required param: style");
  if (params.style !== undefined && params.style !== null && !isFileInput(params.style)) throw new Error("Invalid file param: style");
}

export function validateImageRemoveObjectsParams(params: ImageRemoveObjectsParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.mask === undefined || params.mask === null) throw new Error("Missing required param: mask");
  if (params.mask !== undefined && params.mask !== null && !isFileInput(params.mask)) throw new Error("Invalid file param: mask");
}

export function validateImageRemoveObjectsAdvancedParams(params: ImageRemoveObjectsAdvancedParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.mask === undefined || params.mask === null) throw new Error("Missing required param: mask");
  if (params.mask !== undefined && params.mask !== null && !isFileInput(params.mask)) throw new Error("Invalid file param: mask");
}

export function validateImageRemoveObjectsProParams(params: ImageRemoveObjectsProParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.mask === undefined || params.mask === null) throw new Error("Missing required param: mask");
  if (params.mask !== undefined && params.mask !== null && !isFileInput(params.mask)) throw new Error("Invalid file param: mask");
}

export function validateImageAICartoonGeneratorParams(params: ImageAICartoonGeneratorParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskType === undefined || params.taskType === null) throw new Error("Missing required param: taskType");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.type === undefined || params.type === null) throw new Error("Missing required param: type");
}

export function validateImageColoringParams(params: ImageColoringParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageStyleTransferParams(params: ImageStyleTransferParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.option === undefined || params.option === null) throw new Error("Missing required param: option");
}

export function validateImageStyleMigrationParams(params: ImageStyleMigrationParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.style === undefined || params.style === null) throw new Error("Missing required param: style");
  if (params.style !== undefined && params.style !== null && !isFileInput(params.style)) throw new Error("Invalid file param: style");
  if (params.major === undefined || params.major === null) throw new Error("Missing required param: major");
  if (params.major !== undefined && params.major !== null && !isFileInput(params.major)) throw new Error("Invalid file param: major");
}

export function validateImageColorEnhancementParams(params: ImageColorEnhancementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.outputFormat === undefined || params.outputFormat === null) throw new Error("Missing required param: outputFormat");
  if (params.mode === undefined || params.mode === null) throw new Error("Missing required param: mode");
}

export function validateImageContrastEnhancementParams(params: ImageContrastEnhancementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageDehazeParams(params: ImageDehazeParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageLosslessEnlargementParams(params: ImageLosslessEnlargementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageClarityEnhancementParams(params: ImageClarityEnhancementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageDistortionCorrectionParams(params: ImageDistortionCorrectionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageCompositionAestheticsScoreParams(params: ImageCompositionAestheticsScoreParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageExposureRatingParams(params: ImageExposureRatingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitFaceAnalyzerParams(params: PortraitFaceAnalyzerParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitFaceAnalyzerAdvancedParams(params: PortraitFaceAnalyzerAdvancedParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitFacialLandmarksParams(params: PortraitFacialLandmarksParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitSkinAnalysisBasicParams(params: PortraitSkinAnalysisBasicParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitSkinAnalysisAdvancedParams(params: PortraitSkinAnalysisAdvancedParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitSkinAnalysisProfessionalParams(params: PortraitSkinAnalysisProfessionalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.leftSideImage !== undefined && params.leftSideImage !== null && !isFileInput(params.leftSideImage)) throw new Error("Invalid file param: leftSideImage");
  if (params.rightSideImage !== undefined && params.rightSideImage !== null && !isFileInput(params.rightSideImage)) throw new Error("Invalid file param: rightSideImage");
}

export function validatePortraitSkinDiseaseDetectionParams(params: PortraitSkinDiseaseDetectionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitTryOnClothesParams(params: PortraitTryOnClothesParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskType === undefined || params.taskType === null) throw new Error("Missing required param: taskType");
  if (params.personImage === undefined || params.personImage === null) throw new Error("Missing required param: personImage");
  if (params.personImage !== undefined && params.personImage !== null && !isFileInput(params.personImage)) throw new Error("Invalid file param: personImage");
  if (params.clothesImage === undefined || params.clothesImage === null) throw new Error("Missing required param: clothesImage");
  if (params.clothesImage !== undefined && params.clothesImage !== null && !isFileInput(params.clothesImage)) throw new Error("Invalid file param: clothesImage");
  if (params.clothesType === undefined || params.clothesType === null) throw new Error("Missing required param: clothesType");
}

export function validatePortraitTryOnClothesProParams(params: PortraitTryOnClothesProParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskType === undefined || params.taskType === null) throw new Error("Missing required param: taskType");
  if (params.personImage === undefined || params.personImage === null) throw new Error("Missing required param: personImage");
  if (params.personImage !== undefined && params.personImage !== null && !isFileInput(params.personImage)) throw new Error("Invalid file param: personImage");
  if (params.topGarment === undefined || params.topGarment === null) throw new Error("Missing required param: topGarment");
  if (params.topGarment !== undefined && params.topGarment !== null && !isFileInput(params.topGarment)) throw new Error("Invalid file param: topGarment");
  if (params.bottomGarment !== undefined && params.bottomGarment !== null && !isFileInput(params.bottomGarment)) throw new Error("Invalid file param: bottomGarment");
}

export function validatePortraitFacialBlurringParams(params: PortraitFacialBlurringParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitExpressionEditingParams(params: PortraitExpressionEditingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.imageTarget === undefined || params.imageTarget === null) throw new Error("Missing required param: imageTarget");
  if (params.imageTarget !== undefined && params.imageTarget !== null && !isFileInput(params.imageTarget)) throw new Error("Invalid file param: imageTarget");
  if (params.serviceChoice === undefined || params.serviceChoice === null) throw new Error("Missing required param: serviceChoice");
}

export function validatePortraitFaceRestorationEnhancementParams(params: PortraitFaceRestorationEnhancementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitFaceAttributeEditingParams(params: PortraitFaceAttributeEditingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.actionType === undefined || params.actionType === null) throw new Error("Missing required param: actionType");
}

export function validatePortraitFacialBeautificationParams(params: PortraitFacialBeautificationParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.sharp === undefined || params.sharp === null) throw new Error("Missing required param: sharp");
  if (params.smooth === undefined || params.smooth === null) throw new Error("Missing required param: smooth");
  if (params.white === undefined || params.white === null) throw new Error("Missing required param: white");
}

export function validatePortraitFacialBeautificationAdvancedParams(params: PortraitFacialBeautificationAdvancedParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitFacialBeautificationProParams(params: PortraitFacialBeautificationProParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitFacialFiltersParams(params: PortraitFacialFiltersParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.resourceType === undefined || params.resourceType === null) throw new Error("Missing required param: resourceType");
  if (params.strength === undefined || params.strength === null) throw new Error("Missing required param: strength");
}

export function validatePortraitFaceFusionParams(params: PortraitFaceFusionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.imageTarget === undefined || params.imageTarget === null) throw new Error("Missing required param: imageTarget");
  if (params.imageTarget !== undefined && params.imageTarget !== null && !isFileInput(params.imageTarget)) throw new Error("Invalid file param: imageTarget");
  if (params.imageTemplate === undefined || params.imageTemplate === null) throw new Error("Missing required param: imageTemplate");
  if (params.imageTemplate !== undefined && params.imageTemplate !== null && !isFileInput(params.imageTemplate)) throw new Error("Invalid file param: imageTemplate");
}

export function validatePortraitHairstyleEditingParams(params: PortraitHairstyleEditingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.imageTarget === undefined || params.imageTarget === null) throw new Error("Missing required param: imageTarget");
  if (params.imageTarget !== undefined && params.imageTarget !== null && !isFileInput(params.imageTarget)) throw new Error("Invalid file param: imageTarget");
}

export function validatePortraitHairstyleEditingProParams(params: PortraitHairstyleEditingProParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskType === undefined || params.taskType === null) throw new Error("Missing required param: taskType");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.hairStyle === undefined || params.hairStyle === null) throw new Error("Missing required param: hairStyle");
  if (params.mask !== undefined && params.mask !== null && !isFileInput(params.mask)) throw new Error("Invalid file param: mask");
}

export function validatePortraitLipsColorChangerParams(params: PortraitLipsColorChangerParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.lipColorInfos === undefined || params.lipColorInfos === null) throw new Error("Missing required param: lipColorInfos");
}

export function validatePortraitLivePhotosParams(params: PortraitLivePhotosParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.imageTarget === undefined || params.imageTarget === null) throw new Error("Missing required param: imageTarget");
  if (params.imageTarget !== undefined && params.imageTarget !== null && !isFileInput(params.imageTarget)) throw new Error("Invalid file param: imageTarget");
}

export function validatePortraitCartoonYourselfParams(params: PortraitCartoonYourselfParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.type === undefined || params.type === null) throw new Error("Missing required param: type");
}

export function validatePortraitIntelligentBeautificationParams(params: PortraitIntelligentBeautificationParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.imageTarget === undefined || params.imageTarget === null) throw new Error("Missing required param: imageTarget");
  if (params.imageTarget !== undefined && params.imageTarget !== null && !isFileInput(params.imageTarget)) throw new Error("Invalid file param: imageTarget");
}

export function validatePortraitIntelligentFaceSlimmingParams(params: PortraitIntelligentFaceSlimmingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitIntelligentSkinRetouchingParams(params: PortraitIntelligentSkinRetouchingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitTryOnClothesRefinerParams(params: PortraitTryOnClothesRefinerParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskType === undefined || params.taskType === null) throw new Error("Missing required param: taskType");
  if (params.personImage === undefined || params.personImage === null) throw new Error("Missing required param: personImage");
  if (params.personImage !== undefined && params.personImage !== null && !isFileInput(params.personImage)) throw new Error("Invalid file param: personImage");
  if (params.topGarment === undefined || params.topGarment === null) throw new Error("Missing required param: topGarment");
  if (params.topGarment !== undefined && params.topGarment !== null && !isFileInput(params.topGarment)) throw new Error("Invalid file param: topGarment");
  if (params.coarseImage === undefined || params.coarseImage === null) throw new Error("Missing required param: coarseImage");
  if (params.coarseImage !== undefined && params.coarseImage !== null && !isFileInput(params.coarseImage)) throw new Error("Invalid file param: coarseImage");
  if (params.gender === undefined || params.gender === null) throw new Error("Missing required param: gender");
  if (params.bottomGarment !== undefined && params.bottomGarment !== null && !isFileInput(params.bottomGarment)) throw new Error("Invalid file param: bottomGarment");
}

export function validateCutoutHDUniversalBackgroundRemovalParams(params: CutoutHDUniversalBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateCutoutHdHumanBodyBackgroundRemovalParams(params: CutoutHdHumanBodyBackgroundRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageAINailArtParams(params: ImageAINailArtParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.nailName === undefined || params.nailName === null) throw new Error("Missing required param: nailName");
  if (params.nailDesc === undefined || params.nailDesc === null) throw new Error("Missing required param: nailDesc");
}

export function validateImageAINailArtProParams(params: ImageAINailArtProParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.referenceImage === undefined || params.referenceImage === null) throw new Error("Missing required param: referenceImage");
  if (params.referenceImage !== undefined && params.referenceImage !== null && !isFileInput(params.referenceImage)) throw new Error("Invalid file param: referenceImage");
}

export function validateImageAIPhotographyParams(params: ImageAIPhotographyParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.styleTitle === undefined || params.styleTitle === null) throw new Error("Missing required param: styleTitle");
  if (params.styleDesc === undefined || params.styleDesc === null) throw new Error("Missing required param: styleDesc");
}

export function validateImageAIEmojiGeneratorParams(params: ImageAIEmojiGeneratorParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.expression === undefined || params.expression === null) throw new Error("Missing required param: expression");
  if (params.style === undefined || params.style === null) throw new Error("Missing required param: style");
  if (params.scene === undefined || params.scene === null) throw new Error("Missing required param: scene");
}

export function validateImagePhotoToColoringPageParams(params: ImagePhotoToColoringPageParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validateImageAIFlowerWallpaperParams(params: ImageAIFlowerWallpaperParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
}

export function validatePortraitAIFaceRatingParams(params: PortraitAIFaceRatingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIBaldParams(params: PortraitAIBaldParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIBeardRemovalParams(params: PortraitAIBeardRemovalParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIBeardStylingParams(params: PortraitAIBeardStylingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.imageTemplate !== undefined && params.imageTemplate !== null && !isFileInput(params.imageTemplate)) throw new Error("Invalid file param: imageTemplate");
  if ((params.beard === undefined || params.beard === null) && (params.imageTemplate === undefined || params.imageTemplate === null)) throw new Error("At least one of beard, imageTemplate is required");
}

export function validatePortraitAIBreastExpansionParams(params: PortraitAIBreastExpansionParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.personImage === undefined || params.personImage === null) throw new Error("Missing required param: personImage");
  if (params.personImage !== undefined && params.personImage !== null && !isFileInput(params.personImage)) throw new Error("Invalid file param: personImage");
}

export function validatePortraitAIButtEnhancementParams(params: PortraitAIButtEnhancementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIColoredContactsParams(params: PortraitAIColoredContactsParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIEyebrowsParams(params: PortraitAIEyebrowsParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.referenceImage === undefined || params.referenceImage === null) throw new Error("Missing required param: referenceImage");
  if (params.referenceImage !== undefined && params.referenceImage !== null && !isFileInput(params.referenceImage)) throw new Error("Invalid file param: referenceImage");
}

export function validatePortraitAIEyelashesParams(params: PortraitAIEyelashesParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIEyeshadowTryOnParams(params: PortraitAIEyeshadowTryOnParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.imageTemplate !== undefined && params.imageTemplate !== null && !isFileInput(params.imageTemplate)) throw new Error("Invalid file param: imageTemplate");
  if ((params.eyeshadowStyle === undefined || params.eyeshadowStyle === null) && (params.imageTemplate === undefined || params.imageTemplate === null)) throw new Error("At least one of eyeshadowStyle, imageTemplate is required");
}

export function validatePortraitAIFaceSwapParams(params: PortraitAIFaceSwapParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.imageTarget === undefined || params.imageTarget === null) throw new Error("Missing required param: imageTarget");
  if (params.imageTarget !== undefined && params.imageTarget !== null && !isFileInput(params.imageTarget)) throw new Error("Invalid file param: imageTarget");
  if (params.imageTemplate === undefined || params.imageTemplate === null) throw new Error("Missing required param: imageTemplate");
  if (params.imageTemplate !== undefined && params.imageTemplate !== null && !isFileInput(params.imageTemplate)) throw new Error("Invalid file param: imageTemplate");
}

export function validatePortraitAIFatFilterParams(params: PortraitAIFatFilterParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIHairColorParams(params: PortraitAIHairColorParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIHairLossSimulationParams(params: PortraitAIHairLossSimulationParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.level === undefined || params.level === null) throw new Error("Missing required param: level");
}

export function validatePortraitAILipEnhancementParams(params: PortraitAILipEnhancementParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIWaistSlimmingParams(params: PortraitAIWaistSlimmingParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitTryOnClothesPremiumParams(params: PortraitTryOnClothesPremiumParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.taskType === undefined || params.taskType === null) throw new Error("Missing required param: taskType");
  if (params.personImage === undefined || params.personImage === null) throw new Error("Missing required param: personImage");
  if (params.personImage !== undefined && params.personImage !== null && !isFileInput(params.personImage)) throw new Error("Invalid file param: personImage");
  if (params.topGarment === undefined || params.topGarment === null) throw new Error("Missing required param: topGarment");
  if (params.topGarment !== undefined && params.topGarment !== null && !isFileInput(params.topGarment)) throw new Error("Invalid file param: topGarment");
  if (params.bottomGarment !== undefined && params.bottomGarment !== null && !isFileInput(params.bottomGarment)) throw new Error("Invalid file param: bottomGarment");
}

export function validatePortraitAIBigHeadEffectParams(params: PortraitAIBigHeadEffectParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIHalloweenMaskParams(params: PortraitAIHalloweenMaskParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.imageTemplate !== undefined && params.imageTemplate !== null && !isFileInput(params.imageTemplate)) throw new Error("Invalid file param: imageTemplate");
  if ((params.maskStyle === undefined || params.maskStyle === null) && (params.imageTemplate === undefined || params.imageTemplate === null)) throw new Error("At least one of maskStyle, imageTemplate is required");
}

export function validatePortraitAILipBiteExpressionsParams(params: PortraitAILipBiteExpressionsParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAIRedLipGlossParams(params: PortraitAIRedLipGlossParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitAISquareFaceFilterParams(params: PortraitAISquareFaceFilterParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

export function validatePortraitExpressionEditingAdvancedParams(params: PortraitExpressionEditingAdvancedParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.expression === undefined || params.expression === null) throw new Error("Missing required param: expression");
}

export function validatePortraitHairstyleEditingPremiumParams(params: PortraitHairstyleEditingPremiumParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
  if (params.imageTemplate !== undefined && params.imageTemplate !== null && !isFileInput(params.imageTemplate)) throw new Error("Invalid file param: imageTemplate");
  if ((params.hairStyle === undefined || params.hairStyle === null) && (params.imageTemplate === undefined || params.imageTemplate === null)) throw new Error("At least one of hairStyle, imageTemplate is required");
}

export function validatePortraitAISkinEnhancementAdvancedParams(params: PortraitAISkinEnhancementAdvancedParams): void {
  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");
  if (params.image === undefined || params.image === null) throw new Error("Missing required param: image");
  if (params.image !== undefined && params.image !== null && !isFileInput(params.image)) throw new Error("Invalid file param: image");
}

