#!/usr/bin/env python3
import os, sys, asyncio
from ailabtools import AILabClient

async def main():
    api_key = os.environ.get('AILAB_API_KEY')
    if not api_key:
        print('Missing AILAB_API_KEY')
        return
    client = AILabClient(api_key=api_key)
    if len(sys.argv) >= 2 and sys.argv[1] == 'credits':
        res = await client.common.commonQueryCredits({})
        print(res)
    else:
        print('Usage: cli.py credits')
    await client.aclose()

if __name__ == '__main__':
    asyncio.run(main())
