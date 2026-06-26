const assert = require('assert');
const { AILabClient } = require('../dist/index.js');

(async () => {
  const client = new AILabClient({ apiKey: 'test' });
  const image = Buffer.from([0xff, 0xd8, 0xff]);

  client.cutout.cutoutUniversalBackgroundRemoval = async (params) => ({ error_code: 0, data: { image_url: 'background' }, params });
  client.image.imageLosslessEnlargement = async (params) => ({ error_code: 0, data: { image_url: 'upscale' }, params });
  client.image.imageRemoveObjects = async (params) => ({ error_code: 0, data: { image_url: 'objects' }, params });
  client.portrait.portraitHairstyleEditingPro = async (params) => ({ error_code: 0, data: { task_id: 'hair' }, params });
  client.portrait.portraitIntelligentBeautification = async (params) => ({ error_code: 0, data: { image_url: 'retouch' }, params });

  assert.equal((await client.background.remove({ image })).data.image_url, 'background');
  assert.equal((await client.image.upscale({ image, upscaleFactor: 2 })).data.image_url, 'upscale');
  assert.equal((await client.image.removeObjects({ image })).data.image_url, 'objects');
  assert.equal((await client.portrait.changeHairstyle({ image, hairStyle: 'BuzzCut' })).data.task_id, 'hair');
  assert.equal((await client.portrait.retouch({ image })).data.image_url, 'retouch');

  let calls = 0;
  client.common.commonQueryAsyncTaskResult = async (params) => {
    calls += 1;
    assert.equal(params.taskId, 'task-1');
    return calls === 1 ? { error_code: 0, data: { task_status: 1 } } : { error_code: 0, data: { task_status: 2 } };
  };
  const result = await client.waitForTask('task-1', { intervalMs: 1, timeoutMs: 100 });
  assert.equal(result.data.task_status, 2);

  console.log('OK aliases');
})();
