const fs = require('fs');
const path = require('path');
const { AILabClient } = require('../packages/node/dist/index.js');

const ROOT = path.resolve(__dirname, '..');
const SPEC = JSON.parse(fs.readFileSync(path.join(ROOT, 'packages/spec.json'), 'utf8'));
const AS = path.join(ROOT, 'test-assets/source');
const DOC = path.join(ROOT, 'test-assets/docs');
const OUT = path.join(ROOT, 'test-assets/results/all-node-results.json');
const API_KEY = process.env.AILAB_API_KEY;
if (!API_KEY) throw new Error('Missing AILAB_API_KEY');

const OLD_METHOD_BY_PATH = {
  "/api/cutout/general/food-background-removal": "cutoutFoodBackgroundRemoval",
  "/api/cutout/general/commodity-background-removal": "cutoutProductBackgroundRemoval",
  "/api/cutout/general/apparel-background-removal": "cutoutClothingBackgroundRemoval",
  "/api/cutout/portrait/hd-portrait-background-removal": "cutoutHdHumanBodyBackgroundRemoval",
  "/api/cutout/portrait/avatar-extraction": "cutoutAvatarExtraction",
  "/api/cutout/portrait/hairstyle-extraction": "cutoutHairExtraction",
  "/api/portrait/effects/face-fusion": "portraitFaceFusion",
  "/api/portrait/effects/smart-beauty": "portraitIntelligentBeautification",
  "/api/portrait/effects/smart-skin": "portraitIntelligentSkinRetouching",
  "/api/portrait/effects/smart-face-slimming": "portraitIntelligentFaceSlimming",
  "/api/portrait/effects/face-beauty": "portraitFacialBeautification",
  "/api/portrait/effects/face-beauty-advanced": "portraitFacialBeautificationAdvanced",
  "/api/portrait/effects/face-beauty-pro": "portraitFacialBeautificationPro",
  "/api/portrait/effects/face-makeup": "portraitFacialMakeup",
  "/api/portrait/effects/face-filter": "portraitFacialFilters",
  "/api/portrait/effects/face-tidyup": "portraitFacialShaping",
  "/api/portrait/effects/emotion-editor": "portraitExpressionEditing",
  "/api/portrait/effects/hairstyle-editor": "portraitHairstyleEditing",
  "/api/portrait/effects/hairstyle-editor-pro": "portraitHairstyleEditingPro",
  "/api/portrait/effects/live-photo": "portraitLivePhotos",
  "/api/portrait/effects/hitchcock-effects": "portraitHitchcockEffect",
  "/api/portrait/effects/blurred-faces": "portraitFacialBlurring",
  "/api/portrait/effects/face-attribute-editing": "portraitFaceAttributeEditing",
  "/api/portrait/effects/enhance-face": "portraitFaceRestorationEnhancement",
  "/api/portrait/effects/lips-color-changer": "portraitLipsColorChanger",
  "/api/portrait/analysis/skin-disease-detection": "portraitSkinDiseaseDetection",
  "/api/portrait/analysis/skin-analysis": "portraitSkinAnalysisBasic",
  "/api/portrait/analysis/skin-analysis-advanced": "portraitSkinAnalysisAdvanced",
  "/api/portrait/analysis/skin-analysis-pro": "portraitSkinAnalysisProfessional",
  "/api/portrait/analysis/face-analyzer": "portraitFaceAnalyzer",
  "/api/portrait/analysis/face-analyzer-advanced": "portraitFaceAnalyzerAdvanced",
  "/api/portrait/editing/try-on-clothes-pro": "portraitTryOnClothesPro",
  "/api/image/enhance/image-lossless-enlargement": "imageLosslessEnlargement",
  "/api/image/enhance/stretch-image-recovery": "imageDistortionCorrection",
  "/api/image/enhance/image-sharpness-enhancement": "imageClarityEnhancement",
  "/api/image/enhance/image-contrast-enhancement": "imageContrastEnhancement",
  "/api/image/enhance/image-color-enhancement": "imageColorEnhancement",
  "/api/image/effects/image-colorization": "imageColoring",
  "/api/image/effects/image-style-conversion": "imageStyleTransfer",
  "/api/image/effects/image-style-migration": "imageStyleMigration",
  "/api/image/effects/image-color-migration": "imageColorMigration",
  "/api/image/effects/image-hd-color-migration": "imageHdColorMigration",
  "/api/image/editing/intelligent-composition": "imageIntelligentComposition",
  "/api/image/editing/photo-retouching": "imagePhotoEditing",
  "/api/image/editing/image-invisible-image-watermark": "imageInvisibleImageWatermark",
  "/api/image/editing/image-invisible-text-watermarking": "imageInvisibleTextWatermark",
  "/api/image/editing/image-erase": "imageErasure",
  "/api/image/editing/remove-objects": "imageRemoveObjects",
  "/api/image/editing/remove-objects-advanced": "imageRemoveObjectsAdvanced",
  "/api/image/editing/remove-objects-pro": "imageRemoveObjectsPro",
  "/api/image/editing/ai-object-replacer": "imageAiObjectReplacer",
  "/api/image/editing/ai-image-extender": "imageAiImageExtender",
  "/api/image/rating/image-exposure-score": "imageExposureRating",
  "/api/common/query-async-task-result": "commonQueryAsyncTaskResult",
  "/api/common/query-credits": "commonQueryCredits",
};
function camel(s) { const parts = s.split(/[-_\s]+/); const first = parts[0].slice(0,1).toLowerCase() + parts[0].slice(1); return first + parts.slice(1).map(p => p.slice(0,1).toUpperCase()+p.slice(1)).join(''); }
function methodName(e) {
  if (OLD_METHOD_BY_PATH[e.path]) return OLD_METHOD_BY_PATH[e.path];
  const base = camel(e.name.replace(/\bAPI\b/g, '').replace(/[^A-Za-z0-9]+/g, ' ').trim());
  return base.toLowerCase().startsWith(e.module.toLowerCase()) ? base : e.module + base.slice(0,1).toUpperCase() + base.slice(1);
}
function file(name) { return fs.readFileSync(path.join(AS, name)); }
function docFile(name) { return fs.readFileSync(path.join(DOC, name)); }
function chooseFile(raw, e) {
  const p = e.path;
  if (/mask|user_mask/.test(raw)) return file('mask.png');
  if (/logo/.test(raw)) return file('logo.png');
  if (e.path.includes('image-style-migration') && /style/.test(raw)) return docFile('style-migration-style.jpg');
  if (e.path.includes('image-style-migration') && /major/.test(raw)) return docFile('style-migration-major.jpg');
  if (/style/.test(raw)) return file('style.jpg');
  if (/major/.test(raw)) return file('face.jpg');
  if (e.path.includes('face-fusion') && /template/.test(raw)) return file('synthetic-face-2.jpg');
  if (e.path.includes('face-fusion') && /target/.test(raw)) return file('synthetic-face-1.jpg');
  if (e.path.includes('hairstyle-editor') && /target/.test(raw)) return file('synthetic-face-1.jpg');
  if (/template/.test(raw)) return file('face.jpg');
  if (/target/.test(raw)) return file('face.jpg');
  if (e.path.includes('try-on-clothes-pro') && /person/.test(raw)) return docFile('tryon-pro-person.png');
  if (e.path.includes('try-on-clothes-pro') && /top_garment|garment/.test(raw)) return docFile('tryon-pro-suit.png');
  if (e.path.includes('try-on-clothes-refiner') && /person/.test(raw)) return docFile('tryon-refiner-person.png');
  if (e.path.includes('try-on-clothes-refiner') && /top_garment|garment/.test(raw)) return docFile('tryon-refiner-suit.png');
  if (e.path.includes('try-on-clothes-refiner') && /coarse/.test(raw)) return docFile('tryon-refiner-coarse.png');
  if (/person/.test(raw)) return file('person.jpg');
  if (/clothes|garment/.test(raw)) return file('garment.png');
  if (/coarse/.test(raw)) return file('coarse.jpg');
  if (e.path.includes('remove-objects-advanced') && raw === 'image') return docFile('remove-adv-original.png');
  if (e.path.includes('remove-objects-advanced') && raw === 'mask') return docFile('remove-adv-mask-gray.png');
  if (/origin|watermark/.test(raw)) return file('face.jpg');
  if (p.includes('animal')) return file('animal.jpg');
  if (p.includes('food')) return file('food.jpg');
  if (p.includes('commodity')) return file('product.jpg');
  if (p.includes('apparel')) return file('tshirt.jpg');
  if (p.includes('furniture')) return file('furniture.jpg');
  if (p.includes('vehicle')) return file('vehicle.jpg');
  if (p.includes('portrait') || p.includes('face') || p.includes('skin') || p.includes('hair') || p.includes('beauty')) return file('face.jpg');
  return fs.existsSync(path.join(ROOT, 'image.jpg')) ? fs.readFileSync(path.join(ROOT, 'image.jpg')) : file('face.jpg');
}
function valueFor(raw, type, e) {
  if ((type || '').includes('file')) return chooseFile(raw, e);
  switch (raw) {
    case 'task_id': return globalThis.__taskId || 'invalid-task-id';
    case 'job_id': return globalThis.__imageJobId || 'invalid-job-id';
    case 'type':
      if (e.path.includes('asyn-task')) return globalThis.__imageJobType || 'GENERATE_CARTOONIZED_IMAGE';
      if (e.path.includes('ai-anime-generator')) return 'default';
      if (e.path.includes('portrait-animation')) return 'pixar';
      if (e.path.includes('live-photo')) return 0;
      return 'default';
    case 'task_type':
      if (e.path.includes('face-beauty-pro') || e.path.includes('smart-beauty')) return 'sync';
      return 'async';
    case 'mode':
      if (e.path.includes('color-migration')) return 'AUTO';
      if (e.path.includes('hitchcock')) return 0;
      return 'base';
    case 'degree': return 'NORMAL';
    case 'operation': return '01';
    case 'option': return 'cartoon';
    case 'output_format': return 'jpg';
    case 'output_file_type': return 'jpg';
    case 'function_type': return e.path.includes('text') ? 'encode_text' : 'encode_pic';
    case 'text': return 'AILabAPI';
    case 'custom_prompt': return 'extend the background naturally';
    case 'resource_type': return e.path.includes('face-filter') ? 'anime' : '0';
    case 'shape_type': return '2';
    case 'action_type': return 'TO_OLD';
    case 'editing_type': return 'hairstyle';
    case 'gender': return 'man';
    case 'hair_style': return 'BuzzCut';
    case 'hair_data': return JSON.stringify([{ hair_style: 'BuzzCut', color: 'black' }]);
    case 'version': return 'v1';
    case 'clothes_type': return 'upper_body';
    case 'lip_color_infos': return JSON.stringify([{ rgba: { r: 246, g: 27, b: 91, a: 80 } }]);
    case 'face_location': return JSON.stringify([]);
    case 'roi_outline_color': return JSON.stringify([255, 0, 0]);
    case 'return_form': return 'crop';
    case 'cloth_class': return 'upper';
    case 'quality': return 'M';
  }
  if ((type || '').includes('integer')) {
    if (raw === 'width') return 512;
    if (raw === 'height') return 512;
    if (raw === 'upscale_factor') return 2;
    if (raw === 'filter_type') return 1;
    if (raw === 'quality_factor') return 90;
    return 1;
  }
  if ((type || '').includes('float')) return 0.5;
  if ((type || '').includes('boolean')) return true;
  if ((type || '').includes('array')) return JSON.stringify([{ hair_style: 'BuzzCut', color: 'black' }]);
  if ((type || '').includes('json')) return '{}';
  return 'test';
}
function buildParams(e) {
  const params = {};
  for (const p of [...(e.query_params || []), ...(e.body_params || [])]) {
    if (p.required) params[camel(p.name)] = valueFor(p.name, p.type, e);
  }
  // Add conditionally documented fields not captured by top-level parser.
  if (e.path.includes('ai-image-extender')) Object.assign(params, { image: chooseFile('image', e), top: 0.1, bottom: 0.1, left: 0.1, right: 0.1 });
  if (e.path.includes('image-invisible-image-watermark')) Object.assign(params, { origin_image: file('face.jpg'), logo: file('logo.png'), output_file_type: 'jpg' });
  if (e.path.includes('image-invisible-text-watermarking')) Object.assign(params, { origin_image: file('face.jpg'), text: 'AILabAPI', output_file_type: 'jpg' });
  if (e.path.includes('image-color-enhancement')) Object.assign(params, { outputFormat: 'jpg', mode: 'Rec709' });
  if (e.path.includes('image-lossless-enlargement')) Object.assign(params, { upscaleFactor: 2, mode: 'base', outputFormat: 'jpg', outputQuality: 80 });
  if (e.path.includes('face-filter')) Object.assign(params, { resourceType: '1', strength: 0.5 });
  if (e.path.includes('face-makeup')) Object.assign(params, { resourceType: '1', strength: 0.5 });
  if (e.path.includes('face-tidyup')) Object.assign(params, { shapeType: '2', strength: 0.5 });
  return params;
}
function summarize(res) {
  const keys = Object.keys(res || {});
  return { error_code: res.error_code, request_id: res.request_id, log_id: res.log_id, task_id: res.task_id, task_type: res.task_type, keys };
}
async function withTimeout(promise, ms) {
  return await Promise.race([promise, new Promise((_, rej) => setTimeout(() => rej(new Error('local timeout')), ms))]);
}
async function runOne(client, e, results) {
  const mn = methodName(e);
  const api = client[e.module];
  if (!api || typeof api[mn] !== 'function') {
    results.push({ name: e.name, path: e.path, module: e.module, method: mn, status: 'sdk_error', message: 'method not found' });
    fs.writeFileSync(OUT, JSON.stringify(results, null, 2));
    return;
  }
  const params = buildParams(e);
  try {
    const res = await withTimeout(api[mn](params), 180000);
    if (res.task_id) globalThis.__taskId = res.task_id;
    if (res.request_id && e.path.includes('ai-anime-generator')) {
      globalThis.__imageJobId = res.request_id;
      globalThis.__imageJobType = 'GENERATE_CARTOONIZED_IMAGE';
    }
    results.push({ name: e.name, path: e.path, module: e.module, method: mn, status: 'ok', summary: summarize(res) });
    console.log('OK ', mn, e.path);
  } catch (err) {
    results.push({ name: e.name, path: e.path, module: e.module, method: mn, status: err.name === 'Error' && err.message === 'local timeout' ? 'timeout' : 'api_error', message: err.message, detail: err.detail || null });
    console.log('ERR', mn, e.path, err.message);
  }
  fs.writeFileSync(OUT, JSON.stringify(results, null, 2));
}
async function main() {
  const client = new AILabClient({ apiKey: API_KEY, timeoutMs: 180000 });
  const results = [];
  const deferred = new Set(['/api/common/query-async-task-result', '/api/image/asyn-task-results']);
  for (const e of SPEC.filter(e => !deferred.has(e.path))) await runOne(client, e, results);
  for (const e of SPEC.filter(e => deferred.has(e.path))) await runOne(client, e, results);
  const counts = results.reduce((m, r) => (m[r.status] = (m[r.status] || 0) + 1, m), {});
  console.log('SUMMARY', counts);
}
main().catch(e => { console.error(e); process.exit(1); });
