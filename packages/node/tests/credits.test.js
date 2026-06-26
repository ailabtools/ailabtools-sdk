const assert = require('assert');
const { AILabClient } = require('../dist/index.js');

const apiKey = process.env.AILAB_API_KEY;
if (!apiKey) throw new Error('Missing AILAB_API_KEY');

(async () => {
  const client = new AILabClient({ apiKey });
  const res = await client.common.commonQueryCredits({});
  assert.equal(res.error_code, 0);
  console.log('OK');
})();
