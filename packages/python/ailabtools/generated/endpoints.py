from typing import Any, Dict, List, BinaryIO, IO, TypedDict, Union

FileInput = Union[bytes, bytearray, memoryview, BinaryIO, IO[bytes]]

class CommonQueryAsyncTaskResultParams(TypedDict, total=False):
    taskId: str  # task_id

class CommonQueryAsyncTaskResultResponseData(TypedDict, total=False):
    taskStatus: int  # task_status

class CommonQueryAsyncTaskResultResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CommonQueryAsyncTaskResultResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CommonQueryAsyncTaskResultParamMap = {
    "taskId": "task_id",
}

def validate_commonQueryAsyncTaskResult_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskId") is None: raise ValueError("Missing required param: taskId")

class CommonQueryCreditsParams(TypedDict, total=False):
    pass

class CommonQueryCreditsResponseData(TypedDict, total=False):
    uniqueSign: str  # unique_sign
    name: str  # name
    balance: float  # balance
    total: float  # total
    lastRechargeBalance: float  # last_recharge_balance
    balanceWarning: float  # balance_warning
    firstBuyTime: int  # first_buy_time
    lastUpdateTime: int  # last_update_time

class CommonQueryCreditsResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: List[CommonQueryCreditsResponseData]
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CommonQueryCreditsParamMap = {
}

def validate_commonQueryCredits_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    return

class CutoutClothingBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image
    outMode: int  # out_mode
    clothClass: str  # cloth_class
    returnForm: str  # return_form

class CutoutClothingBackgroundRemovalResponseData(TypedDict, total=False):
    elements: List[Any]  # elements
    field_0: Dict[str, Any]  # 0
    imageUrl: str  # image_url
    field_1: Dict[str, Any]  # 1
    classUrl: Dict[str, Any]  # class_url
    tops: str  # tops
    coat: str  # coat
    skirt: str  # skirt
    pants: str  # pants
    bag: str  # bag
    shoes: str  # shoes
    hat: str  # hat

class CutoutClothingBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutClothingBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutClothingBackgroundRemovalParamMap = {
    "outMode": "out_mode",
    "clothClass": "cloth_class",
    "returnForm": "return_form",
}

def validate_cutoutClothingBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutProductBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image
    returnForm: str  # return_form

class CutoutProductBackgroundRemovalResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class CutoutProductBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutProductBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutProductBackgroundRemovalParamMap = {
    "returnForm": "return_form",
}

def validate_cutoutProductBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutFoodBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image
    returnForm: str  # return_form

class CutoutFoodBackgroundRemovalResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class CutoutFoodBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutFoodBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutFoodBackgroundRemovalParamMap = {
    "returnForm": "return_form",
}

def validate_cutoutFoodBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutUniversalBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image
    returnForm: str  # return_form

class CutoutUniversalBackgroundRemovalResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class CutoutUniversalBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutUniversalBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutUniversalBackgroundRemovalParamMap = {
    "returnForm": "return_form",
}

def validate_cutoutUniversalBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutAvatarExtractionParams(TypedDict, total=False):
    image: FileInput  # image
    returnForm: str  # return_form

class CutoutAvatarExtractionResponseData(TypedDict, total=False):
    elements: List[Any]  # elements
    imageUrl: str  # image_url
    width: int  # width
    height: int  # height
    x: int  # x
    y: int  # y

class CutoutAvatarExtractionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutAvatarExtractionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutAvatarExtractionParamMap = {
    "returnForm": "return_form",
}

def validate_cutoutAvatarExtraction_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutHairExtractionParams(TypedDict, total=False):
    image: FileInput  # image

class CutoutHairExtractionResponseData(TypedDict, total=False):
    elements: List[Any]  # elements
    imageUrl: str  # image_url
    width: int  # width
    height: int  # height
    x: int  # x
    y: int  # y

class CutoutHairExtractionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutHairExtractionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutHairExtractionParamMap = {
}

def validate_cutoutHairExtraction_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutHumanBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image
    returnForm: str  # return_form

class CutoutHumanBackgroundRemovalResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class CutoutHumanBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutHumanBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutHumanBackgroundRemovalParamMap = {
    "returnForm": "return_form",
}

def validate_cutoutHumanBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageQueryingAsyncTaskResultsParams(TypedDict, total=False):
    jobId: str  # job_id
    type: str  # type

class ImageQueryingAsyncTaskResultsResponseData(TypedDict, total=False):
    pass

class ImageQueryingAsyncTaskResultsResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageQueryingAsyncTaskResultsResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageQueryingAsyncTaskResultsParamMap = {
    "jobId": "job_id",
}

def validate_imageQueryingAsyncTaskResults_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("jobId") is None: raise ValueError("Missing required param: jobId")
    if params.get("type") is None: raise ValueError("Missing required param: type")

class ImageAiImageExtenderParams(TypedDict, total=False):
    customPrompt: str  # custom_prompt
    steps: int  # steps
    strength: float  # strength
    scale: float  # scale
    seed: int  # seed
    maxHeight: int  # max_height
    maxWidth: int  # max_width
    image: FileInput  # image
    top: float  # top
    bottom: float  # bottom
    left: float  # left
    right: float  # right
    mask: FileInput  # mask

class ImageAiImageExtenderResponseData(TypedDict, total=False):
    binaryDataBase64: List[Any]  # binary_data_base64

class ImageAiImageExtenderResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAiImageExtenderResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAiImageExtenderParamMap = {
    "customPrompt": "custom_prompt",
    "maxHeight": "max_height",
    "maxWidth": "max_width",
}

def validate_imageAiImageExtender_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("mask") is not None and not is_file(params.get("mask")): raise ValueError("Invalid file param: mask")

class ImageAiObjectReplacerParams(TypedDict, total=False):
    image: FileInput  # image
    mask: FileInput  # mask
    customPrompt: str  # custom_prompt
    steps: int  # steps
    scale: float  # scale
    seed: int  # seed

class ImageAiObjectReplacerResponseData(TypedDict, total=False):
    binaryDataBase64: List[Any]  # binary_data_base64

class ImageAiObjectReplacerResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAiObjectReplacerResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAiObjectReplacerParamMap = {
    "customPrompt": "custom_prompt",
}

def validate_imageAiObjectReplacer_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("mask") is None: raise ValueError("Missing required param: mask")
    if params.get("mask") is not None and not is_file(params.get("mask")): raise ValueError("Invalid file param: mask")

class ImageAIImageCroppingParams(TypedDict, total=False):
    image: FileInput  # image
    width: int  # width
    height: int  # height

class ImageAIImageCroppingResponseData(TypedDict, total=False):
    url: str  # url
    retainLocation: Dict[str, Any]  # retain_location
    width: int  # width
    height: int  # height
    y: int  # y
    x: int  # x

class ImageAIImageCroppingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAIImageCroppingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAIImageCroppingParamMap = {
}

def validate_imageAIImageCropping_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("width") is None: raise ValueError("Missing required param: width")
    if params.get("height") is None: raise ValueError("Missing required param: height")

class ImageErasureParams(TypedDict, total=False):
    image: FileInput  # image
    userMask: FileInput  # user_mask

class ImageErasureResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class ImageErasureResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageErasureResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageErasureParamMap = {
    "userMask": "user_mask",
}

def validate_imageErasure_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("userMask") is None: raise ValueError("Missing required param: userMask")
    if params.get("userMask") is not None and not is_file(params.get("userMask")): raise ValueError("Invalid file param: userMask")

class ImageInvisibleImageWatermarkParams(TypedDict, total=False):
    functionType: str  # function_type
    originImage: FileInput  # origin_image
    logo: FileInput  # logo
    watermarkImage: FileInput  # watermark_image
    outputFileType: str  # output_file_type
    qualityFactor: int  # quality_factor

class ImageInvisibleImageWatermarkResponseData(TypedDict, total=False):
    watermarkImageUrl: str  # watermark_image_url
    logoUrl: str  # logo_url

class ImageInvisibleImageWatermarkResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageInvisibleImageWatermarkResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageInvisibleImageWatermarkParamMap = {
    "functionType": "function_type",
    "originImage": "origin_image",
    "watermarkImage": "watermark_image",
    "outputFileType": "output_file_type",
    "qualityFactor": "quality_factor",
}

def validate_imageInvisibleImageWatermark_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("functionType") is None: raise ValueError("Missing required param: functionType")
    if params.get("originImage") is not None and not is_file(params.get("originImage")): raise ValueError("Invalid file param: originImage")
    if params.get("logo") is not None and not is_file(params.get("logo")): raise ValueError("Invalid file param: logo")
    if params.get("watermarkImage") is not None and not is_file(params.get("watermarkImage")): raise ValueError("Invalid file param: watermarkImage")

class ImageInvisibleTextWatermarkParams(TypedDict, total=False):
    functionType: str  # function_type
    originImage: FileInput  # origin_image
    text: str  # text
    watermarkImage: FileInput  # watermark_image
    outputFileType: str  # output_file_type
    qualityFactor: int  # quality_factor

class ImageInvisibleTextWatermarkResponseData(TypedDict, total=False):
    watermarkImageUrl: str  # watermark_image_url
    textImageUrl: str  # text_image_url

class ImageInvisibleTextWatermarkResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageInvisibleTextWatermarkResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageInvisibleTextWatermarkParamMap = {
    "functionType": "function_type",
    "originImage": "origin_image",
    "watermarkImage": "watermark_image",
    "outputFileType": "output_file_type",
    "qualityFactor": "quality_factor",
}

def validate_imageInvisibleTextWatermark_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("functionType") is None: raise ValueError("Missing required param: functionType")
    if params.get("originImage") is not None and not is_file(params.get("originImage")): raise ValueError("Invalid file param: originImage")
    if params.get("watermarkImage") is not None and not is_file(params.get("watermarkImage")): raise ValueError("Invalid file param: watermarkImage")

class ImageIntelligentCompositionParams(TypedDict, total=False):
    image: FileInput  # image
    numBoxes: int  # num_boxes

class ImageIntelligentCompositionResponseData(TypedDict, total=False):
    elements: List[Any]  # elements
    minX: int  # min_x
    maxX: int  # max_x
    minY: int  # min_y
    maxY: int  # max_y
    score: float  # score

class ImageIntelligentCompositionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageIntelligentCompositionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageIntelligentCompositionParamMap = {
    "numBoxes": "num_boxes",
}

def validate_imageIntelligentComposition_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImagePhotoEditingParams(TypedDict, total=False):
    image: FileInput  # image
    style: FileInput  # style

class ImagePhotoEditingResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class ImagePhotoEditingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImagePhotoEditingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImagePhotoEditingParamMap = {
}

def validate_imagePhotoEditing_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("style") is None: raise ValueError("Missing required param: style")
    if params.get("style") is not None and not is_file(params.get("style")): raise ValueError("Invalid file param: style")

class ImageRemoveObjectsParams(TypedDict, total=False):
    image: FileInput  # image
    mask: FileInput  # mask

class ImageRemoveObjectsResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class ImageRemoveObjectsResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageRemoveObjectsResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageRemoveObjectsParamMap = {
}

def validate_imageRemoveObjects_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("mask") is None: raise ValueError("Missing required param: mask")
    if params.get("mask") is not None and not is_file(params.get("mask")): raise ValueError("Invalid file param: mask")

class ImageRemoveObjectsAdvancedParams(TypedDict, total=False):
    image: FileInput  # image
    mask: FileInput  # mask
    steps: int  # steps
    strength: float  # strength
    scale: float  # scale
    seed: int  # seed
    dilateSize: int  # dilate_size
    quality: str  # quality

class ImageRemoveObjectsAdvancedResponseData(TypedDict, total=False):
    binaryDataBase64: List[Any]  # binary_data_base64

class ImageRemoveObjectsAdvancedResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageRemoveObjectsAdvancedResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageRemoveObjectsAdvancedParamMap = {
    "dilateSize": "dilate_size",
}

def validate_imageRemoveObjectsAdvanced_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("mask") is None: raise ValueError("Missing required param: mask")
    if params.get("mask") is not None and not is_file(params.get("mask")): raise ValueError("Invalid file param: mask")

class ImageRemoveObjectsProParams(TypedDict, total=False):
    image: FileInput  # image
    mask: FileInput  # mask

class ImageRemoveObjectsProResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class ImageRemoveObjectsProResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageRemoveObjectsProResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageRemoveObjectsProParamMap = {
}

def validate_imageRemoveObjectsPro_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("mask") is None: raise ValueError("Missing required param: mask")
    if params.get("mask") is not None and not is_file(params.get("mask")): raise ValueError("Invalid file param: mask")

class ImageAICartoonGeneratorParams(TypedDict, total=False):
    taskType: str  # task_type
    image: FileInput  # image
    type: str  # type

class ImageAICartoonGeneratorResponseData(TypedDict, total=False):
    taskType: str  # task_type
    taskId: str  # task_id

class ImageAICartoonGeneratorResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAICartoonGeneratorResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAICartoonGeneratorParamMap = {
    "taskType": "task_type",
}

def validate_imageAICartoonGenerator_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskType") is None: raise ValueError("Missing required param: taskType")
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("type") is None: raise ValueError("Missing required param: type")

class ImageColoringParams(TypedDict, total=False):
    image: FileInput  # image

class ImageColoringResponseData(TypedDict, total=False):
    image: str  # image

class ImageColoringResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageColoringResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageColoringParamMap = {
}

def validate_imageColoring_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageStyleTransferParams(TypedDict, total=False):
    image: FileInput  # image
    option: str  # option

class ImageStyleTransferResponseData(TypedDict, total=False):
    image: str  # image

class ImageStyleTransferResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageStyleTransferResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageStyleTransferParamMap = {
}

def validate_imageStyleTransfer_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("option") is None: raise ValueError("Missing required param: option")

class ImageStyleMigrationParams(TypedDict, total=False):
    style: FileInput  # style
    major: FileInput  # major

class ImageStyleMigrationResponseData(TypedDict, total=False):
    url: str  # url
    majorUrl: str  # major_url

class ImageStyleMigrationResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageStyleMigrationResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageStyleMigrationParamMap = {
}

def validate_imageStyleMigration_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("style") is None: raise ValueError("Missing required param: style")
    if params.get("style") is not None and not is_file(params.get("style")): raise ValueError("Invalid file param: style")
    if params.get("major") is None: raise ValueError("Missing required param: major")
    if params.get("major") is not None and not is_file(params.get("major")): raise ValueError("Invalid file param: major")

class ImageColorEnhancementParams(TypedDict, total=False):
    image: FileInput  # image
    outputFormat: str  # output_format
    mode: str  # mode

class ImageColorEnhancementResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class ImageColorEnhancementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageColorEnhancementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageColorEnhancementParamMap = {
    "outputFormat": "output_format",
}

def validate_imageColorEnhancement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("outputFormat") is None: raise ValueError("Missing required param: outputFormat")
    if params.get("mode") is None: raise ValueError("Missing required param: mode")

class ImageContrastEnhancementParams(TypedDict, total=False):
    image: FileInput  # image

class ImageContrastEnhancementResponseData(TypedDict, total=False):
    image: str  # image

class ImageContrastEnhancementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageContrastEnhancementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageContrastEnhancementParamMap = {
}

def validate_imageContrastEnhancement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageDehazeParams(TypedDict, total=False):
    image: FileInput  # image

class ImageDehazeResponseData(TypedDict, total=False):
    image: str  # image

class ImageDehazeResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageDehazeResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageDehazeParamMap = {
}

def validate_imageDehaze_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageLosslessEnlargementParams(TypedDict, total=False):
    image: FileInput  # image
    upscaleFactor: int  # upscale_factor
    mode: str  # mode
    outputFormat: str  # output_format
    outputQuality: int  # output_quality

class ImageLosslessEnlargementResponseData(TypedDict, total=False):
    url: str  # url

class ImageLosslessEnlargementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageLosslessEnlargementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageLosslessEnlargementParamMap = {
    "upscaleFactor": "upscale_factor",
    "outputFormat": "output_format",
    "outputQuality": "output_quality",
}

def validate_imageLosslessEnlargement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageClarityEnhancementParams(TypedDict, total=False):
    image: FileInput  # image

class ImageClarityEnhancementResponseData(TypedDict, total=False):
    image: str  # image

class ImageClarityEnhancementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageClarityEnhancementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageClarityEnhancementParamMap = {
}

def validate_imageClarityEnhancement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageDistortionCorrectionParams(TypedDict, total=False):
    image: FileInput  # image

class ImageDistortionCorrectionResponseData(TypedDict, total=False):
    image: str  # image
    ratio: float  # ratio

class ImageDistortionCorrectionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageDistortionCorrectionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageDistortionCorrectionParamMap = {
}

def validate_imageDistortionCorrection_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageCompositionAestheticsScoreParams(TypedDict, total=False):
    image: FileInput  # image

class ImageCompositionAestheticsScoreResponseData(TypedDict, total=False):
    score: float  # score

class ImageCompositionAestheticsScoreResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageCompositionAestheticsScoreResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageCompositionAestheticsScoreParamMap = {
}

def validate_imageCompositionAestheticsScore_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageExposureRatingParams(TypedDict, total=False):
    image: FileInput  # image

class ImageExposureRatingResponseData(TypedDict, total=False):
    exposure: float  # exposure

class ImageExposureRatingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageExposureRatingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageExposureRatingParamMap = {
}

def validate_imageExposureRating_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitFaceAnalyzerParams(TypedDict, total=False):
    image: FileInput  # image
    maxFaceNum: int  # max_face_num
    faceAttributesType: str  # face_attributes_type
    needRotateDetection: int  # need_rotate_detection

class PortraitFaceAnalyzerResponseData(TypedDict, total=False):
    imageWidth: int  # image_width
    imageHeight: int  # image_height
    faceDetailInfos: List[Any]  # face_detail_infos
    faceRect: Dict[str, Any]  # face_rect
    x: int  # x
    y: int  # y
    width: int  # width
    height: int  # height
    faceDetailAttributesInfo: Dict[str, Any]  # face_detail_attributes_info
    age: int  # age
    beauty: int  # beauty
    emotion: Dict[str, Any]  # emotion
    type: int  # type
    probability: float  # probability
    eye: Dict[str, Any]  # eye
    glass: Dict[str, Any]  # glass
    eyeOpen: Dict[str, Any]  # eye_open
    eyelidType: Dict[str, Any]  # eyelid_type
    eyeSize: Dict[str, Any]  # eye_size
    eyebrow: Dict[str, Any]  # eyebrow
    eyebrowDensity: Dict[str, Any]  # eyebrow_density
    eyebrowCurve: Dict[str, Any]  # eyebrow_curve
    eyebrowLength: Dict[str, Any]  # eyebrow_length
    gender: Dict[str, Any]  # gender
    hair: Dict[str, Any]  # hair
    length: Dict[str, Any]  # length
    bang: Dict[str, Any]  # bang
    color: Dict[str, Any]  # color
    hat: Dict[str, Any]  # hat
    style: Dict[str, Any]  # style
    headPose: Dict[str, Any]  # head_pose
    pitch: int  # pitch
    yaw: int  # yaw
    mask: Dict[str, Any]  # mask
    mouth: Dict[str, Any]  # mouth
    mouthOpen: Dict[str, Any]  # mouth_open
    moustache: Dict[str, Any]  # moustache
    nose: Dict[str, Any]  # nose
    shape: Dict[str, Any]  # shape
    skin: Dict[str, Any]  # skin
    smile: int  # smile

class PortraitFaceAnalyzerResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFaceAnalyzerResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFaceAnalyzerParamMap = {
    "maxFaceNum": "max_face_num",
    "faceAttributesType": "face_attributes_type",
    "needRotateDetection": "need_rotate_detection",
}

def validate_portraitFaceAnalyzer_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitFaceAnalyzerAdvancedParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitFaceAnalyzerAdvancedResponseData(TypedDict, total=False):
    pupils: float  # pupils
    genderList: int  # gender_list
    expressions: int  # expressions
    faceCount: int  # face_count
    landmarks: float  # landmarks
    landmarkCount: int  # landmark_count
    beautyList: float  # beauty_list
    hatList: int  # hat_list
    faceProbabilityList: float  # face_probability_list
    glasses: int  # glasses
    faceRectangles: int  # face_rectangles
    poseList: float  # pose_list
    ageList: int  # age_list
    denseFeatureLength: int  # dense_feature_length
    masks: int  # masks
    qualities: Dict[str, Any]  # qualities
    scoreList: float  # score_list
    blurList: float  # blur_list
    fnfList: float  # fnf_list
    glassList: float  # glass_list
    illuList: float  # illu_list
    maskList: float  # mask_list
    noiseList: float  # noise_list

class PortraitFaceAnalyzerAdvancedResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFaceAnalyzerAdvancedResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFaceAnalyzerAdvancedParamMap = {
}

def validate_portraitFaceAnalyzerAdvanced_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitFacialLandmarksParams(TypedDict, total=False):
    image: FileInput  # image
    maxFaceNum: int  # max_face_num
    faceField: str  # face_field

class PortraitFacialLandmarksResponseData(TypedDict, total=False):
    result: Dict[str, Any]  # result
    faceNum: int  # face_num
    faceList: List[Any]  # face_list
    faceToken: str  # face_token
    location: Dict[str, Any]  # location
    left: float  # left
    top: float  # top
    width: float  # width
    height: float  # height
    rotation: int  # rotation
    faceProbability: float  # face_probability
    angle: Dict[str, Any]  # angle
    yaw: float  # yaw
    pitch: float  # pitch
    roll: float  # roll
    age: float  # age
    gender: Dict[str, Any]  # gender
    type: str  # type
    probability: float  # probability
    landmark4: List[Any]  # landmark4
    landmark72: List[Any]  # landmark72
    landmark150: Dict[str, Any]  # landmark150
    landmark201: Dict[str, Any]  # landmark201

class PortraitFacialLandmarksResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFacialLandmarksResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFacialLandmarksParamMap = {
    "maxFaceNum": "max_face_num",
    "faceField": "face_field",
}

def validate_portraitFacialLandmarks_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitSkinAnalysisBasicParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitSkinAnalysisBasicResponseData(TypedDict, total=False):
    warning: List[Any]  # warning
    faceRectangle: Dict[str, Any]  # face_rectangle
    top: float  # top
    left: float  # left
    width: float  # width
    height: float  # height
    result: Dict[str, Any]  # result
    leftEyelids: Dict[str, Any]  # left_eyelids
    value: int  # value
    confidence: float  # confidence
    rightEyelids: Dict[str, Any]  # right_eyelids
    eyePouch: Dict[str, Any]  # eye_pouch
    darkCircle: Dict[str, Any]  # dark_circle
    foreheadWrinkle: Dict[str, Any]  # forehead_wrinkle
    crowsFeet: Dict[str, Any]  # crows_feet
    eyeFinelines: Dict[str, Any]  # eye_finelines
    glabellaWrinkle: Dict[str, Any]  # glabella_wrinkle
    nasolabialFold: Dict[str, Any]  # nasolabial_fold
    skinType: Dict[str, Any]  # skin_type
    details: Dict[str, Any]  # details
    field_0: Dict[str, Any]  # 0
    field_1: Dict[str, Any]  # 1
    field_2: Dict[str, Any]  # 2
    field_3: Dict[str, Any]  # 3
    poresForehead: Dict[str, Any]  # pores_forehead
    poresLeftCheek: Dict[str, Any]  # pores_left_cheek
    poresRightCheek: Dict[str, Any]  # pores_right_cheek
    poresJaw: Dict[str, Any]  # pores_jaw
    blackhead: Dict[str, Any]  # blackhead
    acne: Dict[str, Any]  # acne
    mole: Dict[str, Any]  # mole
    skinSpot: Dict[str, Any]  # skin_spot

class PortraitSkinAnalysisBasicResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitSkinAnalysisBasicResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitSkinAnalysisBasicParamMap = {
}

def validate_portraitSkinAnalysisBasic_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitSkinAnalysisAdvancedParams(TypedDict, total=False):
    image: FileInput  # image
    faceQualityControl: int  # face_quality_control
    returnRectConfidence: int  # return_rect_confidence
    returnMaps: str  # return_maps

class PortraitSkinAnalysisAdvancedResponseData(TypedDict, total=False):
    warning: List[Any]  # warning
    faceRectangle: Dict[str, Any]  # face_rectangle
    top: float  # top
    left: float  # left
    width: float  # width
    height: float  # height
    result: Dict[str, Any]  # result
    skinColor: Dict[str, Any]  # skin_color
    value: int  # value
    confidence: float  # confidence
    skintoneIta: Dict[str, Any]  # skintone_ita
    iTA: float  # ITA
    skintone: int  # skintone
    skinHueHa: Dict[str, Any]  # skin_hue_ha
    hA: float  # HA
    skinAge: Dict[str, Any]  # skin_age
    leftEyelids: Dict[str, Any]  # left_eyelids
    rightEyelids: Dict[str, Any]  # right_eyelids
    eyePouch: Dict[str, Any]  # eye_pouch
    eyePouchSeverity: Dict[str, Any]  # eye_pouch_severity
    darkCircle: Dict[str, Any]  # dark_circle
    foreheadWrinkle: Dict[str, Any]  # forehead_wrinkle
    crowsFeet: Dict[str, Any]  # crows_feet
    eyeFinelines: Dict[str, Any]  # eye_finelines
    glabellaWrinkle: Dict[str, Any]  # glabella_wrinkle
    nasolabialFold: Dict[str, Any]  # nasolabial_fold
    nasolabialFoldSeverity: Dict[str, Any]  # nasolabial_fold_severity
    skinType: Dict[str, Any]  # skin_type
    details: Dict[str, Any]  # details
    field_0: Dict[str, Any]  # 0
    field_1: Dict[str, Any]  # 1
    field_2: Dict[str, Any]  # 2
    field_3: Dict[str, Any]  # 3
    poresForehead: Dict[str, Any]  # pores_forehead
    poresLeftCheek: Dict[str, Any]  # pores_left_cheek
    poresRightCheek: Dict[str, Any]  # pores_right_cheek
    poresJaw: Dict[str, Any]  # pores_jaw
    blackhead: Dict[str, Any]  # blackhead
    acne: Dict[str, Any]  # acne
    rectangle: List[Any]  # rectangle
    mole: Dict[str, Any]  # mole
    closedComedones: Dict[str, Any]  # closed_comedones
    skinSpot: Dict[str, Any]  # skin_spot
    faceMaps: Dict[str, Any]  # face_maps
    redArea: str  # red_area
    sensitivity: Dict[str, Any]  # sensitivity
    sensitivityArea: float  # sensitivity_area
    sensitivityIntensity: float  # sensitivity_intensity

class PortraitSkinAnalysisAdvancedResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitSkinAnalysisAdvancedResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitSkinAnalysisAdvancedParamMap = {
    "faceQualityControl": "face_quality_control",
    "returnRectConfidence": "return_rect_confidence",
    "returnMaps": "return_maps",
}

def validate_portraitSkinAnalysisAdvanced_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitSkinAnalysisProfessionalParams(TypedDict, total=False):
    image: FileInput  # image
    leftSideImage: FileInput  # left_side_image
    rightSideImage: FileInput  # right_side_image
    returnMaps: str  # return_maps
    returnMarks: str  # return_marks
    roiOutlineColor: str  # roi_outline_color
    returnSideResults: str  # return_side_results

class PortraitSkinAnalysisProfessionalResponseData(TypedDict, total=False):
    leftSideResult: str  # left_side_result
    rightSideResult: str  # right_side_result
    faceRectangle: Dict[str, Any]  # face_rectangle
    result: Dict[str, Any]  # result

class PortraitSkinAnalysisProfessionalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitSkinAnalysisProfessionalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitSkinAnalysisProfessionalParamMap = {
    "leftSideImage": "left_side_image",
    "rightSideImage": "right_side_image",
    "returnMaps": "return_maps",
    "returnMarks": "return_marks",
    "roiOutlineColor": "roi_outline_color",
    "returnSideResults": "return_side_results",
}

def validate_portraitSkinAnalysisProfessional_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("leftSideImage") is not None and not is_file(params.get("leftSideImage")): raise ValueError("Invalid file param: leftSideImage")
    if params.get("rightSideImage") is not None and not is_file(params.get("rightSideImage")): raise ValueError("Invalid file param: rightSideImage")

class PortraitSkinDiseaseDetectionParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitSkinDiseaseDetectionResponseData(TypedDict, total=False):
    bodyPart: str  # body_part
    imageQuality: float  # image_quality
    imageType: str  # image_type
    resultsEnglish: Dict[str, Any]  # results_english
    acne: float  # acne
    actinicKeratosis: float  # actinic_keratosis
    alopeciaAndrogenetica: float  # alopecia_androgenetica
    alopeciaAreata: float  # alopecia_areata
    bullousDermatosis: float  # bullous_dermatosis
    chloasma: float  # chloasma
    corn: float  # corn
    dermatofibroma: float  # dermatofibroma
    eczemaDermatitis: float  # eczema_dermatitis
    erysipelas: float  # erysipelas
    erythemaMultiforme: float  # erythema_multiforme
    folliculitis: float  # folliculitis
    furuncle: float  # furuncle
    haemangioma: float  # haemangioma
    herpes: float  # herpes
    herpesSimplex: float  # herpes_simplex
    igaVasculitis: float  # iga_vasculitis
    keloid: float  # keloid
    keratosisFollicularism: float  # keratosis_follicularism
    lichenPlanus: float  # lichen_planus
    lupusErythematosus: float  # lupus_erythematosus
    molluscumContagiosum: float  # molluscum_contagiosum
    nevus: float  # nevus
    paronychia: float  # paronychia
    pityriasisAlba: float  # pityriasis_alba
    pityriasisRosea: float  # pityriasis_rosea
    prurigoNodularis: float  # prurigo_nodularis
    psoriasis: float  # psoriasis
    rosacea: float  # rosacea
    sebaceousCyst: float  # sebaceous_cyst
    sebaceousnevus: float  # sebaceousnevus
    seborrheicDermatitis: float  # seborrheic_dermatitis
    seborrheicKeratosis: float  # seborrheic_keratosis
    skinTag: float  # skin_tag
    stasisDermatitis: float  # stasis_dermatitis
    syringoma: float  # syringoma
    tineaCapitis: float  # tinea_capitis
    tineaCorporis: float  # tinea_corporis
    tineaCruris: float  # tinea_cruris
    tineaManuum: float  # tinea_manuum
    tineaPedis: float  # tinea_pedis
    tineaUnguium: float  # tinea_unguium
    tineaVersicolor: float  # tinea_versicolor
    urticaria: float  # urticaria
    urticariaPapular: float  # urticaria_papular
    varicella: float  # varicella
    verrucaPlana: float  # verruca_plana
    verrucaVulgaris: float  # verruca_vulgaris
    vitiligo: float  # vitiligo

class PortraitSkinDiseaseDetectionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitSkinDiseaseDetectionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitSkinDiseaseDetectionParamMap = {
}

def validate_portraitSkinDiseaseDetection_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitTryOnClothesParams(TypedDict, total=False):
    taskType: str  # task_type
    personImage: FileInput  # person_image
    clothesImage: FileInput  # clothes_image
    clothesType: str  # clothes_type

class PortraitTryOnClothesResponseData(TypedDict, total=False):
    taskType: str  # task_type
    taskId: str  # task_id

class PortraitTryOnClothesResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitTryOnClothesResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitTryOnClothesParamMap = {
    "taskType": "task_type",
    "personImage": "person_image",
    "clothesImage": "clothes_image",
    "clothesType": "clothes_type",
}

def validate_portraitTryOnClothes_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskType") is None: raise ValueError("Missing required param: taskType")
    if params.get("personImage") is None: raise ValueError("Missing required param: personImage")
    if params.get("personImage") is not None and not is_file(params.get("personImage")): raise ValueError("Invalid file param: personImage")
    if params.get("clothesImage") is None: raise ValueError("Missing required param: clothesImage")
    if params.get("clothesImage") is not None and not is_file(params.get("clothesImage")): raise ValueError("Invalid file param: clothesImage")
    if params.get("clothesType") is None: raise ValueError("Missing required param: clothesType")

class PortraitTryOnClothesProParams(TypedDict, total=False):
    taskType: str  # task_type
    personImage: FileInput  # person_image
    topGarment: FileInput  # top_garment
    bottomGarment: FileInput  # bottom_garment
    resolution: int  # resolution
    restoreFace: bool  # restore_face

class PortraitTryOnClothesProResponseData(TypedDict, total=False):
    taskType: str  # task_type
    taskId: str  # task_id

class PortraitTryOnClothesProResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitTryOnClothesProResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitTryOnClothesProParamMap = {
    "taskType": "task_type",
    "personImage": "person_image",
    "topGarment": "top_garment",
    "bottomGarment": "bottom_garment",
    "restoreFace": "restore_face",
}

def validate_portraitTryOnClothesPro_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskType") is None: raise ValueError("Missing required param: taskType")
    if params.get("personImage") is None: raise ValueError("Missing required param: personImage")
    if params.get("personImage") is not None and not is_file(params.get("personImage")): raise ValueError("Invalid file param: personImage")
    if params.get("topGarment") is None: raise ValueError("Missing required param: topGarment")
    if params.get("topGarment") is not None and not is_file(params.get("topGarment")): raise ValueError("Invalid file param: topGarment")
    if params.get("bottomGarment") is not None and not is_file(params.get("bottomGarment")): raise ValueError("Invalid file param: bottomGarment")

class PortraitFacialBlurringParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitFacialBlurringResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitFacialBlurringResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFacialBlurringResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFacialBlurringParamMap = {
}

def validate_portraitFacialBlurring_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitExpressionEditingParams(TypedDict, total=False):
    imageTarget: FileInput  # image_target
    serviceChoice: int  # service_choice

class PortraitExpressionEditingResponseData(TypedDict, total=False):
    image: str  # image

class PortraitExpressionEditingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitExpressionEditingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitExpressionEditingParamMap = {
    "imageTarget": "image_target",
    "serviceChoice": "service_choice",
}

def validate_portraitExpressionEditing_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("imageTarget") is None: raise ValueError("Missing required param: imageTarget")
    if params.get("imageTarget") is not None and not is_file(params.get("imageTarget")): raise ValueError("Invalid file param: imageTarget")
    if params.get("serviceChoice") is None: raise ValueError("Missing required param: serviceChoice")

class PortraitFaceRestorationEnhancementParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitFaceRestorationEnhancementResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitFaceRestorationEnhancementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFaceRestorationEnhancementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFaceRestorationEnhancementParamMap = {
}

def validate_portraitFaceRestorationEnhancement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitFaceAttributeEditingParams(TypedDict, total=False):
    image: FileInput  # image
    actionType: str  # action_type
    qualityControl: str  # quality_control
    faceLocation: str  # face_location

class PortraitFaceAttributeEditingResponseData(TypedDict, total=False):
    result: Dict[str, Any]  # result
    image: str  # image

class PortraitFaceAttributeEditingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFaceAttributeEditingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFaceAttributeEditingParamMap = {
    "actionType": "action_type",
    "qualityControl": "quality_control",
    "faceLocation": "face_location",
}

def validate_portraitFaceAttributeEditing_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("actionType") is None: raise ValueError("Missing required param: actionType")

class PortraitFacialBeautificationParams(TypedDict, total=False):
    image: FileInput  # image
    sharp: float  # sharp
    smooth: float  # smooth
    white: float  # white

class PortraitFacialBeautificationResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitFacialBeautificationResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFacialBeautificationResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFacialBeautificationParamMap = {
}

def validate_portraitFacialBeautification_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("sharp") is None: raise ValueError("Missing required param: sharp")
    if params.get("smooth") is None: raise ValueError("Missing required param: smooth")
    if params.get("white") is None: raise ValueError("Missing required param: white")

class PortraitFacialBeautificationAdvancedParams(TypedDict, total=False):
    image: FileInput  # image
    whitening: int  # whitening
    smoothing: int  # smoothing
    faceLifting: int  # face_lifting
    eyeEnlarging: int  # eye_enlarging

class PortraitFacialBeautificationAdvancedResponseData(TypedDict, total=False):
    resultImage: str  # result_image

class PortraitFacialBeautificationAdvancedResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFacialBeautificationAdvancedResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFacialBeautificationAdvancedParamMap = {
    "faceLifting": "face_lifting",
    "eyeEnlarging": "eye_enlarging",
}

def validate_portraitFacialBeautificationAdvanced_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitFacialBeautificationProParams(TypedDict, total=False):
    image: FileInput  # image
    whitening: int  # whitening
    smoothing: int  # smoothing
    thinface: int  # thinface
    shrinkFace: int  # shrink_face
    enlargeEye: int  # enlarge_eye
    removeEyebrow: int  # remove_eyebrow
    filterType: int  # filter_type
    taskType: str  # task_type

class PortraitFacialBeautificationProResponseData(TypedDict, total=False):
    taskType: str  # task_type
    result: str  # result

class PortraitFacialBeautificationProResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFacialBeautificationProResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFacialBeautificationProParamMap = {
    "shrinkFace": "shrink_face",
    "enlargeEye": "enlarge_eye",
    "removeEyebrow": "remove_eyebrow",
    "filterType": "filter_type",
    "taskType": "task_type",
}

def validate_portraitFacialBeautificationPro_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitFacialFiltersParams(TypedDict, total=False):
    image: FileInput  # image
    resourceType: str  # resource_type
    strength: float  # strength

class PortraitFacialFiltersResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitFacialFiltersResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFacialFiltersResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFacialFiltersParamMap = {
    "resourceType": "resource_type",
}

def validate_portraitFacialFilters_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("resourceType") is None: raise ValueError("Missing required param: resourceType")
    if params.get("strength") is None: raise ValueError("Missing required param: strength")

class PortraitFaceFusionParams(TypedDict, total=False):
    imageTarget: FileInput  # image_target
    imageTemplate: FileInput  # image_template
    sourceSimilarity: float  # source_similarity

class PortraitFaceFusionResponseData(TypedDict, total=False):
    image: str  # image

class PortraitFaceFusionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitFaceFusionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitFaceFusionParamMap = {
    "imageTarget": "image_target",
    "imageTemplate": "image_template",
    "sourceSimilarity": "source_similarity",
}

def validate_portraitFaceFusion_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("imageTarget") is None: raise ValueError("Missing required param: imageTarget")
    if params.get("imageTarget") is not None and not is_file(params.get("imageTarget")): raise ValueError("Invalid file param: imageTarget")
    if params.get("imageTemplate") is None: raise ValueError("Missing required param: imageTemplate")
    if params.get("imageTemplate") is not None and not is_file(params.get("imageTemplate")): raise ValueError("Invalid file param: imageTemplate")

class PortraitHairstyleEditingParams(TypedDict, total=False):
    imageTarget: FileInput  # image_target
    hairType: int  # hair_type

class PortraitHairstyleEditingResponseData(TypedDict, total=False):
    image: str  # image

class PortraitHairstyleEditingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitHairstyleEditingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitHairstyleEditingParamMap = {
    "imageTarget": "image_target",
    "hairType": "hair_type",
}

def validate_portraitHairstyleEditing_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("imageTarget") is None: raise ValueError("Missing required param: imageTarget")
    if params.get("imageTarget") is not None and not is_file(params.get("imageTarget")): raise ValueError("Invalid file param: imageTarget")

class PortraitHairstyleEditingProParams(TypedDict, total=False):
    taskType: str  # task_type
    image: FileInput  # image
    hairStyle: str  # hair_style
    color: str  # color
    imageSize: int  # image_size
    mask: FileInput  # mask
    bangs: int  # bangs
    mode: int  # mode
    reference: int  # reference

class PortraitHairstyleEditingProResponseData(TypedDict, total=False):
    taskType: str  # task_type
    taskId: str  # task_id

class PortraitHairstyleEditingProResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitHairstyleEditingProResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitHairstyleEditingProParamMap = {
    "taskType": "task_type",
    "hairStyle": "hair_style",
    "imageSize": "image_size",
}

def validate_portraitHairstyleEditingPro_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskType") is None: raise ValueError("Missing required param: taskType")
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("hairStyle") is None: raise ValueError("Missing required param: hairStyle")
    if params.get("mask") is not None and not is_file(params.get("mask")): raise ValueError("Invalid file param: mask")

class PortraitLipsColorChangerParams(TypedDict, total=False):
    image: FileInput  # image
    lipColorInfos: str  # lip_color_infos

class PortraitLipsColorChangerResponseData(TypedDict, total=False):
    resultImage: str  # result_image

class PortraitLipsColorChangerResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitLipsColorChangerResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitLipsColorChangerParamMap = {
    "lipColorInfos": "lip_color_infos",
}

def validate_portraitLipsColorChanger_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("lipColorInfos") is None: raise ValueError("Missing required param: lipColorInfos")

class PortraitLivePhotosParams(TypedDict, total=False):
    imageTarget: FileInput  # image_target
    type: int  # type

class PortraitLivePhotosResponseData(TypedDict, total=False):
    video: str  # video

class PortraitLivePhotosResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitLivePhotosResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitLivePhotosParamMap = {
    "imageTarget": "image_target",
}

def validate_portraitLivePhotos_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("imageTarget") is None: raise ValueError("Missing required param: imageTarget")
    if params.get("imageTarget") is not None and not is_file(params.get("imageTarget")): raise ValueError("Invalid file param: imageTarget")

class PortraitCartoonYourselfParams(TypedDict, total=False):
    image: FileInput  # image
    type: str  # type

class PortraitCartoonYourselfResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitCartoonYourselfResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitCartoonYourselfResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitCartoonYourselfParamMap = {
}

def validate_portraitCartoonYourself_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("type") is None: raise ValueError("Missing required param: type")

class PortraitIntelligentBeautificationParams(TypedDict, total=False):
    imageTarget: FileInput  # image_target
    multiFace: str  # multi_face
    beautyLevel: float  # beauty_level
    taskType: str  # task_type

class PortraitIntelligentBeautificationResponseData(TypedDict, total=False):
    taskType: str  # task_type
    image: str  # image

class PortraitIntelligentBeautificationResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitIntelligentBeautificationResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitIntelligentBeautificationParamMap = {
    "imageTarget": "image_target",
    "multiFace": "multi_face",
    "beautyLevel": "beauty_level",
    "taskType": "task_type",
}

def validate_portraitIntelligentBeautification_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("imageTarget") is None: raise ValueError("Missing required param: imageTarget")
    if params.get("imageTarget") is not None and not is_file(params.get("imageTarget")): raise ValueError("Invalid file param: imageTarget")

class PortraitIntelligentFaceSlimmingParams(TypedDict, total=False):
    image: FileInput  # image
    slimDegree: float  # slim_degree

class PortraitIntelligentFaceSlimmingResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitIntelligentFaceSlimmingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitIntelligentFaceSlimmingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitIntelligentFaceSlimmingParamMap = {
    "slimDegree": "slim_degree",
}

def validate_portraitIntelligentFaceSlimming_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitIntelligentSkinRetouchingParams(TypedDict, total=False):
    image: FileInput  # image
    retouchDegree: float  # retouch_degree
    whiteningDegree: float  # whitening_degree

class PortraitIntelligentSkinRetouchingResponseData(TypedDict, total=False):
    imageUrl: str  # image_url

class PortraitIntelligentSkinRetouchingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitIntelligentSkinRetouchingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitIntelligentSkinRetouchingParamMap = {
    "retouchDegree": "retouch_degree",
    "whiteningDegree": "whitening_degree",
}

def validate_portraitIntelligentSkinRetouching_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitTryOnClothesRefinerParams(TypedDict, total=False):
    taskType: str  # task_type
    personImage: FileInput  # person_image
    topGarment: FileInput  # top_garment
    coarseImage: FileInput  # coarse_image
    gender: str  # gender
    bottomGarment: FileInput  # bottom_garment

class PortraitTryOnClothesRefinerResponseData(TypedDict, total=False):
    taskType: str  # task_type
    taskId: str  # task_id

class PortraitTryOnClothesRefinerResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitTryOnClothesRefinerResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitTryOnClothesRefinerParamMap = {
    "taskType": "task_type",
    "personImage": "person_image",
    "topGarment": "top_garment",
    "coarseImage": "coarse_image",
    "bottomGarment": "bottom_garment",
}

def validate_portraitTryOnClothesRefiner_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskType") is None: raise ValueError("Missing required param: taskType")
    if params.get("personImage") is None: raise ValueError("Missing required param: personImage")
    if params.get("personImage") is not None and not is_file(params.get("personImage")): raise ValueError("Invalid file param: personImage")
    if params.get("topGarment") is None: raise ValueError("Missing required param: topGarment")
    if params.get("topGarment") is not None and not is_file(params.get("topGarment")): raise ValueError("Invalid file param: topGarment")
    if params.get("coarseImage") is None: raise ValueError("Missing required param: coarseImage")
    if params.get("coarseImage") is not None and not is_file(params.get("coarseImage")): raise ValueError("Invalid file param: coarseImage")
    if params.get("gender") is None: raise ValueError("Missing required param: gender")
    if params.get("bottomGarment") is not None and not is_file(params.get("bottomGarment")): raise ValueError("Invalid file param: bottomGarment")

class CutoutHDUniversalBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image

class CutoutHDUniversalBackgroundRemovalResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class CutoutHDUniversalBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutHDUniversalBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutHDUniversalBackgroundRemovalParamMap = {
}

def validate_cutoutHDUniversalBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class CutoutHdHumanBodyBackgroundRemovalParams(TypedDict, total=False):
    image: FileInput  # image

class CutoutHdHumanBodyBackgroundRemovalElement(TypedDict, total=False):
    image_url: str  # image_url

class CutoutHdHumanBodyBackgroundRemovalResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    elements: List[CutoutHdHumanBodyBackgroundRemovalElement]  # elements

class CutoutHdHumanBodyBackgroundRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: CutoutHdHumanBodyBackgroundRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

CutoutHdHumanBodyBackgroundRemovalParamMap = {
}

def validate_cutoutHdHumanBodyBackgroundRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageAINailArtParams(TypedDict, total=False):
    image: FileInput  # image
    nailName: str  # nail_name
    nailDesc: str  # nail_desc

class ImageAINailArtResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class ImageAINailArtResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAINailArtResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAINailArtParamMap = {
    "nailName": "nail_name",
    "nailDesc": "nail_desc",
}

def validate_imageAINailArt_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("nailName") is None: raise ValueError("Missing required param: nailName")
    if params.get("nailDesc") is None: raise ValueError("Missing required param: nailDesc")

class ImageAINailArtProParams(TypedDict, total=False):
    image: FileInput  # image
    referenceImage: FileInput  # reference_image
    resolution: str  # resolution

class ImageAINailArtProResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class ImageAINailArtProResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAINailArtProResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAINailArtProParamMap = {
    "referenceImage": "reference_image",
}

def validate_imageAINailArtPro_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("referenceImage") is None: raise ValueError("Missing required param: referenceImage")
    if params.get("referenceImage") is not None and not is_file(params.get("referenceImage")): raise ValueError("Invalid file param: referenceImage")

class ImageAIPhotographyParams(TypedDict, total=False):
    image: FileInput  # image
    styleTitle: str  # style_title
    styleDesc: str  # style_desc
    imageSize: str  # image_size

class ImageAIPhotographyResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class ImageAIPhotographyResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAIPhotographyResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAIPhotographyParamMap = {
    "styleTitle": "style_title",
    "styleDesc": "style_desc",
    "imageSize": "image_size",
}

def validate_imageAIPhotography_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("styleTitle") is None: raise ValueError("Missing required param: styleTitle")
    if params.get("styleDesc") is None: raise ValueError("Missing required param: styleDesc")

class ImageAIEmojiGeneratorParams(TypedDict, total=False):
    image: FileInput  # image
    expression: str  # expression
    style: str  # style
    scene: str  # scene
    filler: str  # filler

class ImageAIEmojiGeneratorResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class ImageAIEmojiGeneratorResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAIEmojiGeneratorResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAIEmojiGeneratorParamMap = {
}

def validate_imageAIEmojiGenerator_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("expression") is None: raise ValueError("Missing required param: expression")
    if params.get("style") is None: raise ValueError("Missing required param: style")
    if params.get("scene") is None: raise ValueError("Missing required param: scene")

class ImagePhotoToColoringPageParams(TypedDict, total=False):
    image: FileInput  # image
    prompt: str  # prompt
    imageSize: str  # image_size

class ImagePhotoToColoringPageResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class ImagePhotoToColoringPageResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImagePhotoToColoringPageResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImagePhotoToColoringPageParamMap = {
    "imageSize": "image_size",
}

def validate_imagePhotoToColoringPage_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class ImageAIFlowerWallpaperParams(TypedDict, total=False):
    name: str  # name
    flowerElements: str  # flower_elements
    style: str  # style
    background: str  # background
    aspectRatio: str  # aspect_ratio

class ImageAIFlowerWallpaperResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class ImageAIFlowerWallpaperResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: ImageAIFlowerWallpaperResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

ImageAIFlowerWallpaperParamMap = {
    "flowerElements": "flower_elements",
    "aspectRatio": "aspect_ratio",
}

def validate_imageAIFlowerWallpaper_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    return

class PortraitAIFaceRatingParams(TypedDict, total=False):
    image: FileInput  # image
    aspectRatio: str  # aspect_ratio

class PortraitAIFaceRatingResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIFaceRatingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIFaceRatingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIFaceRatingParamMap = {
    "aspectRatio": "aspect_ratio",
}

def validate_portraitAIFaceRating_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIBaldParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIBaldResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIBaldResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIBaldResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIBaldParamMap = {
}

def validate_portraitAIBald_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIBeardRemovalParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIBeardRemovalResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIBeardRemovalResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIBeardRemovalResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIBeardRemovalParamMap = {
}

def validate_portraitAIBeardRemoval_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIBeardStylingParams(TypedDict, total=False):
    image: FileInput  # image
    beard: str  # beard
    imageTemplate: FileInput  # image_template

class PortraitAIBeardStylingResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIBeardStylingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIBeardStylingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIBeardStylingParamMap = {
    "imageTemplate": "image_template",
}

def validate_portraitAIBeardStyling_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("imageTemplate") is not None and not is_file(params.get("imageTemplate")): raise ValueError("Invalid file param: imageTemplate")
    if params.get("beard") is None and params.get("imageTemplate") is None: raise ValueError("At least one of beard, imageTemplate is required")

class PortraitAIBreastExpansionParams(TypedDict, total=False):
    taskType: str  # task_type
    personImage: FileInput  # person_image

class PortraitAIBreastExpansionResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    image: str  # image

class PortraitAIBreastExpansionResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIBreastExpansionResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIBreastExpansionParamMap = {
    "taskType": "task_type",
    "personImage": "person_image",
}

def validate_portraitAIBreastExpansion_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("personImage") is None: raise ValueError("Missing required param: personImage")
    if params.get("personImage") is not None and not is_file(params.get("personImage")): raise ValueError("Invalid file param: personImage")

class PortraitAIButtEnhancementParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIButtEnhancementResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIButtEnhancementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIButtEnhancementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIButtEnhancementParamMap = {
}

def validate_portraitAIButtEnhancement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIColoredContactsParams(TypedDict, total=False):
    image: FileInput  # image
    name: str  # name
    desc: str  # desc

class PortraitAIColoredContactsResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIColoredContactsResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIColoredContactsResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIColoredContactsParamMap = {
}

def validate_portraitAIColoredContacts_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIEyebrowsParams(TypedDict, total=False):
    image: FileInput  # image
    referenceImage: FileInput  # reference_image
    resolution: str  # resolution

class PortraitAIEyebrowsResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIEyebrowsResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIEyebrowsResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIEyebrowsParamMap = {
    "referenceImage": "reference_image",
}

def validate_portraitAIEyebrows_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("referenceImage") is None: raise ValueError("Missing required param: referenceImage")
    if params.get("referenceImage") is not None and not is_file(params.get("referenceImage")): raise ValueError("Invalid file param: referenceImage")

class PortraitAIEyelashesParams(TypedDict, total=False):
    image: FileInput  # image
    name: str  # name
    desc: str  # desc

class PortraitAIEyelashesResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIEyelashesResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIEyelashesResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIEyelashesParamMap = {
}

def validate_portraitAIEyelashes_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIEyeshadowTryOnParams(TypedDict, total=False):
    image: FileInput  # image
    eyeshadowStyle: str  # eyeshadow_style
    imageTemplate: FileInput  # image_template
    aspectRatio: str  # aspect_ratio

class PortraitAIEyeshadowTryOnResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIEyeshadowTryOnResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIEyeshadowTryOnResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIEyeshadowTryOnParamMap = {
    "eyeshadowStyle": "eyeshadow_style",
    "imageTemplate": "image_template",
    "aspectRatio": "aspect_ratio",
}

def validate_portraitAIEyeshadowTryOn_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("imageTemplate") is not None and not is_file(params.get("imageTemplate")): raise ValueError("Invalid file param: imageTemplate")
    if params.get("eyeshadowStyle") is None and params.get("imageTemplate") is None: raise ValueError("At least one of eyeshadowStyle, imageTemplate is required")

class PortraitAIFaceSwapParams(TypedDict, total=False):
    imageTarget: FileInput  # image_target
    imageTemplate: FileInput  # image_template

class PortraitAIFaceSwapResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class PortraitAIFaceSwapResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIFaceSwapResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIFaceSwapParamMap = {
    "imageTarget": "image_target",
    "imageTemplate": "image_template",
}

def validate_portraitAIFaceSwap_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("imageTarget") is None: raise ValueError("Missing required param: imageTarget")
    if params.get("imageTarget") is not None and not is_file(params.get("imageTarget")): raise ValueError("Invalid file param: imageTarget")
    if params.get("imageTemplate") is None: raise ValueError("Missing required param: imageTemplate")
    if params.get("imageTemplate") is not None and not is_file(params.get("imageTemplate")): raise ValueError("Invalid file param: imageTemplate")

class PortraitAIFatFilterParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIFatFilterResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIFatFilterResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIFatFilterResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIFatFilterParamMap = {
}

def validate_portraitAIFatFilter_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIHairColorParams(TypedDict, total=False):
    image: FileInput  # image
    name: str  # name
    desc: str  # desc

class PortraitAIHairColorResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIHairColorResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIHairColorResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIHairColorParamMap = {
}

def validate_portraitAIHairColor_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIHairLossSimulationParams(TypedDict, total=False):
    image: FileInput  # image
    level: str  # level

class PortraitAIHairLossSimulationResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIHairLossSimulationResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIHairLossSimulationResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIHairLossSimulationParamMap = {
}

def validate_portraitAIHairLossSimulation_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("level") is None: raise ValueError("Missing required param: level")

class PortraitAILipEnhancementParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAILipEnhancementResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAILipEnhancementResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAILipEnhancementResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAILipEnhancementParamMap = {
}

def validate_portraitAILipEnhancement_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIWaistSlimmingParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIWaistSlimmingResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIWaistSlimmingResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIWaistSlimmingResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIWaistSlimmingParamMap = {
}

def validate_portraitAIWaistSlimming_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitTryOnClothesPremiumParams(TypedDict, total=False):
    taskType: str  # task_type
    personImage: FileInput  # person_image
    topGarment: FileInput  # top_garment
    resolution: float  # resolution
    restoreFace: bool  # restore_face
    bottomGarment: FileInput  # bottom_garment

class PortraitTryOnClothesPremiumResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorCode: int  # error_code
    errorCodeStr: str  # error_code_str
    errorMsg: str  # error_msg
    errorDetail: Dict[str, Any]  # error_detail
    taskType: str  # task_type
    taskId: str  # task_id

class PortraitTryOnClothesPremiumResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitTryOnClothesPremiumResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitTryOnClothesPremiumParamMap = {
    "taskType": "task_type",
    "personImage": "person_image",
    "topGarment": "top_garment",
    "restoreFace": "restore_face",
    "bottomGarment": "bottom_garment",
}

def validate_portraitTryOnClothesPremium_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("taskType") is None: raise ValueError("Missing required param: taskType")
    if params.get("personImage") is None: raise ValueError("Missing required param: personImage")
    if params.get("personImage") is not None and not is_file(params.get("personImage")): raise ValueError("Invalid file param: personImage")
    if params.get("topGarment") is None: raise ValueError("Missing required param: topGarment")
    if params.get("topGarment") is not None and not is_file(params.get("topGarment")): raise ValueError("Invalid file param: topGarment")
    if params.get("bottomGarment") is not None and not is_file(params.get("bottomGarment")): raise ValueError("Invalid file param: bottomGarment")

class PortraitAIBigHeadEffectParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIBigHeadEffectResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIBigHeadEffectResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIBigHeadEffectResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIBigHeadEffectParamMap = {
}

def validate_portraitAIBigHeadEffect_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIHalloweenMaskParams(TypedDict, total=False):
    image: FileInput  # image
    maskStyle: str  # mask_style
    imageTemplate: FileInput  # image_template
    aspectRatio: str  # aspect_ratio

class PortraitAIHalloweenMaskResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIHalloweenMaskResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIHalloweenMaskResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIHalloweenMaskParamMap = {
    "maskStyle": "mask_style",
    "imageTemplate": "image_template",
    "aspectRatio": "aspect_ratio",
}

def validate_portraitAIHalloweenMask_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("imageTemplate") is not None and not is_file(params.get("imageTemplate")): raise ValueError("Invalid file param: imageTemplate")
    if params.get("maskStyle") is None and params.get("imageTemplate") is None: raise ValueError("At least one of maskStyle, imageTemplate is required")

class PortraitAILipBiteExpressionsParams(TypedDict, total=False):
    image: FileInput  # image
    gridCount: int  # grid_count
    aspectRatio: str  # aspect_ratio

class PortraitAILipBiteExpressionsResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAILipBiteExpressionsResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAILipBiteExpressionsResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAILipBiteExpressionsParamMap = {
    "gridCount": "grid_count",
    "aspectRatio": "aspect_ratio",
}

def validate_portraitAILipBiteExpressions_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAIRedLipGlossParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAIRedLipGlossResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAIRedLipGlossResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAIRedLipGlossResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAIRedLipGlossParamMap = {
}

def validate_portraitAIRedLipGloss_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitAISquareFaceFilterParams(TypedDict, total=False):
    image: FileInput  # image

class PortraitAISquareFaceFilterResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAISquareFaceFilterResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAISquareFaceFilterResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAISquareFaceFilterParamMap = {
}

def validate_portraitAISquareFaceFilter_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

class PortraitExpressionEditingAdvancedParams(TypedDict, total=False):
    image: FileInput  # image
    expression: str  # expression

class PortraitExpressionEditingAdvancedResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitExpressionEditingAdvancedResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitExpressionEditingAdvancedResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitExpressionEditingAdvancedParamMap = {
}

def validate_portraitExpressionEditingAdvanced_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("expression") is None: raise ValueError("Missing required param: expression")

class PortraitHairstyleEditingPremiumParams(TypedDict, total=False):
    image: FileInput  # image
    imageTemplate: FileInput  # image_template
    hairStyle: str  # hair_style
    color: str  # color

class PortraitHairstyleEditingPremiumResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitHairstyleEditingPremiumResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitHairstyleEditingPremiumResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitHairstyleEditingPremiumParamMap = {
    "imageTemplate": "image_template",
    "hairStyle": "hair_style",
}

def validate_portraitHairstyleEditingPremium_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")
    if params.get("imageTemplate") is not None and not is_file(params.get("imageTemplate")): raise ValueError("Invalid file param: imageTemplate")
    if params.get("hairStyle") is None and params.get("imageTemplate") is None: raise ValueError("At least one of hairStyle, imageTemplate is required")

class PortraitAISkinEnhancementAdvancedParams(TypedDict, total=False):
    image: FileInput  # image
    smartSkin: str  # smart_skin
    acneRemoval: str  # acne_removal
    spotCorrection: str  # spot_correction
    skinBrightening: str  # skin_brightening
    skinSmoothing: str  # skin_smoothing
    poreControl: str  # pore_control
    wrinkleReduction: str  # wrinkle_reduction
    underEyeCorrection: str  # under_eye_correction
    scarReduction: str  # scar_reduction

class PortraitAISkinEnhancementAdvancedResponseData(TypedDict, total=False):
    requestId: str  # request_id
    logId: str  # log_id
    errorDetail: Dict[str, Any]  # error_detail
    taskId: str  # task_id

class PortraitAISkinEnhancementAdvancedResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: PortraitAISkinEnhancementAdvancedResponseData
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

PortraitAISkinEnhancementAdvancedParamMap = {
    "smartSkin": "smart_skin",
    "acneRemoval": "acne_removal",
    "spotCorrection": "spot_correction",
    "skinBrightening": "skin_brightening",
    "skinSmoothing": "skin_smoothing",
    "poreControl": "pore_control",
    "wrinkleReduction": "wrinkle_reduction",
    "underEyeCorrection": "under_eye_correction",
    "scarReduction": "scar_reduction",
}

def validate_portraitAISkinEnhancementAdvanced_params(params: Dict[str, Any]) -> None:
    def is_file(v):
        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))
    if params.get("image") is None: raise ValueError("Missing required param: image")
    if params.get("image") is not None and not is_file(params.get("image")): raise ValueError("Invalid file param: image")

