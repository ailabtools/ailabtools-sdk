from typing import Any, Dict, Optional
import httpx
from .errors import AILabApiError, ErrorDetail
from .types import BaseResponse

def _file_tuple(field: str, value: bytes):
    if value.startswith(b"\xff\xd8"):
        return (f"{field}.jpg", value, "image/jpeg")
    if value.startswith(b"\x89PNG\r\n\x1a\n"):
        return (f"{field}.png", value, "image/png")
    if len(value) >= 12 and value[:4] == b"RIFF" and value[8:12] == b"WEBP":
        return (f"{field}.webp", value, "image/webp")
    if value.startswith(b"BM"):
        return (f"{field}.bmp", value, "image/bmp")
    return (f"{field}.bin", value)

class Requester:
    def __init__(self, api_key: str, base_url: str, timeout: float, transport: Optional[httpx.AsyncBaseTransport] = None):
        self._client = httpx.AsyncClient(base_url=base_url, timeout=timeout, headers={
            "ailabapi-api-key": api_key,
        }, transport=transport)

    async def request(self, method: str, path: str, query: Optional[Dict[str, Any]] = None, body: Optional[Dict[str, Any]] = None, multipart: bool = False) -> BaseResponse:
        params = {k: v for k, v in (query or {}).items() if v is not None}
        if multipart and body is not None:
            files = {}
            data = {}
            for k, v in body.items():
                if v is None:
                    continue
                if hasattr(v, "read"):
                    files[k] = v
                elif isinstance(v, (bytes, bytearray, memoryview)):
                    files[k] = _file_tuple(k, bytes(v))
                else:
                    data[k] = str(v)
            resp = await self._client.request(method, path, params=params, data=data, files=files)
        else:
            resp = await self._client.request(method, path, params=params, json=body)
        try:
            data = resp.json()
        except ValueError:
            raise AILabApiError(
                'AILabTools API Error',
                ErrorDetail(status_code=resp.status_code),
                raw=resp.text,
            )
        if resp.status_code != 200 or data.get('error_code'):
            detail = data.get('error_detail') or {"status_code": resp.status_code}
            allowed = {"status_code", "code", "code_message", "message"}
            detail_filtered = {k: v for k, v in detail.items() if k in allowed}
            if "status_code" not in detail_filtered:
                detail_filtered["status_code"] = resp.status_code
            raise AILabApiError(
                detail.get('message') or data.get('error_msg') or 'AILabTools API Error',
                ErrorDetail(**detail_filtered),
                request_id=data.get('request_id'),
                log_id=data.get('log_id'),
                raw=data,
            )
        return data

    async def aclose(self):
        await self._client.aclose()
