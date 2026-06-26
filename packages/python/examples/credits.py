import os
import asyncio
from ailabtools import AILabClient

async def main():
    api_key = os.environ.get('AILAB_API_KEY')
    if not api_key:
        raise RuntimeError('Missing AILAB_API_KEY')
    client = AILabClient(api_key=api_key)
    credits = await client.common.commonQueryCredits({})
    print('credits:', credits)
    await client.aclose()

if __name__ == '__main__':
    asyncio.run(main())
