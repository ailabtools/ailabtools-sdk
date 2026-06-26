const fs = require('fs');
const path = require('path');
const { AILabClient } = require('../packages/node/dist/index.js');
const ROOT = path.resolve(__dirname, '..');
const DOC = path.join(ROOT, 'test-assets/docs');
const c = new AILabClient({ apiKey: process.env.AILAB_API_KEY, timeoutMs: 180000 });
const f = n => fs.readFileSync(path.join(DOC, n));
const tests = [
  ['imageStyleMigration_docs', () => c.image.imageStyleMigration({ style: f('style-migration-style.jpg'), major: f('style-migration-major.jpg') })],
  ['imageRemoveObjectsAdvanced_docs', () => c.image.imageRemoveObjectsAdvanced({ image: f('remove-adv-original.png'), mask: f('remove-adv-mask-gray.png'), quality: 'M' })],
  ['portraitTryOnClothesPro_docs', () => c.portrait.portraitTryOnClothesPro({ taskType: 'async', personImage: f('tryon-pro-person.png'), topGarment: f('tryon-pro-suit.png') })],
  ['portraitTryOnClothesRefiner_docs', () => c.portrait.portraitTryOnClothesRefiner({ taskType: 'async', personImage: f('tryon-refiner-person.png'), topGarment: f('tryon-refiner-suit.png'), coarseImage: f('tryon-refiner-coarse.png'), gender: 'woman' })],
];
(async () => {
  const results = [];
  for (const [name, fn] of tests) {
    try {
      const r = await fn();
      const item = { name, status: 'ok', error_code: r.error_code, request_id: r.request_id, task_id: r.task_id, keys: Object.keys(r) };
      results.push(item);
      console.log('OK ', name, JSON.stringify(item));
    } catch (e) {
      const item = { name, status: 'error', message: e.message, detail: e.detail || null };
      results.push(item);
      console.log('ERR', name, e.message);
    }
    fs.writeFileSync(path.join(ROOT, 'test-assets/results/retest-doc-assets-node-results.json'), JSON.stringify(results, null, 2));
  }
})();
