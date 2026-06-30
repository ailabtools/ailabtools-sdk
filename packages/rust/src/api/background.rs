use crate::api::CutoutApi;
use crate::generated::params::CutoutUniversalBackgroundRemovalParams;
use crate::generated::responses::CutoutUniversalBackgroundRemovalResponse;
use crate::Result;

#[derive(Clone)]
pub struct BackgroundApi { cutout: CutoutApi }

impl BackgroundApi {
    pub(crate) fn new(cutout: CutoutApi) -> Self { Self { cutout } }

    pub async fn remove(&self, params: CutoutUniversalBackgroundRemovalParams) -> Result<CutoutUniversalBackgroundRemovalResponse> {
        self.cutout.cutout_universal_background_removal(params).await
    }
}
