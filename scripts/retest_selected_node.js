const fs = require('fs');
const path = require('path');
const { AILabClient } = require('../packages/node/dist/index.js');
const ROOT = path.resolve(__dirname, '..');
const AS = path.join(ROOT, 'test-assets/source');
const apiKey = process.env.AILAB_API_KEY;
const client = new AILabClient({ apiKey, timeoutMs: 120000 });
const f = n => fs.readFileSync(path.join(AS, n));
const prev = JSON.parse(fs.readFileSync(path.join(ROOT, 'test-assets/results/all-node-results.json'), 'utf8'));
const find = m => prev.find(r => r.method === m)?.summary;
const cartoon = find('imageAICartoonGenerator');
const task = find('portraitTryOnClothes') || find('portraitHairstyleEditingPro') || cartoon;
const tests = [
  ['commonQueryAsyncTaskResult_valid', () => client.common.commonQueryAsyncTaskResult({ taskId: task?.task_id })],
  ['imageQueryingAsyncTaskResults_valid', () => client.image.imageQueryingAsyncTaskResults({ jobId: cartoon?.request_id, type: 'GENERATE_CARTOONIZED_IMAGE' })],
  ['cutoutClothingBackgroundRemoval_garment', () => client.cutout.cutoutClothingBackgroundRemoval({ image: f('garment.png') })],
  ['portraitExpressionEditing_serviceChoice', () => client.portrait.portraitExpressionEditing({ imageTarget: f('synthetic-face-1.jpg'), serviceChoice: 3 })],
  ['portraitLipsColorChanger_rgba', () => client.portrait.portraitLipsColorChanger({ image: f('synthetic-face-1.jpg'), lipColorInfos: JSON.stringify([{ rgba: { r: 246, g: 27, b: 91, a: 80 } }]) })],
  ['portraitFaceFusion_synthetic', () => client.portrait.portraitFaceFusion({ imageTarget: f('synthetic-face-1.jpg'), imageTemplate: f('synthetic-face-2.jpg') })],
  ['portraitHairstyleEditing_synthetic', () => client.portrait.portraitHairstyleEditing({ imageTarget: f('synthetic-face-1.jpg'), hairType: 1 })],
  ['imageStyleMigration_root', () => client.image.imageStyleMigration({ style: f('style.jpg'), major: fs.readFileSync(path.join(ROOT, 'image.jpg')) })],
  ['imageRemoveObjectsAdvanced_retry', () => client.image.imageRemoveObjectsAdvanced({ image: fs.readFileSync(path.join(ROOT, 'image.jpg')), mask: f('mask.png'), steps: 20, strength: 0.75, scale: 7, seed: 1, dilateSize: 15, quality: 'standard' })],
];
(async()=>{
 const results=[];
 for (const [name, fn] of tests) {
  try {
   const r=await fn();
   results.push({ name, status:'ok', error_code:r.error_code, keys:Object.keys(r), request_id:r.request_id, task_id:r.task_id });
   console.log('OK ', name);
  } catch(e) {
   results.push({ name, status:'error', message:e.message, detail:e.detail || null });
   console.log('ERR', name, e.message);
  }
  fs.writeFileSync(path.join(ROOT, 'test-assets/results/retest-selected-node-results.json'), JSON.stringify(results,null,2));
 }
})();
