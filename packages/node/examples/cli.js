#!/usr/bin/env node
const { AILabClient } = require('../dist/index.js');

const apiKey = process.env.AILAB_API_KEY;
if (!apiKey) {
  console.error('Missing AILAB_API_KEY');
  process.exit(1);
}

const client = new AILabClient({ apiKey });
const cmd = process.argv[2];

(async () => {
  if (cmd === 'credits') {
    const res = await client.common.commonQueryCredits({});
    console.log(JSON.stringify(res, null, 2));
    return;
  }
  console.log('Usage: cli.js credits');
})();
