use crate::generated::params::*;
use crate::generated::responses::*;
use crate::requester::Requester;
use crate::Result;
use reqwest::Method;

#[derive(Clone)]
pub struct CutoutApi { requester: Requester }
impl CutoutApi {
    pub(crate) fn new(requester: Requester) -> Self { Self { requester } }
    pub async fn cutout_clothing_background_removal(&self, params: CutoutClothingBackgroundRemovalParams) -> Result<CutoutClothingBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/general/apparel-background-removal", params).await
    }
    pub async fn cutout_product_background_removal(&self, params: CutoutProductBackgroundRemovalParams) -> Result<CutoutProductBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/general/commodity-background-removal", params).await
    }
    pub async fn cutout_food_background_removal(&self, params: CutoutFoodBackgroundRemovalParams) -> Result<CutoutFoodBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/general/food-background-removal", params).await
    }
    pub async fn cutout_universal_background_removal(&self, params: CutoutUniversalBackgroundRemovalParams) -> Result<CutoutUniversalBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/general/universal-background-removal", params).await
    }
    pub async fn cutout_avatar_extraction(&self, params: CutoutAvatarExtractionParams) -> Result<CutoutAvatarExtractionResponse> {
        self.requester.request(Method::POST, "/api/cutout/portrait/avatar-extraction", params).await
    }
    pub async fn cutout_hair_extraction(&self, params: CutoutHairExtractionParams) -> Result<CutoutHairExtractionResponse> {
        self.requester.request(Method::POST, "/api/cutout/portrait/hairstyle-extraction", params).await
    }
    pub async fn cutout_human_background_removal(&self, params: CutoutHumanBackgroundRemovalParams) -> Result<CutoutHumanBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/portrait/portrait-background-removal", params).await
    }
    pub async fn cutout_hd_universal_background_removal(&self, params: CutoutHDUniversalBackgroundRemovalParams) -> Result<CutoutHDUniversalBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/general/hd-universal-background-removal", params).await
    }
    pub async fn cutout_hd_human_body_background_removal(&self, params: CutoutHDHumanBodyBackgroundRemovalParams) -> Result<CutoutHDHumanBodyBackgroundRemovalResponse> {
        self.requester.request(Method::POST, "/api/cutout/portrait/hd-portrait-background-removal", params).await
    }
}
