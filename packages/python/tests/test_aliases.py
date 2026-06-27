import pytest

from ailabtools import AILabClient
from ailabtools.generated.endpoints import (
    validate_cutoutHdHumanBodyBackgroundRemoval_params,
    validate_portraitAIBreastExpansion_params,
    validate_portraitHairstyleEditingPremium_params,
    validate_portraitTryOnClothesPremium_params,
)


@pytest.mark.asyncio
async def test_short_aliases_and_wait_for_task():
    client = AILabClient(api_key="test")
    image = b"\xff\xd8\xff"

    async def background(params):
        return {"error_code": 0, "data": {"image_url": "background"}, "params": params}

    async def upscale(params):
        return {"error_code": 0, "data": {"image_url": "upscale"}, "params": params}

    async def remove_objects(params):
        return {"error_code": 0, "data": {"image_url": "objects"}, "params": params}

    async def hairstyle(params):
        return {"error_code": 0, "data": {"task_id": "hair"}, "params": params}

    async def retouch(params):
        return {"error_code": 0, "data": {"image_url": "retouch"}, "params": params}

    client.cutout.cutoutUniversalBackgroundRemoval = background
    client.image.imageLosslessEnlargement = upscale
    client.image.imageRemoveObjects = remove_objects
    client.portrait.portraitHairstyleEditingPro = hairstyle
    client.portrait.portraitIntelligentBeautification = retouch

    assert (await client.background.remove({"image": image}))["data"]["image_url"] == "background"
    assert (await client.image.upscale({"image": image, "upscaleFactor": 2}))["data"]["image_url"] == "upscale"
    assert (await client.image.remove_objects({"image": image}))["data"]["image_url"] == "objects"
    assert (await client.portrait.change_hairstyle({"image": image, "hairStyle": "BuzzCut"}))["data"]["task_id"] == "hair"
    assert (await client.portrait.retouch({"image": image}))["data"]["image_url"] == "retouch"

    calls = 0

    async def query_task(params):
        nonlocal calls
        calls += 1
        assert params["taskId"] == "task-1"
        if calls == 1:
            return {"error_code": 0, "data": {"taskStatus": 1}}
        return {"error_code": 0, "data": {"taskStatus": 2}}

    client.common.commonQueryAsyncTaskResult = query_task
    result = await client.wait_for_task("task-1", interval=0.001, timeout=1)
    assert result["data"]["taskStatus"] == 2

    await client.aclose()


def test_new_endpoint_surface_and_conditional_validation():
    with pytest.raises(ValueError, match="At least one of hairStyle, imageTemplate is required"):
        validate_portraitHairstyleEditingPremium_params({"image": b"image"})

    validate_portraitHairstyleEditingPremium_params({
        "image": b"image",
        "hairStyle": "BuzzCut",
    })

    client = AILabClient(api_key="test")
    assert callable(client.portrait.portraitAIFaceSwap)
    assert callable(client.portrait.portraitAIBreastExpansion)
    assert callable(client.portrait.portraitTryOnClothesPremium)


def test_new_endpoint_required_params():
    image = b"\xff\xd8\xff"

    with pytest.raises(ValueError, match="Missing required param: image"):
        validate_cutoutHdHumanBodyBackgroundRemoval_params({})
    with pytest.raises(ValueError, match="Missing required param: personImage"):
        validate_portraitAIBreastExpansion_params({})
    with pytest.raises(ValueError, match="Missing required param: topGarment"):
        validate_portraitTryOnClothesPremium_params({
            "taskType": "async",
            "personImage": image,
        })

    validate_portraitTryOnClothesPremium_params({
        "taskType": "async",
        "personImage": image,
        "topGarment": image,
    })
