from .types import ClientOptions
from .http import Requester
from .common import CommonAPI
from .image import ImageAPI
from .portrait import PortraitAPI
from .cutout import CutoutAPI

class AILabClient:
    def __init__(self, api_key: str, base_url: str = "https://www.ailabapi.com", timeout: float = 30.0):
        self._requester = Requester(api_key=api_key, base_url=base_url, timeout=timeout)
        self.common = CommonAPI(self._requester)
        self.image = ImageAPI(self._requester)
        self.portrait = PortraitAPI(self._requester)
        self.cutout = CutoutAPI(self._requester)

    async def aclose(self):
        await self._requester.aclose()
