use serde::{Deserialize, Serialize};
use serde_json::Value;
use std::collections::HashMap;

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CommonQueryAsyncTaskResultResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CommonQueryAsyncTaskResultData>,
    #[serde(default, rename = "task_status")]
    pub task_status: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CommonQueryAsyncTaskResultData {
    #[serde(default, rename = "task_status")]
    pub task_status: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CommonQueryCreditsResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<Vec<CommonQueryCreditsData>>,
    #[serde(default, rename = "unique_sign")]
    pub unique_sign: Option<String>,
    #[serde(default, rename = "name")]
    pub name: Option<String>,
    #[serde(default, rename = "balance")]
    pub balance: Option<f64>,
    #[serde(default, rename = "total")]
    pub total: Option<f64>,
    #[serde(default, rename = "last_recharge_balance")]
    pub last_recharge_balance: Option<f64>,
    #[serde(default, rename = "balance_warning")]
    pub balance_warning: Option<f64>,
    #[serde(default, rename = "first_buy_time")]
    pub first_buy_time: Option<i64>,
    #[serde(default, rename = "last_update_time")]
    pub last_update_time: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CommonQueryCreditsData {
    #[serde(default, rename = "unique_sign")]
    pub unique_sign: Option<String>,
    #[serde(default, rename = "name")]
    pub name: Option<String>,
    #[serde(default, rename = "balance")]
    pub balance: Option<f64>,
    #[serde(default, rename = "total")]
    pub total: Option<f64>,
    #[serde(default, rename = "last_recharge_balance")]
    pub last_recharge_balance: Option<f64>,
    #[serde(default, rename = "balance_warning")]
    pub balance_warning: Option<f64>,
    #[serde(default, rename = "first_buy_time")]
    pub first_buy_time: Option<i64>,
    #[serde(default, rename = "last_update_time")]
    pub last_update_time: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutClothingBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutClothingBackgroundRemovalData>,
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "0")]
    pub field_0: Option<serde_json::Value>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(default, rename = "1")]
    pub field_1: Option<serde_json::Value>,
    #[serde(default, rename = "class_url")]
    pub class_url: Option<serde_json::Value>,
    #[serde(default, rename = "tops")]
    pub tops: Option<String>,
    #[serde(default, rename = "coat")]
    pub coat: Option<String>,
    #[serde(default, rename = "skirt")]
    pub skirt: Option<String>,
    #[serde(default, rename = "pants")]
    pub pants: Option<String>,
    #[serde(default, rename = "bag")]
    pub bag: Option<String>,
    #[serde(default, rename = "shoes")]
    pub shoes: Option<String>,
    #[serde(default, rename = "hat")]
    pub hat: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutClothingBackgroundRemovalData {
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "0")]
    pub field_0: Option<serde_json::Value>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(default, rename = "1")]
    pub field_1: Option<serde_json::Value>,
    #[serde(default, rename = "class_url")]
    pub class_url: Option<serde_json::Value>,
    #[serde(default, rename = "tops")]
    pub tops: Option<String>,
    #[serde(default, rename = "coat")]
    pub coat: Option<String>,
    #[serde(default, rename = "skirt")]
    pub skirt: Option<String>,
    #[serde(default, rename = "pants")]
    pub pants: Option<String>,
    #[serde(default, rename = "bag")]
    pub bag: Option<String>,
    #[serde(default, rename = "shoes")]
    pub shoes: Option<String>,
    #[serde(default, rename = "hat")]
    pub hat: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutProductBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutProductBackgroundRemovalData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutProductBackgroundRemovalData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutFoodBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutFoodBackgroundRemovalData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutFoodBackgroundRemovalData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutUniversalBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutUniversalBackgroundRemovalData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutUniversalBackgroundRemovalData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutAvatarExtractionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutAvatarExtractionData>,
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutAvatarExtractionData {
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHairExtractionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutHairExtractionData>,
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHairExtractionData {
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHumanBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutHumanBackgroundRemovalData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHumanBackgroundRemovalData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageQueryingAsyncTaskResultsResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageQueryingAsyncTaskResultsData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageQueryingAsyncTaskResultsData {
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIImageExtenderResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAIImageExtenderData>,
    #[serde(default, rename = "binary_data_base64")]
    pub binary_data_base64: Option<Vec<String>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIImageExtenderData {
    #[serde(default, rename = "binary_data_base64")]
    pub binary_data_base64: Option<Vec<String>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIObjectReplacerResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAIObjectReplacerData>,
    #[serde(default, rename = "binary_data_base64")]
    pub binary_data_base64: Option<Vec<String>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIObjectReplacerData {
    #[serde(default, rename = "binary_data_base64")]
    pub binary_data_base64: Option<Vec<String>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIImageCroppingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAIImageCroppingData>,
    #[serde(default, rename = "url")]
    pub url: Option<String>,
    #[serde(default, rename = "retain_location")]
    pub retain_location: Option<serde_json::Value>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIImageCroppingData {
    #[serde(default, rename = "url")]
    pub url: Option<String>,
    #[serde(default, rename = "retain_location")]
    pub retain_location: Option<serde_json::Value>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageErasureResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageErasureData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageErasureData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageInvisibleImageWatermarkResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageInvisibleImageWatermarkData>,
    #[serde(default, rename = "watermark_image_url")]
    pub watermark_image_url: Option<String>,
    #[serde(default, rename = "logo_url")]
    pub logo_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageInvisibleImageWatermarkData {
    #[serde(default, rename = "watermark_image_url")]
    pub watermark_image_url: Option<String>,
    #[serde(default, rename = "logo_url")]
    pub logo_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageInvisibleTextWatermarkResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageInvisibleTextWatermarkData>,
    #[serde(default, rename = "watermark_image_url")]
    pub watermark_image_url: Option<String>,
    #[serde(default, rename = "text_image_url")]
    pub text_image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageInvisibleTextWatermarkData {
    #[serde(default, rename = "watermark_image_url")]
    pub watermark_image_url: Option<String>,
    #[serde(default, rename = "text_image_url")]
    pub text_image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageIntelligentCompositionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageIntelligentCompositionData>,
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "min_x")]
    pub min_x: Option<i64>,
    #[serde(default, rename = "max_x")]
    pub max_x: Option<i64>,
    #[serde(default, rename = "min_y")]
    pub min_y: Option<i64>,
    #[serde(default, rename = "max_y")]
    pub max_y: Option<i64>,
    #[serde(default, rename = "score")]
    pub score: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageIntelligentCompositionData {
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "min_x")]
    pub min_x: Option<i64>,
    #[serde(default, rename = "max_x")]
    pub max_x: Option<i64>,
    #[serde(default, rename = "min_y")]
    pub min_y: Option<i64>,
    #[serde(default, rename = "max_y")]
    pub max_y: Option<i64>,
    #[serde(default, rename = "score")]
    pub score: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImagePhotoEditingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImagePhotoEditingData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImagePhotoEditingData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageRemoveObjectsResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageRemoveObjectsData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageRemoveObjectsData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageRemoveObjectsAdvancedResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageRemoveObjectsAdvancedData>,
    #[serde(default, rename = "binary_data_base64")]
    pub binary_data_base64: Option<Vec<String>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageRemoveObjectsAdvancedData {
    #[serde(default, rename = "binary_data_base64")]
    pub binary_data_base64: Option<Vec<String>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageRemoveObjectsProResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageRemoveObjectsProData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageRemoveObjectsProData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAICartoonGeneratorResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAICartoonGeneratorData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAICartoonGeneratorData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageColoringResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageColoringData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageColoringData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageStyleTransferResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageStyleTransferData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageStyleTransferData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageStyleMigrationResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageStyleMigrationData>,
    #[serde(default, rename = "url")]
    pub url: Option<String>,
    #[serde(default, rename = "major_url")]
    pub major_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageStyleMigrationData {
    #[serde(default, rename = "url")]
    pub url: Option<String>,
    #[serde(default, rename = "major_url")]
    pub major_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageColorEnhancementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageColorEnhancementData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageColorEnhancementData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageContrastEnhancementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageContrastEnhancementData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageContrastEnhancementData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageDehazeResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageDehazeData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageDehazeData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageLosslessEnlargementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageLosslessEnlargementData>,
    #[serde(default, rename = "url")]
    pub url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageLosslessEnlargementData {
    #[serde(default, rename = "url")]
    pub url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageClarityEnhancementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageClarityEnhancementData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageClarityEnhancementData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageDistortionCorrectionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageDistortionCorrectionData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(default, rename = "ratio")]
    pub ratio: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageDistortionCorrectionData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(default, rename = "ratio")]
    pub ratio: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageCompositionAestheticsScoreResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageCompositionAestheticsScoreData>,
    #[serde(default, rename = "score")]
    pub score: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageCompositionAestheticsScoreData {
    #[serde(default, rename = "score")]
    pub score: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageExposureRatingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageExposureRatingData>,
    #[serde(default, rename = "exposure")]
    pub exposure: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageExposureRatingData {
    #[serde(default, rename = "exposure")]
    pub exposure: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceAnalyzerResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFaceAnalyzerData>,
    #[serde(default, rename = "image_width")]
    pub image_width: Option<i64>,
    #[serde(default, rename = "image_height")]
    pub image_height: Option<i64>,
    #[serde(default, rename = "face_detail_infos")]
    pub face_detail_infos: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_rect")]
    pub face_rect: Option<serde_json::Value>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "face_detail_attributes_info")]
    pub face_detail_attributes_info: Option<serde_json::Value>,
    #[serde(default, rename = "age")]
    pub age: Option<i64>,
    #[serde(default, rename = "beauty")]
    pub beauty: Option<i64>,
    #[serde(default, rename = "emotion")]
    pub emotion: Option<serde_json::Value>,
    #[serde(default, rename = "type")]
    pub type_value: Option<i64>,
    #[serde(default, rename = "probability")]
    pub probability: Option<f64>,
    #[serde(default, rename = "eye")]
    pub eye: Option<serde_json::Value>,
    #[serde(default, rename = "glass")]
    pub glass: Option<serde_json::Value>,
    #[serde(default, rename = "eye_open")]
    pub eye_open: Option<serde_json::Value>,
    #[serde(default, rename = "eyelid_type")]
    pub eyelid_type: Option<serde_json::Value>,
    #[serde(default, rename = "eye_size")]
    pub eye_size: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow")]
    pub eyebrow: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow_density")]
    pub eyebrow_density: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow_curve")]
    pub eyebrow_curve: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow_length")]
    pub eyebrow_length: Option<serde_json::Value>,
    #[serde(default, rename = "gender")]
    pub gender: Option<serde_json::Value>,
    #[serde(default, rename = "hair")]
    pub hair: Option<serde_json::Value>,
    #[serde(default, rename = "length")]
    pub length: Option<serde_json::Value>,
    #[serde(default, rename = "bang")]
    pub bang: Option<serde_json::Value>,
    #[serde(default, rename = "color")]
    pub color: Option<serde_json::Value>,
    #[serde(default, rename = "hat")]
    pub hat: Option<serde_json::Value>,
    #[serde(default, rename = "style")]
    pub style: Option<serde_json::Value>,
    #[serde(default, rename = "head_pose")]
    pub head_pose: Option<serde_json::Value>,
    #[serde(default, rename = "pitch")]
    pub pitch: Option<i64>,
    #[serde(default, rename = "yaw")]
    pub yaw: Option<i64>,
    #[serde(default, rename = "mask")]
    pub mask: Option<serde_json::Value>,
    #[serde(default, rename = "mouth")]
    pub mouth: Option<serde_json::Value>,
    #[serde(default, rename = "mouth_open")]
    pub mouth_open: Option<serde_json::Value>,
    #[serde(default, rename = "moustache")]
    pub moustache: Option<serde_json::Value>,
    #[serde(default, rename = "nose")]
    pub nose: Option<serde_json::Value>,
    #[serde(default, rename = "shape")]
    pub shape: Option<serde_json::Value>,
    #[serde(default, rename = "skin")]
    pub skin: Option<serde_json::Value>,
    #[serde(default, rename = "smile")]
    pub smile: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceAnalyzerData {
    #[serde(default, rename = "image_width")]
    pub image_width: Option<i64>,
    #[serde(default, rename = "image_height")]
    pub image_height: Option<i64>,
    #[serde(default, rename = "face_detail_infos")]
    pub face_detail_infos: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_rect")]
    pub face_rect: Option<serde_json::Value>,
    #[serde(default, rename = "x")]
    pub x: Option<i64>,
    #[serde(default, rename = "y")]
    pub y: Option<i64>,
    #[serde(default, rename = "width")]
    pub width: Option<i64>,
    #[serde(default, rename = "height")]
    pub height: Option<i64>,
    #[serde(default, rename = "face_detail_attributes_info")]
    pub face_detail_attributes_info: Option<serde_json::Value>,
    #[serde(default, rename = "age")]
    pub age: Option<i64>,
    #[serde(default, rename = "beauty")]
    pub beauty: Option<i64>,
    #[serde(default, rename = "emotion")]
    pub emotion: Option<serde_json::Value>,
    #[serde(default, rename = "type")]
    pub type_value: Option<i64>,
    #[serde(default, rename = "probability")]
    pub probability: Option<f64>,
    #[serde(default, rename = "eye")]
    pub eye: Option<serde_json::Value>,
    #[serde(default, rename = "glass")]
    pub glass: Option<serde_json::Value>,
    #[serde(default, rename = "eye_open")]
    pub eye_open: Option<serde_json::Value>,
    #[serde(default, rename = "eyelid_type")]
    pub eyelid_type: Option<serde_json::Value>,
    #[serde(default, rename = "eye_size")]
    pub eye_size: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow")]
    pub eyebrow: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow_density")]
    pub eyebrow_density: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow_curve")]
    pub eyebrow_curve: Option<serde_json::Value>,
    #[serde(default, rename = "eyebrow_length")]
    pub eyebrow_length: Option<serde_json::Value>,
    #[serde(default, rename = "gender")]
    pub gender: Option<serde_json::Value>,
    #[serde(default, rename = "hair")]
    pub hair: Option<serde_json::Value>,
    #[serde(default, rename = "length")]
    pub length: Option<serde_json::Value>,
    #[serde(default, rename = "bang")]
    pub bang: Option<serde_json::Value>,
    #[serde(default, rename = "color")]
    pub color: Option<serde_json::Value>,
    #[serde(default, rename = "hat")]
    pub hat: Option<serde_json::Value>,
    #[serde(default, rename = "style")]
    pub style: Option<serde_json::Value>,
    #[serde(default, rename = "head_pose")]
    pub head_pose: Option<serde_json::Value>,
    #[serde(default, rename = "pitch")]
    pub pitch: Option<i64>,
    #[serde(default, rename = "yaw")]
    pub yaw: Option<i64>,
    #[serde(default, rename = "mask")]
    pub mask: Option<serde_json::Value>,
    #[serde(default, rename = "mouth")]
    pub mouth: Option<serde_json::Value>,
    #[serde(default, rename = "mouth_open")]
    pub mouth_open: Option<serde_json::Value>,
    #[serde(default, rename = "moustache")]
    pub moustache: Option<serde_json::Value>,
    #[serde(default, rename = "nose")]
    pub nose: Option<serde_json::Value>,
    #[serde(default, rename = "shape")]
    pub shape: Option<serde_json::Value>,
    #[serde(default, rename = "skin")]
    pub skin: Option<serde_json::Value>,
    #[serde(default, rename = "smile")]
    pub smile: Option<i64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceAnalyzerAdvancedResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFaceAnalyzerAdvancedData>,
    #[serde(default, rename = "pupils")]
    pub pupils: Option<Vec<f64>>,
    #[serde(default, rename = "gender_list")]
    pub gender_list: Option<Vec<i64>>,
    #[serde(default, rename = "expressions")]
    pub expressions: Option<Vec<i64>>,
    #[serde(default, rename = "face_count")]
    pub face_count: Option<i64>,
    #[serde(default, rename = "landmarks")]
    pub landmarks: Option<Vec<f64>>,
    #[serde(default, rename = "landmark_count")]
    pub landmark_count: Option<i64>,
    #[serde(default, rename = "beauty_list")]
    pub beauty_list: Option<Vec<f64>>,
    #[serde(default, rename = "hat_list")]
    pub hat_list: Option<Vec<i64>>,
    #[serde(default, rename = "face_probability_list")]
    pub face_probability_list: Option<Vec<f64>>,
    #[serde(default, rename = "glasses")]
    pub glasses: Option<Vec<i64>>,
    #[serde(default, rename = "face_rectangles")]
    pub face_rectangles: Option<Vec<i64>>,
    #[serde(default, rename = "pose_list")]
    pub pose_list: Option<Vec<f64>>,
    #[serde(default, rename = "age_list")]
    pub age_list: Option<Vec<i64>>,
    #[serde(default, rename = "dense_feature_length")]
    pub dense_feature_length: Option<i64>,
    #[serde(default, rename = "masks")]
    pub masks: Option<Vec<i64>>,
    #[serde(default, rename = "qualities")]
    pub qualities: Option<serde_json::Value>,
    #[serde(default, rename = "score_list")]
    pub score_list: Option<Vec<f64>>,
    #[serde(default, rename = "blur_list")]
    pub blur_list: Option<Vec<f64>>,
    #[serde(default, rename = "fnf_list")]
    pub fnf_list: Option<Vec<f64>>,
    #[serde(default, rename = "glass_list")]
    pub glass_list: Option<Vec<f64>>,
    #[serde(default, rename = "illu_list")]
    pub illu_list: Option<Vec<f64>>,
    #[serde(default, rename = "mask_list")]
    pub mask_list: Option<Vec<f64>>,
    #[serde(default, rename = "noise_list")]
    pub noise_list: Option<Vec<f64>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceAnalyzerAdvancedData {
    #[serde(default, rename = "pupils")]
    pub pupils: Option<Vec<f64>>,
    #[serde(default, rename = "gender_list")]
    pub gender_list: Option<Vec<i64>>,
    #[serde(default, rename = "expressions")]
    pub expressions: Option<Vec<i64>>,
    #[serde(default, rename = "face_count")]
    pub face_count: Option<i64>,
    #[serde(default, rename = "landmarks")]
    pub landmarks: Option<Vec<f64>>,
    #[serde(default, rename = "landmark_count")]
    pub landmark_count: Option<i64>,
    #[serde(default, rename = "beauty_list")]
    pub beauty_list: Option<Vec<f64>>,
    #[serde(default, rename = "hat_list")]
    pub hat_list: Option<Vec<i64>>,
    #[serde(default, rename = "face_probability_list")]
    pub face_probability_list: Option<Vec<f64>>,
    #[serde(default, rename = "glasses")]
    pub glasses: Option<Vec<i64>>,
    #[serde(default, rename = "face_rectangles")]
    pub face_rectangles: Option<Vec<i64>>,
    #[serde(default, rename = "pose_list")]
    pub pose_list: Option<Vec<f64>>,
    #[serde(default, rename = "age_list")]
    pub age_list: Option<Vec<i64>>,
    #[serde(default, rename = "dense_feature_length")]
    pub dense_feature_length: Option<i64>,
    #[serde(default, rename = "masks")]
    pub masks: Option<Vec<i64>>,
    #[serde(default, rename = "qualities")]
    pub qualities: Option<serde_json::Value>,
    #[serde(default, rename = "score_list")]
    pub score_list: Option<Vec<f64>>,
    #[serde(default, rename = "blur_list")]
    pub blur_list: Option<Vec<f64>>,
    #[serde(default, rename = "fnf_list")]
    pub fnf_list: Option<Vec<f64>>,
    #[serde(default, rename = "glass_list")]
    pub glass_list: Option<Vec<f64>>,
    #[serde(default, rename = "illu_list")]
    pub illu_list: Option<Vec<f64>>,
    #[serde(default, rename = "mask_list")]
    pub mask_list: Option<Vec<f64>>,
    #[serde(default, rename = "noise_list")]
    pub noise_list: Option<Vec<f64>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialLandmarksResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFacialLandmarksData>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "face_num")]
    pub face_num: Option<i64>,
    #[serde(default, rename = "face_list")]
    pub face_list: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_token")]
    pub face_token: Option<String>,
    #[serde(default, rename = "location")]
    pub location: Option<serde_json::Value>,
    #[serde(default, rename = "left")]
    pub left: Option<f64>,
    #[serde(default, rename = "top")]
    pub top: Option<f64>,
    #[serde(default, rename = "width")]
    pub width: Option<f64>,
    #[serde(default, rename = "height")]
    pub height: Option<f64>,
    #[serde(default, rename = "rotation")]
    pub rotation: Option<i64>,
    #[serde(default, rename = "face_probability")]
    pub face_probability: Option<f64>,
    #[serde(default, rename = "angle")]
    pub angle: Option<serde_json::Value>,
    #[serde(default, rename = "yaw")]
    pub yaw: Option<f64>,
    #[serde(default, rename = "pitch")]
    pub pitch: Option<f64>,
    #[serde(default, rename = "roll")]
    pub roll: Option<f64>,
    #[serde(default, rename = "age")]
    pub age: Option<f64>,
    #[serde(default, rename = "gender")]
    pub gender: Option<serde_json::Value>,
    #[serde(default, rename = "type")]
    pub type_value: Option<String>,
    #[serde(default, rename = "probability")]
    pub probability: Option<f64>,
    #[serde(default, rename = "landmark4")]
    pub landmark4: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "landmark72")]
    pub landmark72: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "landmark150")]
    pub landmark150: Option<serde_json::Value>,
    #[serde(default, rename = "landmark201")]
    pub landmark201: Option<serde_json::Value>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialLandmarksData {
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "face_num")]
    pub face_num: Option<i64>,
    #[serde(default, rename = "face_list")]
    pub face_list: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_token")]
    pub face_token: Option<String>,
    #[serde(default, rename = "location")]
    pub location: Option<serde_json::Value>,
    #[serde(default, rename = "left")]
    pub left: Option<f64>,
    #[serde(default, rename = "top")]
    pub top: Option<f64>,
    #[serde(default, rename = "width")]
    pub width: Option<f64>,
    #[serde(default, rename = "height")]
    pub height: Option<f64>,
    #[serde(default, rename = "rotation")]
    pub rotation: Option<i64>,
    #[serde(default, rename = "face_probability")]
    pub face_probability: Option<f64>,
    #[serde(default, rename = "angle")]
    pub angle: Option<serde_json::Value>,
    #[serde(default, rename = "yaw")]
    pub yaw: Option<f64>,
    #[serde(default, rename = "pitch")]
    pub pitch: Option<f64>,
    #[serde(default, rename = "roll")]
    pub roll: Option<f64>,
    #[serde(default, rename = "age")]
    pub age: Option<f64>,
    #[serde(default, rename = "gender")]
    pub gender: Option<serde_json::Value>,
    #[serde(default, rename = "type")]
    pub type_value: Option<String>,
    #[serde(default, rename = "probability")]
    pub probability: Option<f64>,
    #[serde(default, rename = "landmark4")]
    pub landmark4: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "landmark72")]
    pub landmark72: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "landmark150")]
    pub landmark150: Option<serde_json::Value>,
    #[serde(default, rename = "landmark201")]
    pub landmark201: Option<serde_json::Value>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinAnalysisBasicResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitSkinAnalysisBasicData>,
    #[serde(default, rename = "warning")]
    pub warning: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_rectangle")]
    pub face_rectangle: Option<serde_json::Value>,
    #[serde(default, rename = "top")]
    pub top: Option<f64>,
    #[serde(default, rename = "left")]
    pub left: Option<f64>,
    #[serde(default, rename = "width")]
    pub width: Option<f64>,
    #[serde(default, rename = "height")]
    pub height: Option<f64>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "left_eyelids")]
    pub left_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "value")]
    pub value: Option<i64>,
    #[serde(default, rename = "confidence")]
    pub confidence: Option<f64>,
    #[serde(default, rename = "right_eyelids")]
    pub right_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "eye_pouch")]
    pub eye_pouch: Option<serde_json::Value>,
    #[serde(default, rename = "dark_circle")]
    pub dark_circle: Option<serde_json::Value>,
    #[serde(default, rename = "forehead_wrinkle")]
    pub forehead_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "crows_feet")]
    pub crows_feet: Option<serde_json::Value>,
    #[serde(default, rename = "eye_finelines")]
    pub eye_finelines: Option<serde_json::Value>,
    #[serde(default, rename = "glabella_wrinkle")]
    pub glabella_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "nasolabial_fold")]
    pub nasolabial_fold: Option<serde_json::Value>,
    #[serde(default, rename = "skin_type")]
    pub skin_type: Option<serde_json::Value>,
    #[serde(default, rename = "details")]
    pub details: Option<serde_json::Value>,
    #[serde(default, rename = "0")]
    pub field_0: Option<serde_json::Value>,
    #[serde(default, rename = "1")]
    pub field_1: Option<serde_json::Value>,
    #[serde(default, rename = "2")]
    pub field_2: Option<serde_json::Value>,
    #[serde(default, rename = "3")]
    pub field_3: Option<serde_json::Value>,
    #[serde(default, rename = "pores_forehead")]
    pub pores_forehead: Option<serde_json::Value>,
    #[serde(default, rename = "pores_left_cheek")]
    pub pores_left_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_right_cheek")]
    pub pores_right_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_jaw")]
    pub pores_jaw: Option<serde_json::Value>,
    #[serde(default, rename = "blackhead")]
    pub blackhead: Option<serde_json::Value>,
    #[serde(default, rename = "acne")]
    pub acne: Option<serde_json::Value>,
    #[serde(default, rename = "mole")]
    pub mole: Option<serde_json::Value>,
    #[serde(default, rename = "skin_spot")]
    pub skin_spot: Option<serde_json::Value>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinAnalysisBasicData {
    #[serde(default, rename = "warning")]
    pub warning: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_rectangle")]
    pub face_rectangle: Option<serde_json::Value>,
    #[serde(default, rename = "top")]
    pub top: Option<f64>,
    #[serde(default, rename = "left")]
    pub left: Option<f64>,
    #[serde(default, rename = "width")]
    pub width: Option<f64>,
    #[serde(default, rename = "height")]
    pub height: Option<f64>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "left_eyelids")]
    pub left_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "value")]
    pub value: Option<i64>,
    #[serde(default, rename = "confidence")]
    pub confidence: Option<f64>,
    #[serde(default, rename = "right_eyelids")]
    pub right_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "eye_pouch")]
    pub eye_pouch: Option<serde_json::Value>,
    #[serde(default, rename = "dark_circle")]
    pub dark_circle: Option<serde_json::Value>,
    #[serde(default, rename = "forehead_wrinkle")]
    pub forehead_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "crows_feet")]
    pub crows_feet: Option<serde_json::Value>,
    #[serde(default, rename = "eye_finelines")]
    pub eye_finelines: Option<serde_json::Value>,
    #[serde(default, rename = "glabella_wrinkle")]
    pub glabella_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "nasolabial_fold")]
    pub nasolabial_fold: Option<serde_json::Value>,
    #[serde(default, rename = "skin_type")]
    pub skin_type: Option<serde_json::Value>,
    #[serde(default, rename = "details")]
    pub details: Option<serde_json::Value>,
    #[serde(default, rename = "0")]
    pub field_0: Option<serde_json::Value>,
    #[serde(default, rename = "1")]
    pub field_1: Option<serde_json::Value>,
    #[serde(default, rename = "2")]
    pub field_2: Option<serde_json::Value>,
    #[serde(default, rename = "3")]
    pub field_3: Option<serde_json::Value>,
    #[serde(default, rename = "pores_forehead")]
    pub pores_forehead: Option<serde_json::Value>,
    #[serde(default, rename = "pores_left_cheek")]
    pub pores_left_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_right_cheek")]
    pub pores_right_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_jaw")]
    pub pores_jaw: Option<serde_json::Value>,
    #[serde(default, rename = "blackhead")]
    pub blackhead: Option<serde_json::Value>,
    #[serde(default, rename = "acne")]
    pub acne: Option<serde_json::Value>,
    #[serde(default, rename = "mole")]
    pub mole: Option<serde_json::Value>,
    #[serde(default, rename = "skin_spot")]
    pub skin_spot: Option<serde_json::Value>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinAnalysisAdvancedResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitSkinAnalysisAdvancedData>,
    #[serde(default, rename = "warning")]
    pub warning: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_rectangle")]
    pub face_rectangle: Option<serde_json::Value>,
    #[serde(default, rename = "top")]
    pub top: Option<f64>,
    #[serde(default, rename = "left")]
    pub left: Option<f64>,
    #[serde(default, rename = "width")]
    pub width: Option<f64>,
    #[serde(default, rename = "height")]
    pub height: Option<f64>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "skin_color")]
    pub skin_color: Option<serde_json::Value>,
    #[serde(default, rename = "value")]
    pub value: Option<i64>,
    #[serde(default, rename = "confidence")]
    pub confidence: Option<f64>,
    #[serde(default, rename = "skintone_ita")]
    pub skintone_ita: Option<serde_json::Value>,
    #[serde(default, rename = "ITA")]
    pub i_t_a: Option<f64>,
    #[serde(default, rename = "skintone")]
    pub skintone: Option<i64>,
    #[serde(default, rename = "skin_hue_ha")]
    pub skin_hue_ha: Option<serde_json::Value>,
    #[serde(default, rename = "HA")]
    pub h_a: Option<f64>,
    #[serde(default, rename = "skin_age")]
    pub skin_age: Option<serde_json::Value>,
    #[serde(default, rename = "left_eyelids")]
    pub left_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "right_eyelids")]
    pub right_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "eye_pouch")]
    pub eye_pouch: Option<serde_json::Value>,
    #[serde(default, rename = "eye_pouch_severity")]
    pub eye_pouch_severity: Option<serde_json::Value>,
    #[serde(default, rename = "dark_circle")]
    pub dark_circle: Option<serde_json::Value>,
    #[serde(default, rename = "forehead_wrinkle")]
    pub forehead_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "crows_feet")]
    pub crows_feet: Option<serde_json::Value>,
    #[serde(default, rename = "eye_finelines")]
    pub eye_finelines: Option<serde_json::Value>,
    #[serde(default, rename = "glabella_wrinkle")]
    pub glabella_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "nasolabial_fold")]
    pub nasolabial_fold: Option<serde_json::Value>,
    #[serde(default, rename = "nasolabial_fold_severity")]
    pub nasolabial_fold_severity: Option<serde_json::Value>,
    #[serde(default, rename = "skin_type")]
    pub skin_type: Option<serde_json::Value>,
    #[serde(default, rename = "details")]
    pub details: Option<serde_json::Value>,
    #[serde(default, rename = "0")]
    pub field_0: Option<serde_json::Value>,
    #[serde(default, rename = "1")]
    pub field_1: Option<serde_json::Value>,
    #[serde(default, rename = "2")]
    pub field_2: Option<serde_json::Value>,
    #[serde(default, rename = "3")]
    pub field_3: Option<serde_json::Value>,
    #[serde(default, rename = "pores_forehead")]
    pub pores_forehead: Option<serde_json::Value>,
    #[serde(default, rename = "pores_left_cheek")]
    pub pores_left_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_right_cheek")]
    pub pores_right_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_jaw")]
    pub pores_jaw: Option<serde_json::Value>,
    #[serde(default, rename = "blackhead")]
    pub blackhead: Option<serde_json::Value>,
    #[serde(default, rename = "acne")]
    pub acne: Option<serde_json::Value>,
    #[serde(default, rename = "rectangle")]
    pub rectangle: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "mole")]
    pub mole: Option<serde_json::Value>,
    #[serde(default, rename = "closed_comedones")]
    pub closed_comedones: Option<serde_json::Value>,
    #[serde(default, rename = "skin_spot")]
    pub skin_spot: Option<serde_json::Value>,
    #[serde(default, rename = "face_maps")]
    pub face_maps: Option<serde_json::Value>,
    #[serde(default, rename = "red_area")]
    pub red_area: Option<String>,
    #[serde(default, rename = "sensitivity")]
    pub sensitivity: Option<serde_json::Value>,
    #[serde(default, rename = "sensitivity_area")]
    pub sensitivity_area: Option<f64>,
    #[serde(default, rename = "sensitivity_intensity")]
    pub sensitivity_intensity: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinAnalysisAdvancedData {
    #[serde(default, rename = "warning")]
    pub warning: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "face_rectangle")]
    pub face_rectangle: Option<serde_json::Value>,
    #[serde(default, rename = "top")]
    pub top: Option<f64>,
    #[serde(default, rename = "left")]
    pub left: Option<f64>,
    #[serde(default, rename = "width")]
    pub width: Option<f64>,
    #[serde(default, rename = "height")]
    pub height: Option<f64>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "skin_color")]
    pub skin_color: Option<serde_json::Value>,
    #[serde(default, rename = "value")]
    pub value: Option<i64>,
    #[serde(default, rename = "confidence")]
    pub confidence: Option<f64>,
    #[serde(default, rename = "skintone_ita")]
    pub skintone_ita: Option<serde_json::Value>,
    #[serde(default, rename = "ITA")]
    pub i_t_a: Option<f64>,
    #[serde(default, rename = "skintone")]
    pub skintone: Option<i64>,
    #[serde(default, rename = "skin_hue_ha")]
    pub skin_hue_ha: Option<serde_json::Value>,
    #[serde(default, rename = "HA")]
    pub h_a: Option<f64>,
    #[serde(default, rename = "skin_age")]
    pub skin_age: Option<serde_json::Value>,
    #[serde(default, rename = "left_eyelids")]
    pub left_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "right_eyelids")]
    pub right_eyelids: Option<serde_json::Value>,
    #[serde(default, rename = "eye_pouch")]
    pub eye_pouch: Option<serde_json::Value>,
    #[serde(default, rename = "eye_pouch_severity")]
    pub eye_pouch_severity: Option<serde_json::Value>,
    #[serde(default, rename = "dark_circle")]
    pub dark_circle: Option<serde_json::Value>,
    #[serde(default, rename = "forehead_wrinkle")]
    pub forehead_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "crows_feet")]
    pub crows_feet: Option<serde_json::Value>,
    #[serde(default, rename = "eye_finelines")]
    pub eye_finelines: Option<serde_json::Value>,
    #[serde(default, rename = "glabella_wrinkle")]
    pub glabella_wrinkle: Option<serde_json::Value>,
    #[serde(default, rename = "nasolabial_fold")]
    pub nasolabial_fold: Option<serde_json::Value>,
    #[serde(default, rename = "nasolabial_fold_severity")]
    pub nasolabial_fold_severity: Option<serde_json::Value>,
    #[serde(default, rename = "skin_type")]
    pub skin_type: Option<serde_json::Value>,
    #[serde(default, rename = "details")]
    pub details: Option<serde_json::Value>,
    #[serde(default, rename = "0")]
    pub field_0: Option<serde_json::Value>,
    #[serde(default, rename = "1")]
    pub field_1: Option<serde_json::Value>,
    #[serde(default, rename = "2")]
    pub field_2: Option<serde_json::Value>,
    #[serde(default, rename = "3")]
    pub field_3: Option<serde_json::Value>,
    #[serde(default, rename = "pores_forehead")]
    pub pores_forehead: Option<serde_json::Value>,
    #[serde(default, rename = "pores_left_cheek")]
    pub pores_left_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_right_cheek")]
    pub pores_right_cheek: Option<serde_json::Value>,
    #[serde(default, rename = "pores_jaw")]
    pub pores_jaw: Option<serde_json::Value>,
    #[serde(default, rename = "blackhead")]
    pub blackhead: Option<serde_json::Value>,
    #[serde(default, rename = "acne")]
    pub acne: Option<serde_json::Value>,
    #[serde(default, rename = "rectangle")]
    pub rectangle: Option<Vec<serde_json::Value>>,
    #[serde(default, rename = "mole")]
    pub mole: Option<serde_json::Value>,
    #[serde(default, rename = "closed_comedones")]
    pub closed_comedones: Option<serde_json::Value>,
    #[serde(default, rename = "skin_spot")]
    pub skin_spot: Option<serde_json::Value>,
    #[serde(default, rename = "face_maps")]
    pub face_maps: Option<serde_json::Value>,
    #[serde(default, rename = "red_area")]
    pub red_area: Option<String>,
    #[serde(default, rename = "sensitivity")]
    pub sensitivity: Option<serde_json::Value>,
    #[serde(default, rename = "sensitivity_area")]
    pub sensitivity_area: Option<f64>,
    #[serde(default, rename = "sensitivity_intensity")]
    pub sensitivity_intensity: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinAnalysisProfessionalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitSkinAnalysisProfessionalData>,
    #[serde(default, rename = "left_side_result")]
    pub left_side_result: Option<String>,
    #[serde(default, rename = "right_side_result")]
    pub right_side_result: Option<String>,
    #[serde(default, rename = "face_rectangle")]
    pub face_rectangle: Option<serde_json::Value>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinAnalysisProfessionalData {
    #[serde(default, rename = "left_side_result")]
    pub left_side_result: Option<String>,
    #[serde(default, rename = "right_side_result")]
    pub right_side_result: Option<String>,
    #[serde(default, rename = "face_rectangle")]
    pub face_rectangle: Option<serde_json::Value>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinDiseaseDetectionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitSkinDiseaseDetectionData>,
    #[serde(default, rename = "body_part")]
    pub body_part: Option<String>,
    #[serde(default, rename = "image_quality")]
    pub image_quality: Option<f64>,
    #[serde(default, rename = "image_type")]
    pub image_type: Option<String>,
    #[serde(default, rename = "results_english")]
    pub results_english: Option<serde_json::Value>,
    #[serde(default, rename = "acne")]
    pub acne: Option<f64>,
    #[serde(default, rename = "actinic_keratosis")]
    pub actinic_keratosis: Option<f64>,
    #[serde(default, rename = "alopecia_androgenetica")]
    pub alopecia_androgenetica: Option<f64>,
    #[serde(default, rename = "alopecia_areata")]
    pub alopecia_areata: Option<f64>,
    #[serde(default, rename = "bullous_dermatosis")]
    pub bullous_dermatosis: Option<f64>,
    #[serde(default, rename = "chloasma")]
    pub chloasma: Option<f64>,
    #[serde(default, rename = "corn")]
    pub corn: Option<f64>,
    #[serde(default, rename = "dermatofibroma")]
    pub dermatofibroma: Option<f64>,
    #[serde(default, rename = "eczema_dermatitis")]
    pub eczema_dermatitis: Option<f64>,
    #[serde(default, rename = "erysipelas")]
    pub erysipelas: Option<f64>,
    #[serde(default, rename = "erythema_multiforme")]
    pub erythema_multiforme: Option<f64>,
    #[serde(default, rename = "folliculitis")]
    pub folliculitis: Option<f64>,
    #[serde(default, rename = "furuncle")]
    pub furuncle: Option<f64>,
    #[serde(default, rename = "haemangioma")]
    pub haemangioma: Option<f64>,
    #[serde(default, rename = "herpes")]
    pub herpes: Option<f64>,
    #[serde(default, rename = "herpes_simplex")]
    pub herpes_simplex: Option<f64>,
    #[serde(default, rename = "iga_vasculitis")]
    pub iga_vasculitis: Option<f64>,
    #[serde(default, rename = "keloid")]
    pub keloid: Option<f64>,
    #[serde(default, rename = "keratosis_follicularism")]
    pub keratosis_follicularism: Option<f64>,
    #[serde(default, rename = "lichen_planus")]
    pub lichen_planus: Option<f64>,
    #[serde(default, rename = "lupus_erythematosus")]
    pub lupus_erythematosus: Option<f64>,
    #[serde(default, rename = "molluscum_contagiosum")]
    pub molluscum_contagiosum: Option<f64>,
    #[serde(default, rename = "nevus")]
    pub nevus: Option<f64>,
    #[serde(default, rename = "paronychia")]
    pub paronychia: Option<f64>,
    #[serde(default, rename = "pityriasis_alba")]
    pub pityriasis_alba: Option<f64>,
    #[serde(default, rename = "pityriasis_rosea")]
    pub pityriasis_rosea: Option<f64>,
    #[serde(default, rename = "prurigo_nodularis")]
    pub prurigo_nodularis: Option<f64>,
    #[serde(default, rename = "psoriasis")]
    pub psoriasis: Option<f64>,
    #[serde(default, rename = "rosacea")]
    pub rosacea: Option<f64>,
    #[serde(default, rename = "sebaceous_cyst")]
    pub sebaceous_cyst: Option<f64>,
    #[serde(default, rename = "sebaceousnevus")]
    pub sebaceousnevus: Option<f64>,
    #[serde(default, rename = "seborrheic_dermatitis")]
    pub seborrheic_dermatitis: Option<f64>,
    #[serde(default, rename = "seborrheic_keratosis")]
    pub seborrheic_keratosis: Option<f64>,
    #[serde(default, rename = "skin_tag")]
    pub skin_tag: Option<f64>,
    #[serde(default, rename = "stasis_dermatitis")]
    pub stasis_dermatitis: Option<f64>,
    #[serde(default, rename = "syringoma")]
    pub syringoma: Option<f64>,
    #[serde(default, rename = "tinea_capitis")]
    pub tinea_capitis: Option<f64>,
    #[serde(default, rename = "tinea_corporis")]
    pub tinea_corporis: Option<f64>,
    #[serde(default, rename = "tinea_cruris")]
    pub tinea_cruris: Option<f64>,
    #[serde(default, rename = "tinea_manuum")]
    pub tinea_manuum: Option<f64>,
    #[serde(default, rename = "tinea_pedis")]
    pub tinea_pedis: Option<f64>,
    #[serde(default, rename = "tinea_unguium")]
    pub tinea_unguium: Option<f64>,
    #[serde(default, rename = "tinea_versicolor")]
    pub tinea_versicolor: Option<f64>,
    #[serde(default, rename = "urticaria")]
    pub urticaria: Option<f64>,
    #[serde(default, rename = "urticaria_papular")]
    pub urticaria_papular: Option<f64>,
    #[serde(default, rename = "varicella")]
    pub varicella: Option<f64>,
    #[serde(default, rename = "verruca_plana")]
    pub verruca_plana: Option<f64>,
    #[serde(default, rename = "verruca_vulgaris")]
    pub verruca_vulgaris: Option<f64>,
    #[serde(default, rename = "vitiligo")]
    pub vitiligo: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitSkinDiseaseDetectionData {
    #[serde(default, rename = "body_part")]
    pub body_part: Option<String>,
    #[serde(default, rename = "image_quality")]
    pub image_quality: Option<f64>,
    #[serde(default, rename = "image_type")]
    pub image_type: Option<String>,
    #[serde(default, rename = "results_english")]
    pub results_english: Option<serde_json::Value>,
    #[serde(default, rename = "acne")]
    pub acne: Option<f64>,
    #[serde(default, rename = "actinic_keratosis")]
    pub actinic_keratosis: Option<f64>,
    #[serde(default, rename = "alopecia_androgenetica")]
    pub alopecia_androgenetica: Option<f64>,
    #[serde(default, rename = "alopecia_areata")]
    pub alopecia_areata: Option<f64>,
    #[serde(default, rename = "bullous_dermatosis")]
    pub bullous_dermatosis: Option<f64>,
    #[serde(default, rename = "chloasma")]
    pub chloasma: Option<f64>,
    #[serde(default, rename = "corn")]
    pub corn: Option<f64>,
    #[serde(default, rename = "dermatofibroma")]
    pub dermatofibroma: Option<f64>,
    #[serde(default, rename = "eczema_dermatitis")]
    pub eczema_dermatitis: Option<f64>,
    #[serde(default, rename = "erysipelas")]
    pub erysipelas: Option<f64>,
    #[serde(default, rename = "erythema_multiforme")]
    pub erythema_multiforme: Option<f64>,
    #[serde(default, rename = "folliculitis")]
    pub folliculitis: Option<f64>,
    #[serde(default, rename = "furuncle")]
    pub furuncle: Option<f64>,
    #[serde(default, rename = "haemangioma")]
    pub haemangioma: Option<f64>,
    #[serde(default, rename = "herpes")]
    pub herpes: Option<f64>,
    #[serde(default, rename = "herpes_simplex")]
    pub herpes_simplex: Option<f64>,
    #[serde(default, rename = "iga_vasculitis")]
    pub iga_vasculitis: Option<f64>,
    #[serde(default, rename = "keloid")]
    pub keloid: Option<f64>,
    #[serde(default, rename = "keratosis_follicularism")]
    pub keratosis_follicularism: Option<f64>,
    #[serde(default, rename = "lichen_planus")]
    pub lichen_planus: Option<f64>,
    #[serde(default, rename = "lupus_erythematosus")]
    pub lupus_erythematosus: Option<f64>,
    #[serde(default, rename = "molluscum_contagiosum")]
    pub molluscum_contagiosum: Option<f64>,
    #[serde(default, rename = "nevus")]
    pub nevus: Option<f64>,
    #[serde(default, rename = "paronychia")]
    pub paronychia: Option<f64>,
    #[serde(default, rename = "pityriasis_alba")]
    pub pityriasis_alba: Option<f64>,
    #[serde(default, rename = "pityriasis_rosea")]
    pub pityriasis_rosea: Option<f64>,
    #[serde(default, rename = "prurigo_nodularis")]
    pub prurigo_nodularis: Option<f64>,
    #[serde(default, rename = "psoriasis")]
    pub psoriasis: Option<f64>,
    #[serde(default, rename = "rosacea")]
    pub rosacea: Option<f64>,
    #[serde(default, rename = "sebaceous_cyst")]
    pub sebaceous_cyst: Option<f64>,
    #[serde(default, rename = "sebaceousnevus")]
    pub sebaceousnevus: Option<f64>,
    #[serde(default, rename = "seborrheic_dermatitis")]
    pub seborrheic_dermatitis: Option<f64>,
    #[serde(default, rename = "seborrheic_keratosis")]
    pub seborrheic_keratosis: Option<f64>,
    #[serde(default, rename = "skin_tag")]
    pub skin_tag: Option<f64>,
    #[serde(default, rename = "stasis_dermatitis")]
    pub stasis_dermatitis: Option<f64>,
    #[serde(default, rename = "syringoma")]
    pub syringoma: Option<f64>,
    #[serde(default, rename = "tinea_capitis")]
    pub tinea_capitis: Option<f64>,
    #[serde(default, rename = "tinea_corporis")]
    pub tinea_corporis: Option<f64>,
    #[serde(default, rename = "tinea_cruris")]
    pub tinea_cruris: Option<f64>,
    #[serde(default, rename = "tinea_manuum")]
    pub tinea_manuum: Option<f64>,
    #[serde(default, rename = "tinea_pedis")]
    pub tinea_pedis: Option<f64>,
    #[serde(default, rename = "tinea_unguium")]
    pub tinea_unguium: Option<f64>,
    #[serde(default, rename = "tinea_versicolor")]
    pub tinea_versicolor: Option<f64>,
    #[serde(default, rename = "urticaria")]
    pub urticaria: Option<f64>,
    #[serde(default, rename = "urticaria_papular")]
    pub urticaria_papular: Option<f64>,
    #[serde(default, rename = "varicella")]
    pub varicella: Option<f64>,
    #[serde(default, rename = "verruca_plana")]
    pub verruca_plana: Option<f64>,
    #[serde(default, rename = "verruca_vulgaris")]
    pub verruca_vulgaris: Option<f64>,
    #[serde(default, rename = "vitiligo")]
    pub vitiligo: Option<f64>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitTryOnClothesData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesProResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitTryOnClothesProData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesProData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBlurringResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFacialBlurringData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBlurringData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitExpressionEditingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitExpressionEditingData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitExpressionEditingData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceRestorationEnhancementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFaceRestorationEnhancementData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceRestorationEnhancementData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceAttributeEditingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFaceAttributeEditingData>,
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceAttributeEditingData {
    #[serde(default, rename = "result")]
    pub result: Option<serde_json::Value>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBeautificationResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFacialBeautificationData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBeautificationData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBeautificationAdvancedResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFacialBeautificationAdvancedData>,
    #[serde(default, rename = "result_image")]
    pub result_image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBeautificationAdvancedData {
    #[serde(default, rename = "result_image")]
    pub result_image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBeautificationProResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFacialBeautificationProData>,
    #[serde(default, rename = "result")]
    pub result: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialBeautificationProData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "result")]
    pub result: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialFiltersResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFacialFiltersData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFacialFiltersData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceFusionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitFaceFusionData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitFaceFusionData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitHairstyleEditingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitHairstyleEditingData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitHairstyleEditingData {
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitHairstyleEditingProResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitHairstyleEditingProData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitHairstyleEditingProData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitLipsColorChangerResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitLipsColorChangerData>,
    #[serde(default, rename = "result_image")]
    pub result_image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitLipsColorChangerData {
    #[serde(default, rename = "result_image")]
    pub result_image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitLivePhotosResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitLivePhotosData>,
    #[serde(default, rename = "video")]
    pub video: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitLivePhotosData {
    #[serde(default, rename = "video")]
    pub video: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitCartoonYourselfResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitCartoonYourselfData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitCartoonYourselfData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitIntelligentBeautificationResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitIntelligentBeautificationData>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitIntelligentBeautificationData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitIntelligentFaceSlimmingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitIntelligentFaceSlimmingData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitIntelligentFaceSlimmingData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitIntelligentSkinRetouchingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitIntelligentSkinRetouchingData>,
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitIntelligentSkinRetouchingData {
    #[serde(default, rename = "image_url")]
    pub image_url: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesRefinerResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitTryOnClothesRefinerData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesRefinerData {
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHDUniversalBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutHDUniversalBackgroundRemovalData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHDUniversalBackgroundRemovalData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHDHumanBodyBackgroundRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<CutoutHDHumanBodyBackgroundRemovalData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct CutoutHDHumanBodyBackgroundRemovalData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "elements")]
    pub elements: Option<Vec<serde_json::Value>>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAINailArtResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAINailArtData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAINailArtData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAINailArtProResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAINailArtProData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAINailArtProData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIPhotographyResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAIPhotographyData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIPhotographyData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIEmojiGeneratorResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAIEmojiGeneratorData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIEmojiGeneratorData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImagePhotoToColoringPageResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImagePhotoToColoringPageData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImagePhotoToColoringPageData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIFlowerWallpaperResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<ImageAIFlowerWallpaperData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct ImageAIFlowerWallpaperData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIFaceRatingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIFaceRatingData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIFaceRatingData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBaldResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIBaldData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBaldData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBeardRemovalResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIBeardRemovalData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBeardRemovalData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBeardStylingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIBeardStylingData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBeardStylingData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBreastExpansionResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIBreastExpansionData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBreastExpansionData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "image")]
    pub image: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIButtEnhancementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIButtEnhancementData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIButtEnhancementData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIColoredContactsResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIColoredContactsData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIColoredContactsData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIEyebrowsResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIEyebrowsData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIEyebrowsData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIEyelashesResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIEyelashesData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIEyelashesData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIEyeshadowTryOnResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIEyeshadowTryOnData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIEyeshadowTryOnData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIFaceSwapResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIFaceSwapData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIFaceSwapData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIFatFilterResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIFatFilterData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIFatFilterData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIHairColorResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIHairColorData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIHairColorData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIHairLossSimulationResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIHairLossSimulationData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIHairLossSimulationData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAILipEnhancementResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAILipEnhancementData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAILipEnhancementData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIWaistSlimmingResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIWaistSlimmingData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIWaistSlimmingData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesPremiumResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitTryOnClothesPremiumData>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitTryOnClothesPremiumData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_code")]
    pub error_code_2: Option<i64>,
    #[serde(default, rename = "error_code_str")]
    pub error_code_str: Option<String>,
    #[serde(default, rename = "error_msg")]
    pub error_msg_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_type")]
    pub task_type_2: Option<String>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBigHeadEffectResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIBigHeadEffectData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIBigHeadEffectData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIHalloweenMaskResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIHalloweenMaskData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIHalloweenMaskData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAILipBiteExpressionsResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAILipBiteExpressionsData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAILipBiteExpressionsData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIRedLipGlossResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAIRedLipGlossData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAIRedLipGlossData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAISquareFaceFilterResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAISquareFaceFilterData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAISquareFaceFilterData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitExpressionEditingAdvancedResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitExpressionEditingAdvancedData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitExpressionEditingAdvancedData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitHairstyleEditingPremiumResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitHairstyleEditingPremiumData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitHairstyleEditingPremiumData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAISkinEnhancementAdvancedResponse {
    #[serde(default)]
    pub error_code: Option<i64>,
    #[serde(default)]
    pub error_msg: Option<String>,
    #[serde(default)]
    pub error_detail: Option<serde_json::Value>,
    #[serde(default)]
    pub request_id: Option<String>,
    #[serde(default)]
    pub log_id: Option<String>,
    #[serde(default)]
    pub task_id: Option<String>,
    #[serde(default)]
    pub task_type: Option<String>,
    #[serde(default)]
    pub data: Option<PortraitAISkinEnhancementAdvancedData>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct PortraitAISkinEnhancementAdvancedData {
    #[serde(default, rename = "request_id")]
    pub request_id_2: Option<String>,
    #[serde(default, rename = "log_id")]
    pub log_id_2: Option<String>,
    #[serde(default, rename = "error_detail")]
    pub error_detail_2: Option<serde_json::Value>,
    #[serde(default, rename = "task_id")]
    pub task_id_2: Option<String>,
    #[serde(flatten)]
    pub extra: HashMap<String, Value>,
}
