// GENERATED FROM packages/spec.json. DO NOT EDIT BY HAND.

import '../file_input.dart';
import '../models.dart';

final class CommonQueryAsyncTaskResultParams {
  const CommonQueryAsyncTaskResultParams({
    required this.taskId,
  });

  /// The task_id returned by the asynchronous API.
  final String taskId;

  Map<String, Object?> toMap() => {
        "task_id": taskId,
      };
}

final class CommonQueryAsyncTaskResultResponseData {
  const CommonQueryAsyncTaskResultResponseData({
    this.taskStatus,
  });

  factory CommonQueryAsyncTaskResultResponseData.fromJson(JsonMap json) =>
      CommonQueryAsyncTaskResultResponseData(
        taskStatus: (json["task_status"] as num?)?.toInt(),
      );

  /// Asynchronous task status. 0: The task is queued. 1: Asynchronous processing. 2: Processing was successful.
  final int? taskStatus;
}

typedef CommonQueryAsyncTaskResultResponse
    = AILabResponse<CommonQueryAsyncTaskResultResponseData>;

final class CommonQueryCreditsParams {
  const CommonQueryCreditsParams();

  Map<String, Object?> toMap() => const {};
}

final class CommonQueryCreditsResponseData {
  const CommonQueryCreditsResponseData({
    this.uniqueSign,
    this.name,
    this.balance,
    this.total,
    this.lastRechargeBalance,
    this.balanceWarning,
    this.firstBuyTime,
    this.lastUpdateTime,
  });

  factory CommonQueryCreditsResponseData.fromJson(JsonMap json) =>
      CommonQueryCreditsResponseData(
        uniqueSign: json["unique_sign"]?.toString(),
        name: json["name"]?.toString(),
        balance: (json["balance"] as num?)?.toDouble(),
        total: (json["total"] as num?)?.toDouble(),
        lastRechargeBalance:
            (json["last_recharge_balance"] as num?)?.toDouble(),
        balanceWarning: (json["balance_warning"] as num?)?.toDouble(),
        firstBuyTime: (json["first_buy_time"] as num?)?.toInt(),
        lastUpdateTime: (json["last_update_time"] as num?)?.toInt(),
      );

  /// Unique identification.
  final String? uniqueSign;

  /// Name.
  final String? name;

  /// Credit Balance.
  final double? balance;

  /// Total Credits.
  final double? total;

  /// Balance after last purchase.
  final double? lastRechargeBalance;

  /// Credit Balance Early Warning Value.
  final double? balanceWarning;

  /// Time of first purchase.
  final int? firstBuyTime;

  /// Last update time.
  final int? lastUpdateTime;
}

typedef CommonQueryCreditsResponse
    = AILabResponse<List<CommonQueryCreditsResponseData>>;

final class CutoutClothingBackgroundRemovalParams {
  const CutoutClothingBackgroundRemovalParams({
    required this.image,
    this.outMode,
    this.clothClass,
    this.returnForm,
  });

  final AILabFile image;

  /// 0
  final int? outMode;

  /// Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat.
  final String? clothClass;

  /// Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned.
  final String? returnForm;

  Map<String, Object?> toMap() => {
        "image": image,
        "out_mode": outMode,
        "cloth_class": clothClass,
        "return_form": returnForm,
      };
}

final class CutoutClothingBackgroundRemovalResponseData {
  const CutoutClothingBackgroundRemovalResponseData({
    this.elements,
    this.imageUrl,
    this.classUrl,
    this.tops,
    this.coat,
    this.skirt,
    this.pants,
    this.bag,
    this.shoes,
    this.hat,
  });

  factory CutoutClothingBackgroundRemovalResponseData.fromJson(JsonMap json) =>
      CutoutClothingBackgroundRemovalResponseData(
        elements: json["elements"] is List
            ? List<Object?>.from(json["elements"] as List)
            : null,
        imageUrl: json["image_url"]?.toString(),
        classUrl:
            json["class_url"] is JsonMap ? json["class_url"] as JsonMap : null,
        tops: json["tops"]?.toString(),
        coat: json["coat"]?.toString(),
        skirt: json["skirt"]?.toString(),
        pants: json["pants"]?.toString(),
        bag: json["bag"]?.toString(),
        shoes: json["shoes"]?.toString(),
        hat: json["hat"]?.toString(),
      );

  /// Returns an array of elements.
  final List<Object?>? elements;

  /// Returns the keying result image URL address.
  final String? imageUrl;

  /// Return the URL corresponding to the clothing category based on the input cloth_class.
  final JsonMap? classUrl;

  /// Tops URL.
  final String? tops;

  /// Coat URL.
  final String? coat;

  /// Skirt URL.
  final String? skirt;

  /// Pants URL.
  final String? pants;

  /// Bag URL.
  final String? bag;

  /// Shoes URL.
  final String? shoes;

  /// Hat URL.
  final String? hat;
}

typedef CutoutClothingBackgroundRemovalResponse
    = AILabResponse<CutoutClothingBackgroundRemovalResponseData>;

final class CutoutProductBackgroundRemovalParams {
  const CutoutProductBackgroundRemovalParams({
    required this.image,
    this.returnForm,
  });

  final AILabFile image;

  /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
  final String? returnForm;

  Map<String, Object?> toMap() => {
        "image": image,
        "return_form": returnForm,
      };
}

final class CutoutProductBackgroundRemovalResponseData {
  const CutoutProductBackgroundRemovalResponseData({
    this.imageUrl,
  });

  factory CutoutProductBackgroundRemovalResponseData.fromJson(JsonMap json) =>
      CutoutProductBackgroundRemovalResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef CutoutProductBackgroundRemovalResponse
    = AILabResponse<CutoutProductBackgroundRemovalResponseData>;

final class CutoutFoodBackgroundRemovalParams {
  const CutoutFoodBackgroundRemovalParams({
    required this.image,
    this.returnForm,
  });

  final AILabFile image;

  /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image.
  final String? returnForm;

  Map<String, Object?> toMap() => {
        "image": image,
        "return_form": returnForm,
      };
}

final class CutoutFoodBackgroundRemovalResponseData {
  const CutoutFoodBackgroundRemovalResponseData({
    this.imageUrl,
  });

  factory CutoutFoodBackgroundRemovalResponseData.fromJson(JsonMap json) =>
      CutoutFoodBackgroundRemovalResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef CutoutFoodBackgroundRemovalResponse
    = AILabResponse<CutoutFoodBackgroundRemovalResponseData>;

final class CutoutUniversalBackgroundRemovalParams {
  const CutoutUniversalBackgroundRemovalParams({
    required this.image,
    this.returnForm,
  });

  final AILabFile image;

  /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
  final String? returnForm;

  Map<String, Object?> toMap() => {
        "image": image,
        "return_form": returnForm,
      };
}

final class CutoutUniversalBackgroundRemovalResponseData {
  const CutoutUniversalBackgroundRemovalResponseData({
    this.imageUrl,
  });

  factory CutoutUniversalBackgroundRemovalResponseData.fromJson(JsonMap json) =>
      CutoutUniversalBackgroundRemovalResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef CutoutUniversalBackgroundRemovalResponse
    = AILabResponse<CutoutUniversalBackgroundRemovalResponseData>;

final class CutoutAvatarExtractionParams {
  const CutoutAvatarExtractionParams({
    required this.image,
    this.returnForm,
  });

  final AILabFile image;

  /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask.
  final String? returnForm;

  Map<String, Object?> toMap() => {
        "image": image,
        "return_form": returnForm,
      };
}

final class CutoutAvatarExtractionResponseData {
  const CutoutAvatarExtractionResponseData({
    this.elements,
    this.imageUrl,
    this.width,
    this.height,
    this.x,
    this.y,
  });

  factory CutoutAvatarExtractionResponseData.fromJson(JsonMap json) =>
      CutoutAvatarExtractionResponseData(
        elements: json["elements"] is List
            ? List<Object?>.from(json["elements"] as List)
            : null,
        imageUrl: json["image_url"]?.toString(),
        width: (json["width"] as num?)?.toInt(),
        height: (json["height"] as num?)?.toInt(),
        x: (json["x"] as num?)?.toInt(),
        y: (json["y"] as num?)?.toInt(),
      );

  /// The keying result of each child element.
  final List<Object?>? elements;

  /// Resulting image URL address.
  final String? imageUrl;

  /// The width of the result map.
  final int? width;

  /// The height of the resultant graph.
  final int? height;

  /// Top left x-coordinate.
  final int? x;

  /// Top left y-coordinate.
  final int? y;
}

typedef CutoutAvatarExtractionResponse
    = AILabResponse<CutoutAvatarExtractionResponseData>;

final class CutoutHairExtractionParams {
  const CutoutHairExtractionParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class CutoutHairExtractionResponseData {
  const CutoutHairExtractionResponseData({
    this.elements,
    this.imageUrl,
    this.width,
    this.height,
    this.x,
    this.y,
  });

  factory CutoutHairExtractionResponseData.fromJson(JsonMap json) =>
      CutoutHairExtractionResponseData(
        elements: json["elements"] is List
            ? List<Object?>.from(json["elements"] as List)
            : null,
        imageUrl: json["image_url"]?.toString(),
        width: (json["width"] as num?)?.toInt(),
        height: (json["height"] as num?)?.toInt(),
        x: (json["x"] as num?)?.toInt(),
        y: (json["y"] as num?)?.toInt(),
      );

  /// The keying result of each child element.
  final List<Object?>? elements;

  /// Resulting image URL address.
  final String? imageUrl;

  /// The width of the result map.
  final int? width;

  /// The height of the resultant graph.
  final int? height;

  /// Top left x-coordinate.
  final int? x;

  /// Top left y-coordinate.
  final int? y;
}

typedef CutoutHairExtractionResponse
    = AILabResponse<CutoutHairExtractionResponseData>;

final class CutoutHumanBackgroundRemovalParams {
  const CutoutHumanBackgroundRemovalParams({
    required this.image,
    this.returnForm,
  });

  final AILabFile image;

  /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
  final String? returnForm;

  Map<String, Object?> toMap() => {
        "image": image,
        "return_form": returnForm,
      };
}

final class CutoutHumanBackgroundRemovalResponseData {
  const CutoutHumanBackgroundRemovalResponseData({
    this.imageUrl,
  });

  factory CutoutHumanBackgroundRemovalResponseData.fromJson(JsonMap json) =>
      CutoutHumanBackgroundRemovalResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef CutoutHumanBackgroundRemovalResponse
    = AILabResponse<CutoutHumanBackgroundRemovalResponseData>;

final class ImageQueryingAsyncTaskResultsParams {
  const ImageQueryingAsyncTaskResultsParams({
    required this.jobId,
    required this.type,
  });

  /// The request_id returned by the asynchronous API.
  final String jobId;

  /// Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator
  final String type;

  Map<String, Object?> toMap() => {
        "job_id": jobId,
        "type": type,
      };
}

final class ImageQueryingAsyncTaskResultsResponseData {
  const ImageQueryingAsyncTaskResultsResponseData();
  factory ImageQueryingAsyncTaskResultsResponseData.fromJson(JsonMap json) =>
      const ImageQueryingAsyncTaskResultsResponseData();
}

typedef ImageQueryingAsyncTaskResultsResponse
    = AILabResponse<ImageQueryingAsyncTaskResultsResponseData>;

final class ImageAiImageExtenderParams {
  const ImageAiImageExtenderParams({
    this.customPrompt,
    this.steps,
    this.strength,
    this.scale,
    this.seed,
    this.maxHeight,
    this.maxWidth,
    required this.image,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.mask,
  });

  /// Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process.
  final String? customPrompt;

  /// Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
  final int? steps;

  /// The smaller the value, the closer it is to the original image.
  final double? strength;

  /// The degree to which the text description influences the output.
  final double? scale;

  /// Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
  final int? seed;

  /// Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process.
  final int? maxHeight;

  /// Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process.
  final int? maxWidth;

  /// Original image.
  final AILabFile image;

  /// Upward expansion ratio.
  final double? top;

  /// Downward expansion ratio.
  final double? bottom;

  /// Leftward expansion ratio.
  final double? left;

  /// Rightward expansion ratio.
  final double? right;

  /// Mask image.
  final AILabFile? mask;

  Map<String, Object?> toMap() => {
        "custom_prompt": customPrompt,
        "steps": steps,
        "strength": strength,
        "scale": scale,
        "seed": seed,
        "max_height": maxHeight,
        "max_width": maxWidth,
        "image": image,
        "top": top,
        "bottom": bottom,
        "left": left,
        "right": right,
        "mask": mask,
      };
}

final class ImageAiImageExtenderResponseData {
  const ImageAiImageExtenderResponseData({
    this.binaryDataBase64,
  });

  factory ImageAiImageExtenderResponseData.fromJson(JsonMap json) =>
      ImageAiImageExtenderResponseData(
        binaryDataBase64: json["binary_data_base64"] is List
            ? json["binary_data_base64"]
                .map((value) => value.toString())
                .toList()
                .cast<String>()
            : null,
      );

  /// Output the processed image as a Base64 array (single image).
  final List<String>? binaryDataBase64;
}

typedef ImageAiImageExtenderResponse
    = AILabResponse<ImageAiImageExtenderResponseData>;

final class ImageAiObjectReplacerParams {
  const ImageAiObjectReplacerParams({
    required this.image,
    required this.mask,
    this.customPrompt,
    this.steps,
    this.scale,
    this.seed,
  });

  /// Original image.
  final AILabFile image;

  /// Mask image.
  final AILabFile mask;

  /// Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process.
  final String? customPrompt;

  /// Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
  final int? steps;

  /// The degree to which the text description influences the output.
  final double? scale;

  /// Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
  final int? seed;

  Map<String, Object?> toMap() => {
        "image": image,
        "mask": mask,
        "custom_prompt": customPrompt,
        "steps": steps,
        "scale": scale,
        "seed": seed,
      };
}

final class ImageAiObjectReplacerResponseData {
  const ImageAiObjectReplacerResponseData({
    this.binaryDataBase64,
  });

  factory ImageAiObjectReplacerResponseData.fromJson(JsonMap json) =>
      ImageAiObjectReplacerResponseData(
        binaryDataBase64: json["binary_data_base64"] is List
            ? json["binary_data_base64"]
                .map((value) => value.toString())
                .toList()
                .cast<String>()
            : null,
      );

  /// Output the processed image as a Base64 array (single image).
  final List<String>? binaryDataBase64;
}

typedef ImageAiObjectReplacerResponse
    = AILabResponse<ImageAiObjectReplacerResponseData>;

final class ImageAIImageCroppingParams {
  const ImageAIImageCroppingParams({
    required this.image,
    required this.width,
    required this.height,
  });

  final AILabFile image;

  /// The width of the target. Unit: px.
  final int width;

  /// The height of the target. Unit: px.
  final int height;

  Map<String, Object?> toMap() => {
        "image": image,
        "width": width,
        "height": height,
      };
}

final class ImageAIImageCroppingResponseData {
  const ImageAIImageCroppingResponseData({
    this.url,
    this.retainLocation,
    this.width,
    this.height,
    this.y,
    this.x,
  });

  factory ImageAIImageCroppingResponseData.fromJson(JsonMap json) =>
      ImageAIImageCroppingResponseData(
        url: json["url"]?.toString(),
        retainLocation: json["retain_location"] is JsonMap
            ? json["retain_location"] as JsonMap
            : null,
        width: (json["width"] as num?)?.toInt(),
        height: (json["height"] as num?)?.toInt(),
        y: (json["y"] as num?)?.toInt(),
        x: (json["x"] as num?)?.toInt(),
      );

  /// The URL address of the image after size transformation.
  final String? url;

  /// The coordinate information of the original image data in the generated image.
  final JsonMap? retainLocation;

  /// Outputs the width of the original image after isoscaling according to the specified width. Unit: px.
  final int? width;

  /// Outputs the height of the original image after isoscaling according to the specified height. Unit: px.
  final int? height;

  /// The y-coordinate of the upper-left corner of the original figure.
  final int? y;

  /// The x coordinate of the upper left corner of the original figure.
  final int? x;
}

typedef ImageAIImageCroppingResponse
    = AILabResponse<ImageAIImageCroppingResponseData>;

final class ImageErasureParams {
  const ImageErasureParams({
    required this.image,
    required this.userMask,
  });

  /// The image to be erased.
  final AILabFile image;

  /// Mask image.
  final AILabFile userMask;

  Map<String, Object?> toMap() => {
        "image": image,
        "user_mask": userMask,
      };
}

final class ImageErasureResponseData {
  const ImageErasureResponseData({
    this.imageUrl,
  });

  factory ImageErasureResponseData.fromJson(JsonMap json) =>
      ImageErasureResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// The URL of the image after erasing.
  final String? imageUrl;
}

typedef ImageErasureResponse = AILabResponse<ImageErasureResponseData>;

final class ImageInvisibleImageWatermarkParams {
  const ImageInvisibleImageWatermarkParams({
    required this.functionType,
    this.originImage,
    this.logo,
    this.watermarkImage,
    this.outputFileType,
    this.qualityFactor,
  });

  /// Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image.
  final String functionType;

  /// Original image.
  final AILabFile? originImage;

  /// Watermark image.
  final AILabFile? logo;

  /// Composite image with watermark.
  final AILabFile? watermarkImage;

  /// Output format.
  final String? outputFileType;

  /// Quality factor for jpg output.
  final int? qualityFactor;

  Map<String, Object?> toMap() => {
        "function_type": functionType,
        "origin_image": originImage,
        "logo": logo,
        "watermark_image": watermarkImage,
        "output_file_type": outputFileType,
        "quality_factor": qualityFactor,
      };
}

final class ImageInvisibleImageWatermarkResponseData {
  const ImageInvisibleImageWatermarkResponseData({
    this.watermarkImageUrl,
    this.logoUrl,
  });

  factory ImageInvisibleImageWatermarkResponseData.fromJson(JsonMap json) =>
      ImageInvisibleImageWatermarkResponseData(
        watermarkImageUrl: json["watermark_image_url"]?.toString(),
        logoUrl: json["logo_url"]?.toString(),
      );

  /// The URL address after adding the watermark.
  final String? watermarkImageUrl;

  /// Watermark URL address after decoding.
  final String? logoUrl;
}

typedef ImageInvisibleImageWatermarkResponse
    = AILabResponse<ImageInvisibleImageWatermarkResponseData>;

final class ImageInvisibleTextWatermarkParams {
  const ImageInvisibleTextWatermarkParams({
    required this.functionType,
    this.originImage,
    this.text,
    this.watermarkImage,
    this.outputFileType,
    this.qualityFactor,
  });

  /// Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image.
  final String functionType;

  /// Original image.
  final AILabFile? originImage;

  /// Watermark text.
  final String? text;

  /// Composite image with watermark.
  final AILabFile? watermarkImage;

  /// Output format.
  final String? outputFileType;

  /// Quality factor for jpg output.
  final int? qualityFactor;

  Map<String, Object?> toMap() => {
        "function_type": functionType,
        "origin_image": originImage,
        "text": text,
        "watermark_image": watermarkImage,
        "output_file_type": outputFileType,
        "quality_factor": qualityFactor,
      };
}

final class ImageInvisibleTextWatermarkResponseData {
  const ImageInvisibleTextWatermarkResponseData({
    this.watermarkImageUrl,
    this.textImageUrl,
  });

  factory ImageInvisibleTextWatermarkResponseData.fromJson(JsonMap json) =>
      ImageInvisibleTextWatermarkResponseData(
        watermarkImageUrl: json["watermark_image_url"]?.toString(),
        textImageUrl: json["text_image_url"]?.toString(),
      );

  /// The URL address after adding the watermark.
  final String? watermarkImageUrl;

  /// Watermark URL address after decoding.
  final String? textImageUrl;
}

typedef ImageInvisibleTextWatermarkResponse
    = AILabResponse<ImageInvisibleTextWatermarkResponseData>;

final class ImageIntelligentCompositionParams {
  const ImageIntelligentCompositionParams({
    required this.image,
    this.numBoxes,
  });

  final AILabFile image;

  /// The number of output boxes.
  final int? numBoxes;

  Map<String, Object?> toMap() => {
        "image": image,
        "num_boxes": numBoxes,
      };
}

final class ImageIntelligentCompositionResponseData {
  const ImageIntelligentCompositionResponseData({
    this.elements,
    this.minX,
    this.maxX,
    this.minY,
    this.maxY,
    this.score,
  });

  factory ImageIntelligentCompositionResponseData.fromJson(JsonMap json) =>
      ImageIntelligentCompositionResponseData(
        elements: json["elements"] is List
            ? List<Object?>.from(json["elements"] as List)
            : null,
        minX: (json["min_x"] as num?)?.toInt(),
        maxX: (json["max_x"] as num?)?.toInt(),
        minY: (json["min_y"] as num?)?.toInt(),
        maxY: (json["max_y"] as num?)?.toInt(),
        score: (json["score"] as num?)?.toDouble(),
      );

  /// Intelligent composition results.
  final List<Object?>? elements;

  /// The horizontal coordinate of the upper-left corner of the output box.
  final int? minX;

  /// The horizontal coordinate of the lower-right corner of the output box.
  final int? maxX;

  /// The vertical coordinate of the upper-left corner of the output box.
  final int? minY;

  /// The lower-right vertical coordinate of the output box.
  final int? maxY;

  /// The higher the score, the better the composition. 3.8 or above is recommended as a better composition score.
  final double? score;
}

typedef ImageIntelligentCompositionResponse
    = AILabResponse<ImageIntelligentCompositionResponseData>;

final class ImagePhotoEditingParams {
  const ImagePhotoEditingParams({
    required this.image,
    required this.style,
  });

  /// Images that require a style transformation.
  final AILabFile image;

  /// Reference image.
  final AILabFile style;

  Map<String, Object?> toMap() => {
        "image": image,
        "style": style,
      };
}

final class ImagePhotoEditingResponseData {
  const ImagePhotoEditingResponseData({
    this.imageUrl,
  });

  factory ImagePhotoEditingResponseData.fromJson(JsonMap json) =>
      ImagePhotoEditingResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// The resulting image after performing the style transformation.
  final String? imageUrl;
}

typedef ImagePhotoEditingResponse
    = AILabResponse<ImagePhotoEditingResponseData>;

final class ImageRemoveObjectsParams {
  const ImageRemoveObjectsParams({
    required this.image,
    required this.mask,
  });

  /// Original image.
  final AILabFile image;

  /// Mask image.
  final AILabFile mask;

  Map<String, Object?> toMap() => {
        "image": image,
        "mask": mask,
      };
}

final class ImageRemoveObjectsResponseData {
  const ImageRemoveObjectsResponseData({
    this.imageUrl,
  });

  factory ImageRemoveObjectsResponseData.fromJson(JsonMap json) =>
      ImageRemoveObjectsResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// The URL of the image after erasing.
  final String? imageUrl;
}

typedef ImageRemoveObjectsResponse
    = AILabResponse<ImageRemoveObjectsResponseData>;

final class ImageRemoveObjectsAdvancedParams {
  const ImageRemoveObjectsAdvancedParams({
    required this.image,
    required this.mask,
    this.steps,
    this.strength,
    this.scale,
    this.seed,
    this.dilateSize,
    this.quality,
  });

  /// Original image.
  final AILabFile image;

  /// Mask image.
  final AILabFile mask;

  /// Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
  final int? steps;

  /// The smaller the value, the closer it is to the original image.
  final double? strength;

  /// The degree to which the text description influences the output.
  final double? scale;

  /// Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
  final int? seed;

  /// Mask Dilation Radius. The mask used for object removal should fully encompass the target object. When users manually draw the mask, it often extends beyond the object's boundary. However, if the mask is generated by a segmentation algorithm, it typically adheres closely to the object's edges, which might leave parts of the object uncovered. This can lead to incomplete removal or unexpected artifacts during generation. To avoid such issues, it's recommended to appropriately increase the dilate_size parameter to ensure the mask fully covers the object.
  final int? dilateSize;

  /// Quality Parameter. H: High quality — best output quality, but slightly slower processing. M: Medium quality — balanced in both quality and speed. L: Low quality — fastest processing, suitable for scenarios where speed is prioritized.
  final String? quality;

  Map<String, Object?> toMap() => {
        "image": image,
        "mask": mask,
        "steps": steps,
        "strength": strength,
        "scale": scale,
        "seed": seed,
        "dilate_size": dilateSize,
        "quality": quality,
      };
}

final class ImageRemoveObjectsAdvancedResponseData {
  const ImageRemoveObjectsAdvancedResponseData({
    this.binaryDataBase64,
  });

  factory ImageRemoveObjectsAdvancedResponseData.fromJson(JsonMap json) =>
      ImageRemoveObjectsAdvancedResponseData(
        binaryDataBase64: json["binary_data_base64"] is List
            ? json["binary_data_base64"]
                .map((value) => value.toString())
                .toList()
                .cast<String>()
            : null,
      );

  /// Output the processed image as a Base64 array (single image).
  final List<String>? binaryDataBase64;
}

typedef ImageRemoveObjectsAdvancedResponse
    = AILabResponse<ImageRemoveObjectsAdvancedResponseData>;

final class ImageRemoveObjectsProParams {
  const ImageRemoveObjectsProParams({
    required this.image,
    required this.mask,
  });

  /// Original image.
  final AILabFile image;

  /// Mask image.
  final AILabFile mask;

  Map<String, Object?> toMap() => {
        "image": image,
        "mask": mask,
      };
}

final class ImageRemoveObjectsProResponseData {
  const ImageRemoveObjectsProResponseData({
    this.imageUrl,
  });

  factory ImageRemoveObjectsProResponseData.fromJson(JsonMap json) =>
      ImageRemoveObjectsProResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// The URL of the image after erasing.
  final String? imageUrl;
}

typedef ImageRemoveObjectsProResponse
    = AILabResponse<ImageRemoveObjectsProResponseData>;

final class ImageAICartoonGeneratorParams {
  const ImageAICartoonGeneratorParams({
    required this.taskType,
    required this.image,
    required this.type,
  });

  /// Task Type. async: Asynchronous tasks.
  final String taskType;
  final AILabFile image;

  /// Style. Range of values
  final String type;

  Map<String, Object?> toMap() => {
        "task_type": taskType,
        "image": image,
        "type": type,
      };
}

final class ImageAICartoonGeneratorResponseData {
  const ImageAICartoonGeneratorResponseData({
    this.taskType,
    this.taskId,
  });

  factory ImageAICartoonGeneratorResponseData.fromJson(JsonMap json) =>
      ImageAICartoonGeneratorResponseData(
        taskType: json["task_type"]?.toString(),
        taskId: json["task_id"]?.toString(),
      );

  /// Task Type. async: Asynchronous tasks.
  final String? taskType;

  /// Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
  final String? taskId;
}

typedef ImageAICartoonGeneratorResponse
    = AILabResponse<ImageAICartoonGeneratorResponseData>;

final class ImageColoringParams {
  const ImageColoringParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageColoringResponseData {
  const ImageColoringResponseData({
    this.image,
  });

  factory ImageColoringResponseData.fromJson(JsonMap json) =>
      ImageColoringResponseData(
        image: json["image"]?.toString(),
      );

  /// base64 encoded image.
  final String? image;
}

typedef ImageColoringResponse = AILabResponse<ImageColoringResponseData>;

final class ImageStyleTransferParams {
  const ImageStyleTransferParams({
    required this.image,
    required this.option,
  });

  final AILabFile image;

  /// cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style.
  final String option;

  Map<String, Object?> toMap() => {
        "image": image,
        "option": option,
      };
}

final class ImageStyleTransferResponseData {
  const ImageStyleTransferResponseData({
    this.image,
  });

  factory ImageStyleTransferResponseData.fromJson(JsonMap json) =>
      ImageStyleTransferResponseData(
        image: json["image"]?.toString(),
      );

  /// base64 encoded image.
  final String? image;
}

typedef ImageStyleTransferResponse
    = AILabResponse<ImageStyleTransferResponseData>;

final class ImageStyleMigrationParams {
  const ImageStyleMigrationParams({
    required this.style,
    required this.major,
  });

  /// style image.
  final AILabFile style;

  /// Content image.
  final AILabFile major;

  Map<String, Object?> toMap() => {
        "style": style,
        "major": major,
      };
}

final class ImageStyleMigrationResponseData {
  const ImageStyleMigrationResponseData({
    this.url,
    this.majorUrl,
  });

  factory ImageStyleMigrationResponseData.fromJson(JsonMap json) =>
      ImageStyleMigrationResponseData(
        url: json["url"]?.toString(),
        majorUrl: json["major_url"]?.toString(),
      );

  /// URL address of the result image for stylization, image format: PNG.
  final String? url;

  /// The result of keeping the portrait unchanged and stylizing the rest. If there is no figure in the input major content map, the empty string is returned here.
  final String? majorUrl;
}

typedef ImageStyleMigrationResponse
    = AILabResponse<ImageStyleMigrationResponseData>;

final class ImageColorEnhancementParams {
  const ImageColorEnhancementParams({
    required this.image,
    required this.outputFormat,
    required this.mode,
  });

  final AILabFile image;

  /// The format of the output image.
  final String outputFormat;

  /// Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality.
  final String mode;

  Map<String, Object?> toMap() => {
        "image": image,
        "output_format": outputFormat,
        "mode": mode,
      };
}

final class ImageColorEnhancementResponseData {
  const ImageColorEnhancementResponseData({
    this.imageUrl,
  });

  factory ImageColorEnhancementResponseData.fromJson(JsonMap json) =>
      ImageColorEnhancementResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Returns the URL address of the processed image.
  final String? imageUrl;
}

typedef ImageColorEnhancementResponse
    = AILabResponse<ImageColorEnhancementResponseData>;

final class ImageContrastEnhancementParams {
  const ImageContrastEnhancementParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageContrastEnhancementResponseData {
  const ImageContrastEnhancementResponseData({
    this.image,
  });

  factory ImageContrastEnhancementResponseData.fromJson(JsonMap json) =>
      ImageContrastEnhancementResponseData(
        image: json["image"]?.toString(),
      );

  /// base64 encoded image.
  final String? image;
}

typedef ImageContrastEnhancementResponse
    = AILabResponse<ImageContrastEnhancementResponseData>;

final class ImageDehazeParams {
  const ImageDehazeParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageDehazeResponseData {
  const ImageDehazeResponseData({
    this.image,
  });

  factory ImageDehazeResponseData.fromJson(JsonMap json) =>
      ImageDehazeResponseData(
        image: json["image"]?.toString(),
      );

  /// base64 encoded image.
  final String? image;
}

typedef ImageDehazeResponse = AILabResponse<ImageDehazeResponseData>;

final class ImageLosslessEnlargementParams {
  const ImageLosslessEnlargementParams({
    required this.image,
    this.upscaleFactor,
    this.mode,
    this.outputFormat,
    this.outputQuality,
  });

  final AILabFile image;

  /// Magnification.
  final int? upscaleFactor;

  /// Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image.
  final String? mode;

  /// Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg.
  final String? outputFormat;

  /// Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg.
  final int? outputQuality;

  Map<String, Object?> toMap() => {
        "image": image,
        "upscale_factor": upscaleFactor,
        "mode": mode,
        "output_format": outputFormat,
        "output_quality": outputQuality,
      };
}

final class ImageLosslessEnlargementResponseData {
  const ImageLosslessEnlargementResponseData({
    this.url,
  });

  factory ImageLosslessEnlargementResponseData.fromJson(JsonMap json) =>
      ImageLosslessEnlargementResponseData(
        url: json["url"]?.toString(),
      );

  /// URL address of the image after resolution enlargement, image format is PNG.
  final String? url;
}

typedef ImageLosslessEnlargementResponse
    = AILabResponse<ImageLosslessEnlargementResponseData>;

final class ImageClarityEnhancementParams {
  const ImageClarityEnhancementParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageClarityEnhancementResponseData {
  const ImageClarityEnhancementResponseData({
    this.image,
  });

  factory ImageClarityEnhancementResponseData.fromJson(JsonMap json) =>
      ImageClarityEnhancementResponseData(
        image: json["image"]?.toString(),
      );

  /// base64 encoded image.
  final String? image;
}

typedef ImageClarityEnhancementResponse
    = AILabResponse<ImageClarityEnhancementResponseData>;

final class ImageDistortionCorrectionParams {
  const ImageDistortionCorrectionParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageDistortionCorrectionResponseData {
  const ImageDistortionCorrectionResponseData({
    this.image,
    this.ratio,
  });

  factory ImageDistortionCorrectionResponseData.fromJson(JsonMap json) =>
      ImageDistortionCorrectionResponseData(
        image: json["image"]?.toString(),
        ratio: (json["ratio"] as num?)?.toDouble(),
      );

  /// base64 encoded image.
  final String? image;

  /// Recover ratio.
  final double? ratio;
}

typedef ImageDistortionCorrectionResponse
    = AILabResponse<ImageDistortionCorrectionResponseData>;

final class ImageCompositionAestheticsScoreParams {
  const ImageCompositionAestheticsScoreParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageCompositionAestheticsScoreResponseData {
  const ImageCompositionAestheticsScoreResponseData({
    this.score,
  });

  factory ImageCompositionAestheticsScoreResponseData.fromJson(JsonMap json) =>
      ImageCompositionAestheticsScoreResponseData(
        score: (json["score"] as num?)?.toDouble(),
      );

  /// The higher the score, the better the composition, with a recommended score of 3.8 or higher being the better composition score.
  final double? score;
}

typedef ImageCompositionAestheticsScoreResponse
    = AILabResponse<ImageCompositionAestheticsScoreResponseData>;

final class ImageExposureRatingParams {
  const ImageExposureRatingParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class ImageExposureRatingResponseData {
  const ImageExposureRatingResponseData({
    this.exposure,
  });

  factory ImageExposureRatingResponseData.fromJson(JsonMap json) =>
      ImageExposureRatingResponseData(
        exposure: (json["exposure"] as num?)?.toDouble(),
      );

  /// Image exposure score, the value range is 0~1. The higher the score, the greater the exposure.
  final double? exposure;
}

typedef ImageExposureRatingResponse
    = AILabResponse<ImageExposureRatingResponseData>;

final class PortraitFaceAnalyzerParams {
  const PortraitFaceAnalyzerParams({
    required this.image,
    this.maxFaceNum,
    this.faceAttributesType,
    this.needRotateDetection,
  });

  final AILabFile image;

  /// The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed.
  final int? maxFaceNum;

  /// Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced.
  final String? faceAttributesType;

  /// Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open.
  final int? needRotateDetection;

  Map<String, Object?> toMap() => {
        "image": image,
        "max_face_num": maxFaceNum,
        "face_attributes_type": faceAttributesType,
        "need_rotate_detection": needRotateDetection,
      };
}

final class PortraitFaceAnalyzerResponseData {
  const PortraitFaceAnalyzerResponseData({
    this.imageWidth,
    this.imageHeight,
    this.faceDetailInfos,
    this.faceRect,
    this.x,
    this.y,
    this.width,
    this.height,
    this.faceDetailAttributesInfo,
    this.age,
    this.beauty,
    this.emotion,
    this.type,
    this.probability,
    this.eye,
    this.glass,
    this.eyeOpen,
    this.eyelidType,
    this.eyeSize,
    this.eyebrow,
    this.eyebrowDensity,
    this.eyebrowCurve,
    this.eyebrowLength,
    this.gender,
    this.hair,
    this.length,
    this.bang,
    this.color,
    this.hat,
    this.style,
    this.headPose,
    this.pitch,
    this.yaw,
    this.mask,
    this.mouth,
    this.mouthOpen,
    this.moustache,
    this.nose,
    this.shape,
    this.skin,
    this.smile,
  });

  factory PortraitFaceAnalyzerResponseData.fromJson(JsonMap json) =>
      PortraitFaceAnalyzerResponseData(
        imageWidth: (json["image_width"] as num?)?.toInt(),
        imageHeight: (json["image_height"] as num?)?.toInt(),
        faceDetailInfos: json["face_detail_infos"] is List
            ? List<Object?>.from(json["face_detail_infos"] as List)
            : null,
        faceRect:
            json["face_rect"] is JsonMap ? json["face_rect"] as JsonMap : null,
        x: (json["x"] as num?)?.toInt(),
        y: (json["y"] as num?)?.toInt(),
        width: (json["width"] as num?)?.toInt(),
        height: (json["height"] as num?)?.toInt(),
        faceDetailAttributesInfo: json["face_detail_attributes_info"] is JsonMap
            ? json["face_detail_attributes_info"] as JsonMap
            : null,
        age: (json["age"] as num?)?.toInt(),
        beauty: (json["beauty"] as num?)?.toInt(),
        emotion: json["emotion"] is JsonMap ? json["emotion"] as JsonMap : null,
        type: (json["type"] as num?)?.toInt(),
        probability: (json["probability"] as num?)?.toDouble(),
        eye: json["eye"] is JsonMap ? json["eye"] as JsonMap : null,
        glass: json["glass"] is JsonMap ? json["glass"] as JsonMap : null,
        eyeOpen:
            json["eye_open"] is JsonMap ? json["eye_open"] as JsonMap : null,
        eyelidType: json["eyelid_type"] is JsonMap
            ? json["eyelid_type"] as JsonMap
            : null,
        eyeSize:
            json["eye_size"] is JsonMap ? json["eye_size"] as JsonMap : null,
        eyebrow: json["eyebrow"] is JsonMap ? json["eyebrow"] as JsonMap : null,
        eyebrowDensity: json["eyebrow_density"] is JsonMap
            ? json["eyebrow_density"] as JsonMap
            : null,
        eyebrowCurve: json["eyebrow_curve"] is JsonMap
            ? json["eyebrow_curve"] as JsonMap
            : null,
        eyebrowLength: json["eyebrow_length"] is JsonMap
            ? json["eyebrow_length"] as JsonMap
            : null,
        gender: json["gender"] is JsonMap ? json["gender"] as JsonMap : null,
        hair: json["hair"] is JsonMap ? json["hair"] as JsonMap : null,
        length: json["length"] is JsonMap ? json["length"] as JsonMap : null,
        bang: json["bang"] is JsonMap ? json["bang"] as JsonMap : null,
        color: json["color"] is JsonMap ? json["color"] as JsonMap : null,
        hat: json["hat"] is JsonMap ? json["hat"] as JsonMap : null,
        style: json["style"] is JsonMap ? json["style"] as JsonMap : null,
        headPose:
            json["head_pose"] is JsonMap ? json["head_pose"] as JsonMap : null,
        pitch: (json["pitch"] as num?)?.toInt(),
        yaw: (json["yaw"] as num?)?.toInt(),
        mask: json["mask"] is JsonMap ? json["mask"] as JsonMap : null,
        mouth: json["mouth"] is JsonMap ? json["mouth"] as JsonMap : null,
        mouthOpen: json["mouth_open"] is JsonMap
            ? json["mouth_open"] as JsonMap
            : null,
        moustache:
            json["moustache"] is JsonMap ? json["moustache"] as JsonMap : null,
        nose: json["nose"] is JsonMap ? json["nose"] as JsonMap : null,
        shape: json["shape"] is JsonMap ? json["shape"] as JsonMap : null,
        skin: json["skin"] is JsonMap ? json["skin"] as JsonMap : null,
        smile: (json["smile"] as num?)?.toInt(),
      );

  /// Image width.
  final int? imageWidth;

  /// Image height.
  final int? imageHeight;

  /// List of face information.
  final List<Object?>? faceDetailInfos;

  /// Face frame position.
  final JsonMap? faceRect;

  /// The horizontal coordinate of the upper left corner of the face frame.The face frame contains the positions of the five senses of the face and expands on them, if the face frame is out of the range of the picture, it will lead to negative coordinates.If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand.
  final int? x;

  /// The vertical coordinate of the upper left corner of the face frame. The face frame contains the positions of the five senses of the face and expands them to a certain extent. If the face frame exceeds the range of the picture, it will lead to negative coordinates. If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand.
  final int? y;

  /// Face width.
  final int? width;

  /// Face height.
  final int? height;

  /// Face attribute information.
  final JsonMap? faceDetailAttributesInfo;

  /// Age. 65: 65 years old and above. When face_attributes_type does not contain Age or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final int? age;

  /// Beauty Score. When face_attributes_type does not contain Beauty or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final int? beauty;

  /// Emotional information. When face_attributes_type does not contain Emotion or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? emotion;

  /// 0: Neutral. 1: Happy. 2: Surprised. 3: Angry. 4: Sad. 5: Disgusted. 6: Fearful.
  final int? type;

  /// Probability of being correct.
  final double? probability;

  /// Eye-related information. face_attributes_type does not contain Eye or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? eye;

  /// Wearing glasses.
  final JsonMap? glass;

  /// Closed eyes.
  final JsonMap? eyeOpen;

  /// Double eyelids.
  final JsonMap? eyelidType;

  /// Eye size.
  final JsonMap? eyeSize;

  /// Eyebrow information. face_attributes_type does not contain Eyebrow or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? eyebrow;

  /// Thick eyebrows.
  final JsonMap? eyebrowDensity;

  /// Curved eyebrows.
  final JsonMap? eyebrowCurve;

  /// Eyebrow length.
  final JsonMap? eyebrowLength;

  /// Gender information. face_attributes_type does not contain Gender or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? gender;

  /// Hair information. face_attributes_type does not contain Hair or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? hair;

  /// Hair length information.
  final JsonMap? length;

  /// Fringe (bangs) information.
  final JsonMap? bang;

  /// Hair color information.
  final JsonMap? color;

  /// Hat information. face_attributes_type does not contain Hat or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? hat;

  /// Hat wearing status information.
  final JsonMap? style;

  /// Face offset information. face_attributes_type does not contain HeadPose or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? headPose;

  /// Vertical Offset.
  final int? pitch;

  /// Horizontal Offset.
  final int? yaw;

  /// Mask wearing information. face_attributes_type does not contain Mask or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? mask;

  /// Mouth information. face_attributes_type does not contain Mouth or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? mouth;

  /// Mouth open.
  final JsonMap? mouthOpen;

  /// Facial hair information. face_attributes_type does not contain Moustache or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? moustache;

  /// Nose information. face_attributes_type does not contain Nose or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? nose;

  /// Face shape information. face_attributes_type does not contain Shape or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? shape;

  /// Skin color information. face_attributes_type does not contain Skin or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final JsonMap? skin;

  /// Smile Rating. face_attributes_type does not contain Smile or when more than 5 faces are detected, this parameter is still returned but is not informative.
  final int? smile;
}

typedef PortraitFaceAnalyzerResponse
    = AILabResponse<PortraitFaceAnalyzerResponseData>;

final class PortraitFaceAnalyzerAdvancedParams {
  const PortraitFaceAnalyzerAdvancedParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class PortraitFaceAnalyzerAdvancedResponseData {
  const PortraitFaceAnalyzerAdvancedResponseData({
    this.pupils,
    this.genderList,
    this.expressions,
    this.faceCount,
    this.landmarks,
    this.landmarkCount,
    this.beautyList,
    this.hatList,
    this.faceProbabilityList,
    this.glasses,
    this.faceRectangles,
    this.poseList,
    this.ageList,
    this.denseFeatureLength,
    this.masks,
    this.qualities,
    this.scoreList,
    this.blurList,
    this.fnfList,
    this.glassList,
    this.illuList,
    this.maskList,
    this.noiseList,
  });

  factory PortraitFaceAnalyzerAdvancedResponseData.fromJson(JsonMap json) =>
      PortraitFaceAnalyzerAdvancedResponseData(
        pupils: json["pupils"] is List
            ? json["pupils"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        genderList: json["gender_list"] is List
            ? json["gender_list"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        expressions: json["expressions"] is List
            ? json["expressions"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        faceCount: (json["face_count"] as num?)?.toInt(),
        landmarks: json["landmarks"] is List
            ? json["landmarks"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        landmarkCount: (json["landmark_count"] as num?)?.toInt(),
        beautyList: json["beauty_list"] is List
            ? json["beauty_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        hatList: json["hat_list"] is List
            ? json["hat_list"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        faceProbabilityList: json["face_probability_list"] is List
            ? json["face_probability_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        glasses: json["glasses"] is List
            ? json["glasses"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        faceRectangles: json["face_rectangles"] is List
            ? json["face_rectangles"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        poseList: json["pose_list"] is List
            ? json["pose_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        ageList: json["age_list"] is List
            ? json["age_list"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        denseFeatureLength: (json["dense_feature_length"] as num?)?.toInt(),
        masks: json["masks"] is List
            ? json["masks"]
                .whereType<num>()
                .map((value) => value.toInt())
                .toList()
                .cast<int>()
            : null,
        qualities:
            json["qualities"] is JsonMap ? json["qualities"] as JsonMap : null,
        scoreList: json["score_list"] is List
            ? json["score_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        blurList: json["blur_list"] is List
            ? json["blur_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        fnfList: json["fnf_list"] is List
            ? json["fnf_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        glassList: json["glass_list"] is List
            ? json["glass_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        illuList: json["illu_list"] is List
            ? json["illu_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        maskList: json["mask_list"] is List
            ? json["mask_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
        noiseList: json["noise_list"] is List
            ? json["noise_list"]
                .whereType<num>()
                .map((value) => value.toDouble())
                .toList()
                .cast<double>()
            : null,
      );

  /// The center point coordinates and radius of the left and right pupils, with 6 floating-point values per face, in the order of \[left_iris_cenpt.x, left_iris_cenpt.y, left_iris_radius, right_iris_cenpt.x, right_iris_cenpt.y, right_iris_radius\]. If multiple faces are detected, results are returned in order.
  final List<double>? pupils;

  /// Gender. If multiple faces are detected, results are returned in order. 0: Female. 1: Male.
  final List<int>? genderList;

  /// Expression. If multiple faces are detected, results are returned in order. 0: Neutral. 1: Smile.
  final List<int>? expressions;

  /// Number of faces.
  final int? faceCount;

  /// Facial landmark detection results. A set of landmark coordinates is returned for each face, represented as (x0, y0, x1, y1, …). If multiple faces are detected, results are returned in order.
  final List<double>? landmarks;

  /// Number of facial landmarks. distributed as follows: Eyebrows: 24 points Eyes: 32 points Nose: 6 points Mouth: 34 points Outer contour: 9 points
  final int? landmarkCount;

  /// Attractiveness score. A higher score indicates a higher level of attractiveness. If multiple faces are detected, results are returned in order.
  final List<double>? beautyList;

  /// Whether wearing a hat. If multiple faces are detected, results are returned in order. 0: No. 1: Yes.
  final List<int>? hatList;

  /// Probability of a face. If multiple faces are detected, results are returned in order.
  final List<double>? faceProbabilityList;

  /// Whether wearing glasses. If multiple faces are detected, results are returned in order. 0: No glasses. 1: Wearing regular glasses. 2: Wearing sunglasses.
  final List<int>? glasses;

  /// Face bounding box, represented as \[left, top, width, height\]. If multiple faces are detected, results are returned in order.
  final List<int>? faceRectangles;

  /// Face pose, in the format \[yaw, pitch, roll\]. If multiple faces are detected, results are returned in order. yaw: left-right angle. Range: \[-90, 90\]. pitch: up-down angle. Range: \[-90, 90\]. roll: in-plane rotation angle. Range: \[-180, 180\].
  final List<double>? poseList;

  /// Age. If multiple faces are detected, results are returned in order.
  final List<int>? ageList;

  /// The feature dimension returned by face recognition.
  final int? denseFeatureLength;

  /// Whether wearing a mask. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. 2: Mask worn incorrectly.
  final List<int>? masks;

  /// Face quality score, where a higher score indicates better suitability for recognition.
  final JsonMap? qualities;

  /// Overall quality score, where a higher score indicates better suitability for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates high overall image quality, while a score below 85 indicates lower overall image quality. If multiple faces are detected, results are returned in order.
  final List<double>? scoreList;

  /// Face blur score indicating the impact of blurriness on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower likelihood of the image being blurry, while a score below 85 indicates a higher likelihood of blurriness. If multiple faces are detected, results are returned in order.
  final List<double>? blurList;

  /// Score indicating whether the target is a face and its impact on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image is a face, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order.
  final List<double>? fnfList;

  /// Score indicating the impact of upper-face occlusion (e.g., glasses) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing glasses, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order.
  final List<double>? glassList;

  /// Score indicating the impact of lighting on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a higher probability that the image has good lighting, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order.
  final List<double>? illuList;

  /// Score indicating the impact of lower-face occlusion (e.g., mask) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of wearing a mask, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order.
  final List<double>? maskList;

  /// Score indicating the impact of image noise on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of ≥85 during recognition: a score above 85 indicates a lower probability of image noise, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order.
  final List<double>? noiseList;
}

typedef PortraitFaceAnalyzerAdvancedResponse
    = AILabResponse<PortraitFaceAnalyzerAdvancedResponseData>;

final class PortraitFacialLandmarksParams {
  const PortraitFacialLandmarksParams({
    required this.image,
    this.maxFaceNum,
    this.faceField,
  });

  final AILabFile image;

  /// The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected).
  final int? maxFaceNum;

  /// Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points.
  final String? faceField;

  Map<String, Object?> toMap() => {
        "image": image,
        "max_face_num": maxFaceNum,
        "face_field": faceField,
      };
}

final class PortraitFacialLandmarksResponseData {
  const PortraitFacialLandmarksResponseData({
    this.result,
    this.faceNum,
    this.faceList,
    this.faceToken,
    this.location,
    this.left,
    this.top,
    this.width,
    this.height,
    this.rotation,
    this.faceProbability,
    this.angle,
    this.yaw,
    this.pitch,
    this.roll,
    this.age,
    this.gender,
    this.type,
    this.probability,
    this.landmark4,
    this.landmark72,
    this.landmark150,
    this.landmark201,
  });

  factory PortraitFacialLandmarksResponseData.fromJson(JsonMap json) =>
      PortraitFacialLandmarksResponseData(
        result: json["result"] is JsonMap ? json["result"] as JsonMap : null,
        faceNum: (json["face_num"] as num?)?.toInt(),
        faceList: json["face_list"] is List
            ? List<Object?>.from(json["face_list"] as List)
            : null,
        faceToken: json["face_token"]?.toString(),
        location:
            json["location"] is JsonMap ? json["location"] as JsonMap : null,
        left: (json["left"] as num?)?.toDouble(),
        top: (json["top"] as num?)?.toDouble(),
        width: (json["width"] as num?)?.toDouble(),
        height: (json["height"] as num?)?.toDouble(),
        rotation: (json["rotation"] as num?)?.toInt(),
        faceProbability: (json["face_probability"] as num?)?.toDouble(),
        angle: json["angle"] is JsonMap ? json["angle"] as JsonMap : null,
        yaw: (json["yaw"] as num?)?.toDouble(),
        pitch: (json["pitch"] as num?)?.toDouble(),
        roll: (json["roll"] as num?)?.toDouble(),
        age: (json["age"] as num?)?.toDouble(),
        gender: json["gender"] is JsonMap ? json["gender"] as JsonMap : null,
        type: json["type"]?.toString(),
        probability: (json["probability"] as num?)?.toDouble(),
        landmark4: json["landmark4"] is List
            ? List<Object?>.from(json["landmark4"] as List)
            : null,
        landmark72: json["landmark72"] is List
            ? List<Object?>.from(json["landmark72"] as List)
            : null,
        landmark150: json["landmark150"] is JsonMap
            ? json["landmark150"] as JsonMap
            : null,
        landmark201: json["landmark201"] is JsonMap
            ? json["landmark201"] as JsonMap
            : null,
      );

  /// The content of the result data returned.
  final JsonMap? result;

  /// The number of faces in the picture.
  final int? faceNum;

  /// List of face information.
  final List<Object?>? faceList;

  /// Face Token.
  final String? faceToken;

  /// The position of the face in the picture.
  final JsonMap? location;

  /// The distance of the face area from the left border.
  final double? left;

  /// The distance of the face area from the upper boundary.
  final double? top;

  /// The width of the face area.
  final double? width;

  /// The height of the face area.
  final double? height;

  /// The clockwise rotation angle of the face frame with respect to the vertical direction.
  final int? rotation;

  /// Face confidence.
  final double? faceProbability;

  /// Face rotation parameters, refer to Face Spatial Pose Angle Reference for detailed description.
  final JsonMap? angle;

  /// The left and right rotation angle of 3D rotation.
  final double? yaw;

  /// Three-dimensional rotation of the pitch angle.
  final double? pitch;

  /// In-plane rotation angle.
  final double? roll;

  /// Age.
  final double? age;

  /// Gender information.
  final JsonMap? gender;
  final String? type;

  /// Gender confidence.
  final double? probability;

  /// 4 feature points.
  final List<Object?>? landmark4;

  /// 72 feature points. Refer to 72 feature points for details.
  final List<Object?>? landmark72;

  /// 150 feature points. Refer to 150 feature points for details.
  final JsonMap? landmark150;

  /// 201 feature points. Refer to 201 feature points for details.
  final JsonMap? landmark201;
}

typedef PortraitFacialLandmarksResponse
    = AILabResponse<PortraitFacialLandmarksResponseData>;

final class PortraitSkinAnalysisBasicParams {
  const PortraitSkinAnalysisBasicParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class PortraitSkinAnalysisBasicResponseData {
  const PortraitSkinAnalysisBasicResponseData({
    this.warning,
    this.faceRectangle,
    this.top,
    this.left,
    this.width,
    this.height,
    this.result,
    this.leftEyelids,
    this.value,
    this.confidence,
    this.rightEyelids,
    this.eyePouch,
    this.darkCircle,
    this.foreheadWrinkle,
    this.crowsFeet,
    this.eyeFinelines,
    this.glabellaWrinkle,
    this.nasolabialFold,
    this.skinType,
    this.details,
    this.poresForehead,
    this.poresLeftCheek,
    this.poresRightCheek,
    this.poresJaw,
    this.blackhead,
    this.acne,
    this.mole,
    this.skinSpot,
  });

  factory PortraitSkinAnalysisBasicResponseData.fromJson(JsonMap json) =>
      PortraitSkinAnalysisBasicResponseData(
        warning: json["warning"] is List
            ? List<Object?>.from(json["warning"] as List)
            : null,
        faceRectangle: json["face_rectangle"] is JsonMap
            ? json["face_rectangle"] as JsonMap
            : null,
        top: (json["top"] as num?)?.toDouble(),
        left: (json["left"] as num?)?.toDouble(),
        width: (json["width"] as num?)?.toDouble(),
        height: (json["height"] as num?)?.toDouble(),
        result: json["result"] is JsonMap ? json["result"] as JsonMap : null,
        leftEyelids: json["left_eyelids"] is JsonMap
            ? json["left_eyelids"] as JsonMap
            : null,
        value: (json["value"] as num?)?.toInt(),
        confidence: (json["confidence"] as num?)?.toDouble(),
        rightEyelids: json["right_eyelids"] is JsonMap
            ? json["right_eyelids"] as JsonMap
            : null,
        eyePouch:
            json["eye_pouch"] is JsonMap ? json["eye_pouch"] as JsonMap : null,
        darkCircle: json["dark_circle"] is JsonMap
            ? json["dark_circle"] as JsonMap
            : null,
        foreheadWrinkle: json["forehead_wrinkle"] is JsonMap
            ? json["forehead_wrinkle"] as JsonMap
            : null,
        crowsFeet: json["crows_feet"] is JsonMap
            ? json["crows_feet"] as JsonMap
            : null,
        eyeFinelines: json["eye_finelines"] is JsonMap
            ? json["eye_finelines"] as JsonMap
            : null,
        glabellaWrinkle: json["glabella_wrinkle"] is JsonMap
            ? json["glabella_wrinkle"] as JsonMap
            : null,
        nasolabialFold: json["nasolabial_fold"] is JsonMap
            ? json["nasolabial_fold"] as JsonMap
            : null,
        skinType:
            json["skin_type"] is JsonMap ? json["skin_type"] as JsonMap : null,
        details: json["details"] is JsonMap ? json["details"] as JsonMap : null,
        poresForehead: json["pores_forehead"] is JsonMap
            ? json["pores_forehead"] as JsonMap
            : null,
        poresLeftCheek: json["pores_left_cheek"] is JsonMap
            ? json["pores_left_cheek"] as JsonMap
            : null,
        poresRightCheek: json["pores_right_cheek"] is JsonMap
            ? json["pores_right_cheek"] as JsonMap
            : null,
        poresJaw:
            json["pores_jaw"] is JsonMap ? json["pores_jaw"] as JsonMap : null,
        blackhead:
            json["blackhead"] is JsonMap ? json["blackhead"] as JsonMap : null,
        acne: json["acne"] is JsonMap ? json["acne"] as JsonMap : null,
        mole: json["mole"] is JsonMap ? json["mole"] as JsonMap : null,
        skinSpot:
            json["skin_spot"] is JsonMap ? json["skin_spot"] as JsonMap : null,
      );

  /// Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds \[-45,45\]).
  final List<Object?>? warning;

  /// The position of the face rectangle box.
  final JsonMap? faceRectangle;

  /// The vertical coordinate of the pixel point in the upper-left corner of the rectangle box.
  final double? top;

  /// The horizontal coordinate of the pixel point in the upper-left corner of the rectangle.
  final double? left;

  /// The width of the rectangle box.
  final double? width;

  /// The height of the rectangle box.
  final double? height;

  /// Results of face skin analysis.
  final JsonMap? result;

  /// Results of the double eyelid test on the left eye.
  final JsonMap? leftEyelids;

  /// Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids
  final int? value;

  /// Confidence.
  final double? confidence;

  /// Results of the double eyelid test on the right eye.
  final JsonMap? rightEyelids;

  /// Eye bag test results.
  final JsonMap? eyePouch;

  /// Dark circles test results.
  final JsonMap? darkCircle;

  /// Results of the head-lift test.
  final JsonMap? foreheadWrinkle;

  /// Fishtail test results.
  final JsonMap? crowsFeet;

  /// Results of the eye fine lines test.
  final JsonMap? eyeFinelines;

  /// Results of the interbrow line test.
  final JsonMap? glabellaWrinkle;

  /// Results of the forehead line test.
  final JsonMap? nasolabialFold;

  /// Skin texture test results.
  final JsonMap? skinType;

  /// The confidence level of each classification.
  final JsonMap? details;

  /// Forehead pore test results.
  final JsonMap? poresForehead;

  /// Results of the left cheek pore test.
  final JsonMap? poresLeftCheek;

  /// Results of the right cheek pore test.
  final JsonMap? poresRightCheek;

  /// Chin pore test results.
  final JsonMap? poresJaw;

  /// Blackhead test results.
  final JsonMap? blackhead;

  /// Acne test results.
  final JsonMap? acne;

  /// Mole test results.
  final JsonMap? mole;

  /// Spot detection results.
  final JsonMap? skinSpot;
}

typedef PortraitSkinAnalysisBasicResponse
    = AILabResponse<PortraitSkinAnalysisBasicResponseData>;

final class PortraitSkinAnalysisAdvancedParams {
  const PortraitSkinAnalysisAdvancedParams({
    required this.image,
    this.faceQualityControl,
    this.returnRectConfidence,
    this.returnMaps,
  });

  final AILabFile image;

  /// Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error.
  final int? faceQualityControl;

  /// The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence.
  final int? returnRectConfidence;

  /// Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details
  final String? returnMaps;

  Map<String, Object?> toMap() => {
        "image": image,
        "face_quality_control": faceQualityControl,
        "return_rect_confidence": returnRectConfidence,
        "return_maps": returnMaps,
      };
}

final class PortraitSkinAnalysisAdvancedResponseData {
  const PortraitSkinAnalysisAdvancedResponseData({
    this.warning,
    this.faceRectangle,
    this.top,
    this.left,
    this.width,
    this.height,
    this.result,
    this.skinColor,
    this.value,
    this.confidence,
    this.skintoneIta,
    this.iTA,
    this.skintone,
    this.skinHueHa,
    this.hA,
    this.skinAge,
    this.leftEyelids,
    this.rightEyelids,
    this.eyePouch,
    this.eyePouchSeverity,
    this.darkCircle,
    this.foreheadWrinkle,
    this.crowsFeet,
    this.eyeFinelines,
    this.glabellaWrinkle,
    this.nasolabialFold,
    this.nasolabialFoldSeverity,
    this.skinType,
    this.details,
    this.poresForehead,
    this.poresLeftCheek,
    this.poresRightCheek,
    this.poresJaw,
    this.blackhead,
    this.acne,
    this.rectangle,
    this.mole,
    this.closedComedones,
    this.skinSpot,
    this.faceMaps,
    this.redArea,
    this.sensitivity,
    this.sensitivityArea,
    this.sensitivityIntensity,
  });

  factory PortraitSkinAnalysisAdvancedResponseData.fromJson(JsonMap json) =>
      PortraitSkinAnalysisAdvancedResponseData(
        warning: json["warning"] is List
            ? List<Object?>.from(json["warning"] as List)
            : null,
        faceRectangle: json["face_rectangle"] is JsonMap
            ? json["face_rectangle"] as JsonMap
            : null,
        top: (json["top"] as num?)?.toDouble(),
        left: (json["left"] as num?)?.toDouble(),
        width: (json["width"] as num?)?.toDouble(),
        height: (json["height"] as num?)?.toDouble(),
        result: json["result"] is JsonMap ? json["result"] as JsonMap : null,
        skinColor: json["skin_color"] is JsonMap
            ? json["skin_color"] as JsonMap
            : null,
        value: (json["value"] as num?)?.toInt(),
        confidence: (json["confidence"] as num?)?.toDouble(),
        skintoneIta: json["skintone_ita"] is JsonMap
            ? json["skintone_ita"] as JsonMap
            : null,
        iTA: (json["ITA"] as num?)?.toDouble(),
        skintone: (json["skintone"] as num?)?.toInt(),
        skinHueHa: json["skin_hue_ha"] is JsonMap
            ? json["skin_hue_ha"] as JsonMap
            : null,
        hA: (json["HA"] as num?)?.toDouble(),
        skinAge:
            json["skin_age"] is JsonMap ? json["skin_age"] as JsonMap : null,
        leftEyelids: json["left_eyelids"] is JsonMap
            ? json["left_eyelids"] as JsonMap
            : null,
        rightEyelids: json["right_eyelids"] is JsonMap
            ? json["right_eyelids"] as JsonMap
            : null,
        eyePouch:
            json["eye_pouch"] is JsonMap ? json["eye_pouch"] as JsonMap : null,
        eyePouchSeverity: json["eye_pouch_severity"] is JsonMap
            ? json["eye_pouch_severity"] as JsonMap
            : null,
        darkCircle: json["dark_circle"] is JsonMap
            ? json["dark_circle"] as JsonMap
            : null,
        foreheadWrinkle: json["forehead_wrinkle"] is JsonMap
            ? json["forehead_wrinkle"] as JsonMap
            : null,
        crowsFeet: json["crows_feet"] is JsonMap
            ? json["crows_feet"] as JsonMap
            : null,
        eyeFinelines: json["eye_finelines"] is JsonMap
            ? json["eye_finelines"] as JsonMap
            : null,
        glabellaWrinkle: json["glabella_wrinkle"] is JsonMap
            ? json["glabella_wrinkle"] as JsonMap
            : null,
        nasolabialFold: json["nasolabial_fold"] is JsonMap
            ? json["nasolabial_fold"] as JsonMap
            : null,
        nasolabialFoldSeverity: json["nasolabial_fold_severity"] is JsonMap
            ? json["nasolabial_fold_severity"] as JsonMap
            : null,
        skinType:
            json["skin_type"] is JsonMap ? json["skin_type"] as JsonMap : null,
        details: json["details"] is JsonMap ? json["details"] as JsonMap : null,
        poresForehead: json["pores_forehead"] is JsonMap
            ? json["pores_forehead"] as JsonMap
            : null,
        poresLeftCheek: json["pores_left_cheek"] is JsonMap
            ? json["pores_left_cheek"] as JsonMap
            : null,
        poresRightCheek: json["pores_right_cheek"] is JsonMap
            ? json["pores_right_cheek"] as JsonMap
            : null,
        poresJaw:
            json["pores_jaw"] is JsonMap ? json["pores_jaw"] as JsonMap : null,
        blackhead:
            json["blackhead"] is JsonMap ? json["blackhead"] as JsonMap : null,
        acne: json["acne"] is JsonMap ? json["acne"] as JsonMap : null,
        rectangle: json["rectangle"] is List
            ? List<Object?>.from(json["rectangle"] as List)
            : null,
        mole: json["mole"] is JsonMap ? json["mole"] as JsonMap : null,
        closedComedones: json["closed_comedones"] is JsonMap
            ? json["closed_comedones"] as JsonMap
            : null,
        skinSpot:
            json["skin_spot"] is JsonMap ? json["skin_spot"] as JsonMap : null,
        faceMaps:
            json["face_maps"] is JsonMap ? json["face_maps"] as JsonMap : null,
        redArea: json["red_area"]?.toString(),
        sensitivity: json["sensitivity"] is JsonMap
            ? json["sensitivity"] as JsonMap
            : null,
        sensitivityArea: (json["sensitivity_area"] as num?)?.toDouble(),
        sensitivityIntensity:
            (json["sensitivity_intensity"] as num?)?.toDouble(),
      );

  /// Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds \[-45,45\]).
  final List<Object?>? warning;

  /// The position of the face rectangle box.
  final JsonMap? faceRectangle;

  /// The vertical coordinate of the pixel point in the upper-left corner of the rectangle box.
  final double? top;

  /// The horizontal coordinate of the pixel point in the upper-left corner of the rectangle.
  final double? left;

  /// The width of the rectangle box.
  final double? width;

  /// The height of the rectangle box.
  final double? height;

  /// Results of face skin analysis.
  final JsonMap? result;

  /// Skin color test results.
  final JsonMap? skinColor;

  /// Skin color. 0: Transparent white. 1: White. 2: Naturally. 3: Wheat. 4: Dark.
  final int? value;

  /// Confidence.
  final double? confidence;

  /// Returns skin color classification information based on the ITA (Individual Typology Angle) standard. **NOTE**
  final JsonMap? skintoneIta;

  /// Angle value.
  final double? iTA;

  /// Classified according to the skin tone of ITA. 0: Very light. 1: Light. 2: Intermediate. 3: Tan. 4: Brown. 5: Dark. 6: Abnormal color values that may be caused by weak lighting conditions or overexposure.
  final int? skintone;

  /// Returns skin tone classification information based on HA (Hue Angle). **NOTE**
  final JsonMap? skinHueHa;

  /// HA angle value.
  final double? hA;

  /// Skin age test results.
  final JsonMap? skinAge;

  /// Results of the double eyelid test on the left eye.
  final JsonMap? leftEyelids;

  /// Results of the double eyelid test on the right eye.
  final JsonMap? rightEyelids;

  /// Eye bag test results.
  final JsonMap? eyePouch;

  /// Severity of puffiness under the eyes (return when puffiness test result is 1)
  final JsonMap? eyePouchSeverity;

  /// Dark circles test results.
  final JsonMap? darkCircle;

  /// Results of the head-lift test.
  final JsonMap? foreheadWrinkle;

  /// Fishtail test results.
  final JsonMap? crowsFeet;

  /// Results of the eye fine lines test.
  final JsonMap? eyeFinelines;

  /// Results of the interbrow line test.
  final JsonMap? glabellaWrinkle;

  /// Results of the forehead line test.
  final JsonMap? nasolabialFold;

  /// Severity of the forehead lines (returned when the result of the forehead line test is 1)
  final JsonMap? nasolabialFoldSeverity;

  /// Skin texture test results.
  final JsonMap? skinType;

  /// The confidence level of each classification.
  final JsonMap? details;

  /// Forehead pore test results.
  final JsonMap? poresForehead;

  /// Results of the left cheek pore test.
  final JsonMap? poresLeftCheek;

  /// Results of the right cheek pore test.
  final JsonMap? poresRightCheek;

  /// Chin pore test results.
  final JsonMap? poresJaw;

  /// Blackhead test results.
  final JsonMap? blackhead;

  /// Acne test results.
  final JsonMap? acne;

  /// The location of each pimple box.
  final List<Object?>? rectangle;

  /// Mole test results.
  final JsonMap? mole;

  /// Closure returns the result.
  final JsonMap? closedComedones;

  /// Spot detection results.
  final JsonMap? skinSpot;

  /// Returns the skin chromatography visualization image set in the entry (return_maps).
  final JsonMap? faceMaps;

  /// Red zone map. jpeg images for base64.
  final String? redArea;

  /// The sensitivity of the human face within the photo. This return value must be used with the red area map, you need to set the return red area map ("red_area") in the input parameter return_maps first.
  final JsonMap? sensitivity;

  /// Sensitive redness areas account for the proportion of cheeks and T-zone.
  final double? sensitivityArea;

  /// The intensity of redness in sensitive areas.
  final double? sensitivityIntensity;
}

typedef PortraitSkinAnalysisAdvancedResponse
    = AILabResponse<PortraitSkinAnalysisAdvancedResponseData>;

final class PortraitSkinAnalysisProfessionalParams {
  const PortraitSkinAnalysisProfessionalParams({
    required this.image,
    this.leftSideImage,
    this.rightSideImage,
    this.returnMaps,
    this.returnMarks,
    this.roiOutlineColor,
    this.returnSideResults,
  });

  /// Main Image.
  final AILabFile image;

  /// Side face picture.(Left)
  final AILabFile? leftSideImage;

  /// Side face picture.(Right)
  final AILabFile? rightSideImage;

  /// The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details
  final String? returnMaps;

  /// The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details
  final String? returnMarks;

  /// Customize the color. More Details
  final String? roiOutlineColor;

  /// The side face information that needs to be returned. Use commas to separate multiple types. More Details
  final String? returnSideResults;

  Map<String, Object?> toMap() => {
        "image": image,
        "left_side_image": leftSideImage,
        "right_side_image": rightSideImage,
        "return_maps": returnMaps,
        "return_marks": returnMarks,
        "roi_outline_color": roiOutlineColor,
        "return_side_results": returnSideResults,
      };
}

final class PortraitSkinAnalysisProfessionalResponseData {
  const PortraitSkinAnalysisProfessionalResponseData({
    this.leftSideResult,
    this.rightSideResult,
    this.faceRectangle,
    this.result,
  });

  factory PortraitSkinAnalysisProfessionalResponseData.fromJson(JsonMap json) =>
      PortraitSkinAnalysisProfessionalResponseData(
        leftSideResult: json["left_side_result"]?.toString(),
        rightSideResult: json["right_side_result"]?.toString(),
        faceRectangle: json["face_rectangle"] is JsonMap
            ? json["face_rectangle"] as JsonMap
            : null,
        result: json["result"] is JsonMap ? json["result"] as JsonMap : null,
      );

  /// Results of side face analysis. More Details
  final String? leftSideResult;

  /// Results of side face analysis. More Details
  final String? rightSideResult;

  /// Face position. More Details
  final JsonMap? faceRectangle;

  /// Results of face skin analysis. More Details
  final JsonMap? result;
}

typedef PortraitSkinAnalysisProfessionalResponse
    = AILabResponse<PortraitSkinAnalysisProfessionalResponseData>;

final class PortraitSkinDiseaseDetectionParams {
  const PortraitSkinDiseaseDetectionParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class PortraitSkinDiseaseDetectionResponseData {
  const PortraitSkinDiseaseDetectionResponseData({
    this.bodyPart,
    this.imageQuality,
    this.imageType,
    this.resultsEnglish,
    this.acne,
    this.actinicKeratosis,
    this.alopeciaAndrogenetica,
    this.alopeciaAreata,
    this.bullousDermatosis,
    this.chloasma,
    this.corn,
    this.dermatofibroma,
    this.eczemaDermatitis,
    this.erysipelas,
    this.erythemaMultiforme,
    this.folliculitis,
    this.furuncle,
    this.haemangioma,
    this.herpes,
    this.herpesSimplex,
    this.igaVasculitis,
    this.keloid,
    this.keratosisFollicularism,
    this.lichenPlanus,
    this.lupusErythematosus,
    this.molluscumContagiosum,
    this.nevus,
    this.paronychia,
    this.pityriasisAlba,
    this.pityriasisRosea,
    this.prurigoNodularis,
    this.psoriasis,
    this.rosacea,
    this.sebaceousCyst,
    this.sebaceousnevus,
    this.seborrheicDermatitis,
    this.seborrheicKeratosis,
    this.skinTag,
    this.stasisDermatitis,
    this.syringoma,
    this.tineaCapitis,
    this.tineaCorporis,
    this.tineaCruris,
    this.tineaManuum,
    this.tineaPedis,
    this.tineaUnguium,
    this.tineaVersicolor,
    this.urticaria,
    this.urticariaPapular,
    this.varicella,
    this.verrucaPlana,
    this.verrucaVulgaris,
    this.vitiligo,
  });

  factory PortraitSkinDiseaseDetectionResponseData.fromJson(JsonMap json) =>
      PortraitSkinDiseaseDetectionResponseData(
        bodyPart: json["body_part"]?.toString(),
        imageQuality: (json["image_quality"] as num?)?.toDouble(),
        imageType: json["image_type"]?.toString(),
        resultsEnglish: json["results_english"] is JsonMap
            ? json["results_english"] as JsonMap
            : null,
        acne: (json["acne"] as num?)?.toDouble(),
        actinicKeratosis: (json["actinic_keratosis"] as num?)?.toDouble(),
        alopeciaAndrogenetica:
            (json["alopecia_androgenetica"] as num?)?.toDouble(),
        alopeciaAreata: (json["alopecia_areata"] as num?)?.toDouble(),
        bullousDermatosis: (json["bullous_dermatosis"] as num?)?.toDouble(),
        chloasma: (json["chloasma"] as num?)?.toDouble(),
        corn: (json["corn"] as num?)?.toDouble(),
        dermatofibroma: (json["dermatofibroma"] as num?)?.toDouble(),
        eczemaDermatitis: (json["eczema_dermatitis"] as num?)?.toDouble(),
        erysipelas: (json["erysipelas"] as num?)?.toDouble(),
        erythemaMultiforme: (json["erythema_multiforme"] as num?)?.toDouble(),
        folliculitis: (json["folliculitis"] as num?)?.toDouble(),
        furuncle: (json["furuncle"] as num?)?.toDouble(),
        haemangioma: (json["haemangioma"] as num?)?.toDouble(),
        herpes: (json["herpes"] as num?)?.toDouble(),
        herpesSimplex: (json["herpes_simplex"] as num?)?.toDouble(),
        igaVasculitis: (json["iga_vasculitis"] as num?)?.toDouble(),
        keloid: (json["keloid"] as num?)?.toDouble(),
        keratosisFollicularism:
            (json["keratosis_follicularism"] as num?)?.toDouble(),
        lichenPlanus: (json["lichen_planus"] as num?)?.toDouble(),
        lupusErythematosus: (json["lupus_erythematosus"] as num?)?.toDouble(),
        molluscumContagiosum:
            (json["molluscum_contagiosum"] as num?)?.toDouble(),
        nevus: (json["nevus"] as num?)?.toDouble(),
        paronychia: (json["paronychia"] as num?)?.toDouble(),
        pityriasisAlba: (json["pityriasis_alba"] as num?)?.toDouble(),
        pityriasisRosea: (json["pityriasis_rosea"] as num?)?.toDouble(),
        prurigoNodularis: (json["prurigo_nodularis"] as num?)?.toDouble(),
        psoriasis: (json["psoriasis"] as num?)?.toDouble(),
        rosacea: (json["rosacea"] as num?)?.toDouble(),
        sebaceousCyst: (json["sebaceous_cyst"] as num?)?.toDouble(),
        sebaceousnevus: (json["sebaceousnevus"] as num?)?.toDouble(),
        seborrheicDermatitis:
            (json["seborrheic_dermatitis"] as num?)?.toDouble(),
        seborrheicKeratosis: (json["seborrheic_keratosis"] as num?)?.toDouble(),
        skinTag: (json["skin_tag"] as num?)?.toDouble(),
        stasisDermatitis: (json["stasis_dermatitis"] as num?)?.toDouble(),
        syringoma: (json["syringoma"] as num?)?.toDouble(),
        tineaCapitis: (json["tinea_capitis"] as num?)?.toDouble(),
        tineaCorporis: (json["tinea_corporis"] as num?)?.toDouble(),
        tineaCruris: (json["tinea_cruris"] as num?)?.toDouble(),
        tineaManuum: (json["tinea_manuum"] as num?)?.toDouble(),
        tineaPedis: (json["tinea_pedis"] as num?)?.toDouble(),
        tineaUnguium: (json["tinea_unguium"] as num?)?.toDouble(),
        tineaVersicolor: (json["tinea_versicolor"] as num?)?.toDouble(),
        urticaria: (json["urticaria"] as num?)?.toDouble(),
        urticariaPapular: (json["urticaria_papular"] as num?)?.toDouble(),
        varicella: (json["varicella"] as num?)?.toDouble(),
        verrucaPlana: (json["verruca_plana"] as num?)?.toDouble(),
        verrucaVulgaris: (json["verruca_vulgaris"] as num?)?.toDouble(),
        vitiligo: (json["vitiligo"] as num?)?.toDouble(),
      );

  /// Skin lesion site identification. scalp: Scalp. face: Face. neck: Neck. arm: Arm. chest: Chest. abdomen: Abdomen. oxter: Axilla. back: Back. waist: Lumbar region. hand: Hand. genitals: External genitalia. cruris: Groin / Inguinal region. leg: Leg. foot: Foot. unknown: Unknown.
  final String? bodyPart;

  /// Image quality score.
  final double? imageQuality;

  /// Image classification.
  final String? imageType;

  /// 【English】The predicted results. Contains Key-Value pairs, where Key is the disease name and Value is the probability.
  final JsonMap? resultsEnglish;

  /// Acne
  final double? acne;

  /// Actinic Keratosis
  final double? actinicKeratosis;

  /// Alopecia Androgenetica
  final double? alopeciaAndrogenetica;

  /// Alopecia Areata
  final double? alopeciaAreata;

  /// Bullous Dermatosis
  final double? bullousDermatosis;

  /// Chloasma
  final double? chloasma;

  /// Corn
  final double? corn;

  /// Dermatofibroma
  final double? dermatofibroma;

  /// Eczema Dermatitis
  final double? eczemaDermatitis;

  /// Erysipelas
  final double? erysipelas;

  /// Erythema Multiforme
  final double? erythemaMultiforme;

  /// Folliculitis
  final double? folliculitis;

  /// Furuncle
  final double? furuncle;

  /// Haemangioma
  final double? haemangioma;

  /// Herpes
  final double? herpes;

  /// Herpes Simplex
  final double? herpesSimplex;

  /// Iga Vasculitis
  final double? igaVasculitis;

  /// Keloid
  final double? keloid;

  /// Keratosis Follicularism
  final double? keratosisFollicularism;

  /// Lichen Planus
  final double? lichenPlanus;

  /// Lupus Erythematosus
  final double? lupusErythematosus;

  /// Molluscum Contagiosum
  final double? molluscumContagiosum;

  /// Nevus
  final double? nevus;

  /// Paronychia
  final double? paronychia;

  /// Pityriasis Alba
  final double? pityriasisAlba;

  /// Pityriasis Rosea
  final double? pityriasisRosea;

  /// Prurigo Nodularis
  final double? prurigoNodularis;

  /// Psoriasis
  final double? psoriasis;

  /// Rosacea
  final double? rosacea;

  /// Sebaceous Cyst
  final double? sebaceousCyst;

  /// Sebaceousnevus
  final double? sebaceousnevus;

  /// Seborrheic Dermatitis
  final double? seborrheicDermatitis;

  /// Seborrheic Keratosis
  final double? seborrheicKeratosis;

  /// Skin Tag
  final double? skinTag;

  /// Stasis Dermatitis
  final double? stasisDermatitis;

  /// Syringoma
  final double? syringoma;

  /// Tinea Capitis
  final double? tineaCapitis;

  /// Tinea Corporis
  final double? tineaCorporis;

  /// Tinea Cruris
  final double? tineaCruris;

  /// Tinea Manuum
  final double? tineaManuum;

  /// Tinea Pedis
  final double? tineaPedis;

  /// Tinea Unguium
  final double? tineaUnguium;

  /// Tinea Versicolor
  final double? tineaVersicolor;

  /// Urticaria
  final double? urticaria;

  /// Urticaria Papular
  final double? urticariaPapular;

  /// Varicella
  final double? varicella;

  /// Verruca Plana
  final double? verrucaPlana;

  /// Verruca Vulgaris
  final double? verrucaVulgaris;

  /// Vitiligo
  final double? vitiligo;
}

typedef PortraitSkinDiseaseDetectionResponse
    = AILabResponse<PortraitSkinDiseaseDetectionResponseData>;

final class PortraitTryOnClothesParams {
  const PortraitTryOnClothesParams({
    required this.taskType,
    required this.personImage,
    required this.clothesImage,
    required this.clothesType,
  });

  /// Task Type. async: Asynchronous tasks.
  final String taskType;

  /// Portrait image.
  final AILabFile personImage;

  /// Clothing image.
  final AILabFile clothesImage;

  /// Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing.
  final String clothesType;

  Map<String, Object?> toMap() => {
        "task_type": taskType,
        "person_image": personImage,
        "clothes_image": clothesImage,
        "clothes_type": clothesType,
      };
}

final class PortraitTryOnClothesResponseData {
  const PortraitTryOnClothesResponseData({
    this.taskType,
    this.taskId,
  });

  factory PortraitTryOnClothesResponseData.fromJson(JsonMap json) =>
      PortraitTryOnClothesResponseData(
        taskType: json["task_type"]?.toString(),
        taskId: json["task_id"]?.toString(),
      );

  /// Task Type. async: Asynchronous tasks.
  final String? taskType;

  /// Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
  final String? taskId;
}

typedef PortraitTryOnClothesResponse
    = AILabResponse<PortraitTryOnClothesResponseData>;

final class PortraitTryOnClothesProParams {
  const PortraitTryOnClothesProParams({
    required this.taskType,
    required this.personImage,
    required this.topGarment,
    this.bottomGarment,
    this.resolution,
    this.restoreFace,
  });

  /// Task Type. async: Asynchronous tasks.
  final String taskType;

  /// Portrait Image.
  final AILabFile personImage;

  /// Upper Body Clothing Image.
  final AILabFile topGarment;

  /// Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.
  final AILabFile? bottomGarment;

  /// Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px.
  final int? resolution;

  /// Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face.
  final bool? restoreFace;

  Map<String, Object?> toMap() => {
        "task_type": taskType,
        "person_image": personImage,
        "top_garment": topGarment,
        "bottom_garment": bottomGarment,
        "resolution": resolution,
        "restore_face": restoreFace,
      };
}

final class PortraitTryOnClothesProResponseData {
  const PortraitTryOnClothesProResponseData({
    this.taskType,
    this.taskId,
  });

  factory PortraitTryOnClothesProResponseData.fromJson(JsonMap json) =>
      PortraitTryOnClothesProResponseData(
        taskType: json["task_type"]?.toString(),
        taskId: json["task_id"]?.toString(),
      );

  /// Task Type. async: Asynchronous tasks.
  final String? taskType;

  /// Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
  final String? taskId;
}

typedef PortraitTryOnClothesProResponse
    = AILabResponse<PortraitTryOnClothesProResponseData>;

final class PortraitFacialBlurringParams {
  const PortraitFacialBlurringParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class PortraitFacialBlurringResponseData {
  const PortraitFacialBlurringResponseData({
    this.imageUrl,
  });

  factory PortraitFacialBlurringResponseData.fromJson(JsonMap json) =>
      PortraitFacialBlurringResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitFacialBlurringResponse
    = AILabResponse<PortraitFacialBlurringResponseData>;

final class PortraitExpressionEditingParams {
  const PortraitExpressionEditingParams({
    required this.imageTarget,
    required this.serviceChoice,
  });

  final AILabFile imageTarget;

  /// Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes.
  final int serviceChoice;

  Map<String, Object?> toMap() => {
        "image_target": imageTarget,
        "service_choice": serviceChoice,
      };
}

final class PortraitExpressionEditingResponseData {
  const PortraitExpressionEditingResponseData({
    this.image,
  });

  factory PortraitExpressionEditingResponseData.fromJson(JsonMap json) =>
      PortraitExpressionEditingResponseData(
        image: json["image"]?.toString(),
      );

  /// The result image, returning the Base64 encoding of the image.
  final String? image;
}

typedef PortraitExpressionEditingResponse
    = AILabResponse<PortraitExpressionEditingResponseData>;

final class PortraitFaceRestorationEnhancementParams {
  const PortraitFaceRestorationEnhancementParams({
    required this.image,
  });

  final AILabFile image;

  Map<String, Object?> toMap() => {
        "image": image,
      };
}

final class PortraitFaceRestorationEnhancementResponseData {
  const PortraitFaceRestorationEnhancementResponseData({
    this.imageUrl,
  });

  factory PortraitFaceRestorationEnhancementResponseData.fromJson(
          JsonMap json) =>
      PortraitFaceRestorationEnhancementResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitFaceRestorationEnhancementResponse
    = AILabResponse<PortraitFaceRestorationEnhancementResponseData>;

final class PortraitFaceAttributeEditingParams {
  const PortraitFaceAttributeEditingParams({
    required this.image,
    required this.actionType,
    this.qualityControl,
    this.faceLocation,
  });

  final AILabFile image;

  /// Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift.
  final String actionType;

  /// Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details
  final String? qualityControl;

  /// When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details
  final String? faceLocation;

  Map<String, Object?> toMap() => {
        "image": image,
        "action_type": actionType,
        "quality_control": qualityControl,
        "face_location": faceLocation,
      };
}

final class PortraitFaceAttributeEditingResponseData {
  const PortraitFaceAttributeEditingResponseData({
    this.result,
    this.image,
  });

  factory PortraitFaceAttributeEditingResponseData.fromJson(JsonMap json) =>
      PortraitFaceAttributeEditingResponseData(
        result: json["result"] is JsonMap ? json["result"] as JsonMap : null,
        image: json["image"]?.toString(),
      );

  /// The content of the result data returned.
  final JsonMap? result;

  /// The BASE64 value of the edited image.
  final String? image;
}

typedef PortraitFaceAttributeEditingResponse
    = AILabResponse<PortraitFaceAttributeEditingResponseData>;

final class PortraitFacialBeautificationParams {
  const PortraitFacialBeautificationParams({
    required this.image,
    required this.sharp,
    required this.smooth,
    required this.white,
  });

  final AILabFile image;

  /// Sharpness level. A higher value indicates a greater degree of sharpness.
  final double sharp;

  /// Smoothness level. A higher value results in a smoother appearance.
  final double smooth;

  /// Whitening level. A higher value leads to lighter skin.
  final double white;

  Map<String, Object?> toMap() => {
        "image": image,
        "sharp": sharp,
        "smooth": smooth,
        "white": white,
      };
}

final class PortraitFacialBeautificationResponseData {
  const PortraitFacialBeautificationResponseData({
    this.imageUrl,
  });

  factory PortraitFacialBeautificationResponseData.fromJson(JsonMap json) =>
      PortraitFacialBeautificationResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitFacialBeautificationResponse
    = AILabResponse<PortraitFacialBeautificationResponseData>;

final class PortraitFacialBeautificationAdvancedParams {
  const PortraitFacialBeautificationAdvancedParams({
    required this.image,
    this.whitening,
    this.smoothing,
    this.faceLifting,
    this.eyeEnlarging,
  });

  final AILabFile image;

  /// Whitening level: 0 means no whitening, 100 represents the highest level.
  final int? whitening;

  /// Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level.
  final int? smoothing;

  /// Face slimming level: 0 means no face slimming, 100 represents the highest level.
  final int? faceLifting;

  /// Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level.
  final int? eyeEnlarging;

  Map<String, Object?> toMap() => {
        "image": image,
        "whitening": whitening,
        "smoothing": smoothing,
        "face_lifting": faceLifting,
        "eye_enlarging": eyeEnlarging,
      };
}

final class PortraitFacialBeautificationAdvancedResponseData {
  const PortraitFacialBeautificationAdvancedResponseData({
    this.resultImage,
  });

  factory PortraitFacialBeautificationAdvancedResponseData.fromJson(
          JsonMap json) =>
      PortraitFacialBeautificationAdvancedResponseData(
        resultImage: json["result_image"]?.toString(),
      );

  /// Returns the base64 data of the processed image.
  final String? resultImage;
}

typedef PortraitFacialBeautificationAdvancedResponse
    = AILabResponse<PortraitFacialBeautificationAdvancedResponseData>;

final class PortraitFacialBeautificationProParams {
  const PortraitFacialBeautificationProParams({
    required this.image,
    this.whitening,
    this.smoothing,
    this.thinface,
    this.shrinkFace,
    this.enlargeEye,
    this.removeEyebrow,
    this.filterType,
    this.taskType,
  });

  final AILabFile image;

  /// Whitening Degree. 0 means no whitening effect, 100 represents the highest degree.
  final int? whitening;

  /// Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree.
  final int? smoothing;

  /// Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree.
  final int? thinface;

  /// Small Face Degree. 0 means no small face effect, 100 represents the highest degree.
  final int? shrinkFace;

  /// Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree.
  final int? enlargeEye;

  /// Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree.
  final int? removeEyebrow;

  /// Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain.
  final int? filterType;

  /// Task Type. sync: Synchronous tasks.
  final String? taskType;

  Map<String, Object?> toMap() => {
        "image": image,
        "whitening": whitening,
        "smoothing": smoothing,
        "thinface": thinface,
        "shrink_face": shrinkFace,
        "enlarge_eye": enlargeEye,
        "remove_eyebrow": removeEyebrow,
        "filter_type": filterType,
        "task_type": taskType,
      };
}

final class PortraitFacialBeautificationProResponseData {
  const PortraitFacialBeautificationProResponseData({
    this.taskType,
    this.result,
  });

  factory PortraitFacialBeautificationProResponseData.fromJson(JsonMap json) =>
      PortraitFacialBeautificationProResponseData(
        taskType: json["task_type"]?.toString(),
        result: json["result"]?.toString(),
      );

  /// Task Type. sync: Synchronous tasks.
  final String? taskType;

  /// Returns the base64 data of the processed image.
  final String? result;
}

typedef PortraitFacialBeautificationProResponse
    = AILabResponse<PortraitFacialBeautificationProResponseData>;

final class PortraitFacialFiltersParams {
  const PortraitFacialFiltersParams({
    required this.image,
    required this.resourceType,
    required this.strength,
  });

  final AILabFile image;

  /// Picture style. More Details
  final String resourceType;

  /// Filter intensity.
  final double strength;

  Map<String, Object?> toMap() => {
        "image": image,
        "resource_type": resourceType,
        "strength": strength,
      };
}

final class PortraitFacialFiltersResponseData {
  const PortraitFacialFiltersResponseData({
    this.imageUrl,
  });

  factory PortraitFacialFiltersResponseData.fromJson(JsonMap json) =>
      PortraitFacialFiltersResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitFacialFiltersResponse
    = AILabResponse<PortraitFacialFiltersResponseData>;

final class PortraitFaceFusionParams {
  const PortraitFaceFusionParams({
    required this.imageTarget,
    required this.imageTemplate,
    this.sourceSimilarity,
  });

  /// Target image.
  final AILabFile imageTarget;

  /// Template images.
  final AILabFile imageTemplate;

  /// Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image.
  final double? sourceSimilarity;

  Map<String, Object?> toMap() => {
        "image_target": imageTarget,
        "image_template": imageTemplate,
        "source_similarity": sourceSimilarity,
      };
}

final class PortraitFaceFusionResponseData {
  const PortraitFaceFusionResponseData({
    this.image,
  });

  factory PortraitFaceFusionResponseData.fromJson(JsonMap json) =>
      PortraitFaceFusionResponseData(
        image: json["image"]?.toString(),
      );

  /// The result image, returning the Base64 encoding of the image.
  final String? image;
}

typedef PortraitFaceFusionResponse
    = AILabResponse<PortraitFaceFusionResponseData>;

final class PortraitHairstyleEditingParams {
  const PortraitHairstyleEditingParams({
    required this.imageTarget,
    this.hairType,
  });

  final AILabFile imageTarget;

  /// Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair.
  final int? hairType;

  Map<String, Object?> toMap() => {
        "image_target": imageTarget,
        "hair_type": hairType,
      };
}

final class PortraitHairstyleEditingResponseData {
  const PortraitHairstyleEditingResponseData({
    this.image,
  });

  factory PortraitHairstyleEditingResponseData.fromJson(JsonMap json) =>
      PortraitHairstyleEditingResponseData(
        image: json["image"]?.toString(),
      );

  /// The result image, returning the Base64 encoding of the image.
  final String? image;
}

typedef PortraitHairstyleEditingResponse
    = AILabResponse<PortraitHairstyleEditingResponseData>;

final class PortraitHairstyleEditingProParams {
  const PortraitHairstyleEditingProParams({
    required this.taskType,
    required this.image,
    required this.hairStyle,
    this.color,
    this.imageSize,
    this.mask,
    this.bangs,
    this.mode,
    this.reference,
  });

  /// Task Type. async: Asynchronous tasks.
  final String taskType;

  /// Main image.
  final AILabFile image;

  /// Hairstyle. More Details
  final String hairStyle;

  /// Color. More Details
  final String? color;

  /// Returns the number of images.
  final int? imageSize;

  /// Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically.
  final AILabFile? mask;

  /// Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison
  final int? bangs;

  /// Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison
  final int? mode;

  /// Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison
  final int? reference;

  Map<String, Object?> toMap() => {
        "task_type": taskType,
        "image": image,
        "hair_style": hairStyle,
        "color": color,
        "image_size": imageSize,
        "mask": mask,
        "bangs": bangs,
        "mode": mode,
        "reference": reference,
      };
}

final class PortraitHairstyleEditingProResponseData {
  const PortraitHairstyleEditingProResponseData({
    this.taskType,
    this.taskId,
  });

  factory PortraitHairstyleEditingProResponseData.fromJson(JsonMap json) =>
      PortraitHairstyleEditingProResponseData(
        taskType: json["task_type"]?.toString(),
        taskId: json["task_id"]?.toString(),
      );

  /// Task Type. async: Asynchronous tasks.
  final String? taskType;

  /// Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
  final String? taskId;
}

typedef PortraitHairstyleEditingProResponse
    = AILabResponse<PortraitHairstyleEditingProResponseData>;

final class PortraitLipsColorChangerParams {
  const PortraitLipsColorChangerParams({
    required this.image,
    required this.lipColorInfos,
  });

  final AILabFile image;

  /// Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description
  final String lipColorInfos;

  Map<String, Object?> toMap() => {
        "image": image,
        "lip_color_infos": lipColorInfos,
      };
}

final class PortraitLipsColorChangerResponseData {
  const PortraitLipsColorChangerResponseData({
    this.resultImage,
  });

  factory PortraitLipsColorChangerResponseData.fromJson(JsonMap json) =>
      PortraitLipsColorChangerResponseData(
        resultImage: json["result_image"]?.toString(),
      );

  /// Returns the base64 data of the processed image.
  final String? resultImage;
}

typedef PortraitLipsColorChangerResponse
    = AILabResponse<PortraitLipsColorChangerResponseData>;

final class PortraitLivePhotosParams {
  const PortraitLivePhotosParams({
    required this.imageTarget,
    this.type,
  });

  final AILabFile imageTarget;

  /// Live photo type. 0: Avatar version. 1: Full body version.
  final int? type;

  Map<String, Object?> toMap() => {
        "image_target": imageTarget,
        "type": type,
      };
}

final class PortraitLivePhotosResponseData {
  const PortraitLivePhotosResponseData({
    this.video,
  });

  factory PortraitLivePhotosResponseData.fromJson(JsonMap json) =>
      PortraitLivePhotosResponseData(
        video: json["video"]?.toString(),
      );

  /// Returns the base64 encoded string of the generated video.
  final String? video;
}

typedef PortraitLivePhotosResponse
    = AILabResponse<PortraitLivePhotosResponseData>;

final class PortraitCartoonYourselfParams {
  const PortraitCartoonYourselfParams({
    required this.image,
    required this.type,
  });

  final AILabFile image;

  /// Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects
  final String type;

  Map<String, Object?> toMap() => {
        "image": image,
        "type": type,
      };
}

final class PortraitCartoonYourselfResponseData {
  const PortraitCartoonYourselfResponseData({
    this.imageUrl,
  });

  factory PortraitCartoonYourselfResponseData.fromJson(JsonMap json) =>
      PortraitCartoonYourselfResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitCartoonYourselfResponse
    = AILabResponse<PortraitCartoonYourselfResponseData>;

final class PortraitIntelligentBeautificationParams {
  const PortraitIntelligentBeautificationParams({
    required this.imageTarget,
    this.multiFace,
    this.beautyLevel,
    this.taskType,
  });

  final AILabFile imageTarget;

  /// Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed.
  final String? multiFace;

  /// Beauty level.
  final double? beautyLevel;

  /// Task Type. sync: Synchronous tasks.
  final String? taskType;

  Map<String, Object?> toMap() => {
        "image_target": imageTarget,
        "multi_face": multiFace,
        "beauty_level": beautyLevel,
        "task_type": taskType,
      };
}

final class PortraitIntelligentBeautificationResponseData {
  const PortraitIntelligentBeautificationResponseData({
    this.taskType,
    this.image,
  });

  factory PortraitIntelligentBeautificationResponseData.fromJson(
          JsonMap json) =>
      PortraitIntelligentBeautificationResponseData(
        taskType: json["task_type"]?.toString(),
        image: json["image"]?.toString(),
      );

  /// Task Type. sync: Synchronous tasks.
  final String? taskType;

  /// The result image, returning the Base64 encoding of the image.
  final String? image;
}

typedef PortraitIntelligentBeautificationResponse
    = AILabResponse<PortraitIntelligentBeautificationResponseData>;

final class PortraitIntelligentFaceSlimmingParams {
  const PortraitIntelligentFaceSlimmingParams({
    required this.image,
    this.slimDegree,
  });

  final AILabFile image;

  /// Standard strength. The higher the value, the more pronounced the face slimming effect.
  final double? slimDegree;

  Map<String, Object?> toMap() => {
        "image": image,
        "slim_degree": slimDegree,
      };
}

final class PortraitIntelligentFaceSlimmingResponseData {
  const PortraitIntelligentFaceSlimmingResponseData({
    this.imageUrl,
  });

  factory PortraitIntelligentFaceSlimmingResponseData.fromJson(JsonMap json) =>
      PortraitIntelligentFaceSlimmingResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitIntelligentFaceSlimmingResponse
    = AILabResponse<PortraitIntelligentFaceSlimmingResponseData>;

final class PortraitIntelligentSkinRetouchingParams {
  const PortraitIntelligentSkinRetouchingParams({
    required this.image,
    this.retouchDegree,
    this.whiteningDegree,
  });

  final AILabFile image;

  /// Dermabrasion intensity. The higher the value, the less visible the skin texture.
  final double? retouchDegree;

  /// Whitening strength. The higher the value, the whiter the skin.
  final double? whiteningDegree;

  Map<String, Object?> toMap() => {
        "image": image,
        "retouch_degree": retouchDegree,
        "whitening_degree": whiteningDegree,
      };
}

final class PortraitIntelligentSkinRetouchingResponseData {
  const PortraitIntelligentSkinRetouchingResponseData({
    this.imageUrl,
  });

  factory PortraitIntelligentSkinRetouchingResponseData.fromJson(
          JsonMap json) =>
      PortraitIntelligentSkinRetouchingResponseData(
        imageUrl: json["image_url"]?.toString(),
      );

  /// Resulting image URL address.
  final String? imageUrl;
}

typedef PortraitIntelligentSkinRetouchingResponse
    = AILabResponse<PortraitIntelligentSkinRetouchingResponseData>;

final class PortraitTryOnClothesRefinerParams {
  const PortraitTryOnClothesRefinerParams({
    required this.taskType,
    required this.personImage,
    required this.topGarment,
    required this.coarseImage,
    required this.gender,
    this.bottomGarment,
  });

  /// Task Type. async: Asynchronous tasks.
  final String taskType;

  /// Model image for calling the Try on Clothes API.
  final AILabFile personImage;

  /// Top clothing image for calling the Try on Clothes API.
  final AILabFile topGarment;

  /// Result image obtained from calling the Try on Clothes API.
  final AILabFile coarseImage;

  /// Gender of the person_image. woman: Female. man: Male.
  final String gender;

  /// Bottom clothing image for calling the Try on Clothes API.
  final AILabFile? bottomGarment;

  Map<String, Object?> toMap() => {
        "task_type": taskType,
        "person_image": personImage,
        "top_garment": topGarment,
        "coarse_image": coarseImage,
        "gender": gender,
        "bottom_garment": bottomGarment,
      };
}

final class PortraitTryOnClothesRefinerResponseData {
  const PortraitTryOnClothesRefinerResponseData({
    this.taskType,
    this.taskId,
  });

  factory PortraitTryOnClothesRefinerResponseData.fromJson(JsonMap json) =>
      PortraitTryOnClothesRefinerResponseData(
        taskType: json["task_type"]?.toString(),
        taskId: json["task_id"]?.toString(),
      );

  /// Task Type. async: Asynchronous tasks.
  final String? taskType;

  /// Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.**
  final String? taskId;
}

typedef PortraitTryOnClothesRefinerResponse
    = AILabResponse<PortraitTryOnClothesRefinerResponseData>;
