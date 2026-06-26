import pytest
import httpx

from ailabtools.http import Requester
from ailabtools.errors import AILabApiError


@pytest.mark.asyncio
async def test_non_json_error_response():
    async def handler(request: httpx.Request) -> httpx.Response:
        return httpx.Response(502, text="bad gateway")

    transport = httpx.MockTransport(handler)
    requester = Requester(api_key="k", base_url="https://example.com", timeout=1.0, transport=transport)
    with pytest.raises(AILabApiError) as exc:
        await requester.request("GET", "/x")
    err = exc.value
    assert err.detail.status_code == 502
    assert err.raw == "bad gateway"
    await requester.aclose()


@pytest.mark.asyncio
async def test_error_detail_extra_fields_ignored():
    async def handler(request: httpx.Request) -> httpx.Response:
        return httpx.Response(400, json={
            "error_code": 1,
            "error_msg": "bad request",
            "error_detail": {
                "status_code": 400,
                "code": "E_BAD",
                "message": "bad request",
                "extra": "ignore me",
            },
        })

    transport = httpx.MockTransport(handler)
    requester = Requester(api_key="k", base_url="https://example.com", timeout=1.0, transport=transport)
    with pytest.raises(AILabApiError) as exc:
        await requester.request("POST", "/y", body={"a": 1})
    err = exc.value
    assert err.detail.status_code == 400
    assert err.detail.code == "E_BAD"
    assert err.detail.message == "bad request"
    assert not hasattr(err.detail, "extra")
    await requester.aclose()
