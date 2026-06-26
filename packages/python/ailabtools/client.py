import asyncio
import time

from .http import Requester
from .common import CommonAPI
from .image import ImageAPI
from .portrait import PortraitAPI
from .cutout import CutoutAPI
from .generated.endpoints import (
    CommonQueryAsyncTaskResultResponse,
    CutoutUniversalBackgroundRemovalParams,
    CutoutUniversalBackgroundRemovalResponse,
)


class BackgroundAPI:
    def __init__(self, cutout: CutoutAPI):
        self._cutout = cutout

    async def remove(self, params: CutoutUniversalBackgroundRemovalParams) -> CutoutUniversalBackgroundRemovalResponse:
        return await self._cutout.cutoutUniversalBackgroundRemoval(params)


class AILabClient:
    def __init__(self, api_key: str, base_url: str = "https://www.ailabapi.com", timeout: float = 30.0):
        self._requester = Requester(api_key=api_key, base_url=base_url, timeout=timeout)
        self.common = CommonAPI(self._requester)
        self.image = ImageAPI(self._requester)
        self.portrait = PortraitAPI(self._requester)
        self.cutout = CutoutAPI(self._requester)
        self.background = BackgroundAPI(self.cutout)

    async def wait_for_task(
        self,
        task_id: str,
        *,
        interval: float = 5.0,
        timeout: float = 300.0,
        raise_on_failed: bool = True,
    ) -> CommonQueryAsyncTaskResultResponse:
        started_at = time.monotonic()
        while time.monotonic() - started_at <= timeout:
            result = await self.common.commonQueryAsyncTaskResult({"taskId": task_id})
            data = result.get("data") or {}
            status = data.get("taskStatus", data.get("task_status", result.get("task_status")))
            if status == 2:
                return result
            if status == 3:
                if raise_on_failed:
                    raise RuntimeError(f"AILabTools task failed: {task_id}")
                return result
            await asyncio.sleep(interval)

        raise TimeoutError(f"AILabTools task timed out: {task_id}")

    async def aclose(self):
        await self._requester.aclose()
