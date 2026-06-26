import os
import pytest
import asyncio
from ailabtools import AILabClient

@pytest.mark.asyncio
async def test_query_credits():
    api_key = os.environ.get('AILAB_API_KEY')
    if not api_key:
        raise RuntimeError('Missing AILAB_API_KEY')
    client = AILabClient(api_key=api_key)
    res = await client.common.commonQueryCredits({})
    assert res.get('error_code') == 0
    await client.aclose()
