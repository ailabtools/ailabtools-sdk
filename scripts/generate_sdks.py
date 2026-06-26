import json, re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC = json.loads((ROOT / "packages/spec.json").read_text())

OLD_METHOD_BY_PATH = {
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
}

PY_KEYWORDS = set("False None True and as assert async await break class continue def del elif else except finally for from global if import in is lambda nonlocal not or pass raise return try while with yield".split())

def camel(s):
    parts = re.split(r"[-_\s]+", s)
    base = parts[0][:1].lower() + parts[0][1:]
    return base + ''.join(p[:1].upper() + p[1:] for p in parts[1:] if p)

def pascal(s):
    c = camel(s)
    return c[:1].upper() + c[1:]

def method_name(e):
    if e["path"] in OLD_METHOD_BY_PATH:
        return OLD_METHOD_BY_PATH[e["path"]]
    title = re.sub(r"\bAPI\b", "", e["name"]).strip()
    title = re.sub(r"[^A-Za-z0-9]+", " ", title).strip()
    base = camel(title)
    if base.lower().startswith(e["module"].lower()):
        return base
    return e["module"] + base[:1].upper() + base[1:]

def raw_to_param(name):
    return camel(name)

def ts_prop(name):
    return name if re.match(r"^[A-Za-z_$][A-Za-z0-9_$]*$", name) else json.dumps(name)

def py_prop(name):
    n = camel(name).lstrip('+')
    if not re.match(r"^[A-Za-z_]\w*$", n) or n in PY_KEYWORDS:
        n = "field_" + re.sub(r"\W+", "_", n)
    return n

def ts_param_type(t):
    t=t.lower()
    if "file" in t: return "FileInput"
    if "integer" in t or "number" in t or "float" in t: return "number"
    if "boolean" in t or "bool" in t: return "boolean"
    if "array" in t: return "string[] | number[] | string"
    if "object" in t: return "Record<string, unknown> | string"
    return "string"

def ts_resp_type(t):
    t=t.lower()
    if "integer" in t or "number" in t or "float" in t: return "number"
    if "boolean" in t or "bool" in t: return "boolean"
    if "array" in t: return "unknown[]"
    if "object" in t: return "Record<string, unknown>"
    return "string"

def py_type(t, file=False):
    t=t.lower()
    if file or "file" in t: return "FileInput"
    if "integer" in t: return "int"
    if "number" in t or "float" in t: return "float"
    if "boolean" in t or "bool" in t: return "bool"
    if "array" in t: return "List[Any]"
    if "object" in t: return "Dict[str, Any]"
    return "str"

for e in SPEC:
    e["method_name"] = method_name(e)
    e["type_name"] = pascal(e["method_name"])
    e["all_params"] = e.get("query_params", []) + e.get("body_params", [])

# TS generated endpoints
lines = ['import type { FileInput, BaseResponse } from "../types";\n']
for e in SPEC:
    tn=e['type_name']
    lines.append(f"export interface {tn}Params {{")
    if not e['all_params']:
        lines.append("  // no params")
    for p in e['all_params']:
        n=raw_to_param(p['name']); opt='' if p.get('required') else '?'
        desc=(p.get('desc') or '').replace('*/','')
        lines.append(f"  {ts_prop(n)}{opt}: {ts_param_type(p.get('type',''))}; // {p['name']}{(' | '+desc) if desc else ''}")
    lines.append("}")
    lines.append(f"export interface {tn}ResponseData {{")
    seen=set()
    for r in e.get('response_fields',[]):
        rn=r['name'].lstrip('+')
        if rn == 'data' or rn in seen: continue
        seen.add(rn)
        desc=(r.get('desc') or '').replace('*/','')
        lines.append(f"  {ts_prop(rn)}?: {ts_resp_type(r.get('type',''))}; // {rn}{(' | '+desc) if desc else ''}")
    if not seen: lines.append("  // empty")
    lines.append("}")
    response_data_type = f"{tn}ResponseData[]" if e['unique_sign'] == 'common_query_credits' else f"{tn}ResponseData"
    lines.append(f"export interface {tn}Response extends BaseResponse<{response_data_type}> {{")
    base_keys={'request_id','log_id','error_code','error_msg','error_detail','data','image','ratio','task_type','task_id','task_status','error_code_str'}
    for rn in sorted(seen):
        if rn in base_keys: continue
        lines.append(f"  {ts_prop(rn)}?: {ts_resp_type(next((r.get('type','') for r in e.get('response_fields',[]) if r['name'].lstrip('+')==rn),''))};")
    lines.append("}\n")

for e in SPEC:
    tn=e['type_name']
    mapped={}
    for p in e['all_params']:
        pn=raw_to_param(p['name'])
        if pn != p['name']:
            mapped[pn]=p['name']
    lines.append(f"export const {tn}ParamMap: Record<string, string> = {{")
    for k,v in mapped.items(): lines.append(f"  {json.dumps(k)}: {json.dumps(v)},")
    lines.append("};\n")

for e in SPEC:
    tn=e['type_name']
    lines.append(f"export function validate{tn}Params(params: {tn}Params): void {{")
    lines.append('  const isFileInput = (v: any) => v instanceof Uint8Array || v instanceof ArrayBuffer || (typeof Buffer !== "undefined" && Buffer.isBuffer(v)) || (v && typeof v === "object" && typeof (v as any).pipe === "function");')
    for p in e['all_params']:
        n=raw_to_param(p['name'])
        if p.get('required'):
            lines.append(f"  if (params.{n} === undefined || params.{n} === null) throw new Error(\"Missing required param: {n}\");")
        if 'file' in p.get('type','').lower():
            lines.append(f"  if (params.{n} !== undefined && params.{n} !== null && !isFileInput(params.{n})) throw new Error(\"Invalid file param: {n}\");")
    lines.append("}\n")
(ROOT/'packages/node/src/generated/endpoints.ts').write_text('\n'.join(lines)+"\n")

# TS module classes
for mod, cls in [('common','CommonAPI'),('image','ImageAPI'),('portrait','PortraitAPI'),('cutout','CutoutAPI')]:
    ents=[e for e in SPEC if e['module']==mod]
    imp=[]
    for e in ents:
        tn=e['type_name']; imp += [f"{tn}Params", f"{tn}Response", f"{tn}ResponseData", f"validate{tn}Params", f"{tn}ParamMap"]
    out=['import { Requester } from "../http";','import { mapParams } from "../utils";','import {','  '+',\n  '.join(imp),'} from "../generated/endpoints";','',f'export class {cls} {{','  constructor(private request: Requester) {}','']
    for e in ents:
        tn=e['type_name']; mn=e['method_name']
        body_names={raw_to_param(p['name']) for p in e.get('body_params',[])}
        query_names={raw_to_param(p['name']) for p in e.get('query_params',[])}
        out.append(f"  async {mn}(params: {tn}Params): Promise<{tn}Response> {{")
        out.append(f"    validate{tn}Params(params);")
        out.append(f"    const mapped = mapParams(params, {tn}ParamMap);")
        if body_names and query_names:
            out.append("    const body: Record<string, unknown> = {};")
            out.append("    const query: Record<string, unknown> = {};")
            for n in body_names: out.append(f"    if (mapped[{json.dumps(next(p['name'] for p in e['body_params'] if raw_to_param(p['name'])==n))}] !== undefined) body[{json.dumps(next(p['name'] for p in e['body_params'] if raw_to_param(p['name'])==n))}] = mapped[{json.dumps(next(p['name'] for p in e['body_params'] if raw_to_param(p['name'])==n))}];")
            for n in query_names: out.append(f"    if (mapped[{json.dumps(next(p['name'] for p in e['query_params'] if raw_to_param(p['name'])==n))}] !== undefined) query[{json.dumps(next(p['name'] for p in e['query_params'] if raw_to_param(p['name'])==n))}] = mapped[{json.dumps(next(p['name'] for p in e['query_params'] if raw_to_param(p['name'])==n))}];")
            rd = f'{tn}ResponseData[]' if e['unique_sign'] == 'common_query_credits' else f'{tn}ResponseData'
            out.append(f"    return this.request.request<{rd}>({json.dumps(e['method'])}, {json.dumps(e['path'])}, {{ query, body, multipart: true }});")
        elif body_names:
            rd = f'{tn}ResponseData[]' if e['unique_sign'] == 'common_query_credits' else f'{tn}ResponseData'
            out.append(f"    return this.request.request<{rd}>({json.dumps(e['method'])}, {json.dumps(e['path'])}, {{ body: mapped, multipart: true }});")
        else:
            rd = f'{tn}ResponseData[]' if e['unique_sign'] == 'common_query_credits' else f'{tn}ResponseData'
            out.append(f"    return this.request.request<{rd}>({json.dumps(e['method'])}, {json.dumps(e['path'])}, {{ query: mapped }});")
        out.append("  }\n")
    out.append("}\n")
    (ROOT/f'packages/node/src/{mod}/{mod}.ts').write_text('\n'.join(out))

# Python generated endpoints
plines=['from typing import Any, Dict, List, BinaryIO, IO, TypedDict, Union\n','FileInput = Union[bytes, bytearray, memoryview, BinaryIO, IO[bytes]]\n']
for e in SPEC:
    tn=e['type_name']
    plines.append(f"class {tn}Params(TypedDict, total=False):")
    if not e['all_params']: plines.append("    pass")
    for p in e['all_params']:
        n=py_prop(p['name'])
        plines.append(f"    {n}: {py_type(p.get('type',''), 'file' in p.get('type','').lower())}  # {p['name']}")
    plines.append("")
    plines.append(f"class {tn}ResponseData(TypedDict, total=False):")
    seen=set()
    for r in e.get('response_fields',[]):
        raw_rn=r['name'].lstrip('+')
        if raw_rn == 'data': continue
        rn=py_prop(raw_rn)
        if rn in seen: continue
        seen.add(rn); plines.append(f"    {rn}: {py_type(r.get('type',''))}  # {raw_rn}")
    if not seen: plines.append("    pass")
    plines.append("")
    plines.append(f"class {tn}Response(TypedDict, total=False):")
    data_t = f'List[{tn}ResponseData]' if e['unique_sign'] == 'common_query_credits' else f'{tn}ResponseData'
    for k,t in [('request_id','str'),('log_id','str'),('error_code','int'),('error_msg','str'),('error_detail','Dict[str, Any]'),('data',data_t)]:
        plines.append(f"    {k}: {t}")
    plines.append("")
    plines.append(f"{tn}ParamMap = {{")
    for p in e['all_params']:
        n=py_prop(p['name'])
        if n != p['name']:
            plines.append(f"    {json.dumps(n)}: {json.dumps(p['name'])},")
    plines.append("}\n")
    plines.append(f"def validate_{e['method_name']}_params(params: Dict[str, Any]) -> None:")
    plines.append('    def is_file(v):')
    plines.append('        return hasattr(v, "read") or isinstance(v, (bytes, bytearray, memoryview))')
    any_stmt=False
    for p in e['all_params']:
        n=py_prop(p['name'])
        if p.get('required'):
            plines.append(f"    if params.get({json.dumps(n)}) is None: raise ValueError(\"Missing required param: {n}\")"); any_stmt=True
        if 'file' in p.get('type','').lower():
            plines.append(f"    if params.get({json.dumps(n)}) is not None and not is_file(params.get({json.dumps(n)})): raise ValueError(\"Invalid file param: {n}\")"); any_stmt=True
    if not any_stmt: plines.append("    return")
    plines.append("")
(ROOT/'packages/python/ailabtools/generated/endpoints.py').write_text('\n'.join(plines)+"\n")

for mod, cls in [('common','CommonAPI'),('image','ImageAPI'),('portrait','PortraitAPI'),('cutout','CutoutAPI')]:
    ents=[e for e in SPEC if e['module']==mod]
    imp=[]
    for e in ents:
        tn=e['type_name']; imp += [f"{tn}Params", f"{tn}Response", f"{tn}ParamMap", f"validate_{e['method_name']}_params"]
    out=['from .http import Requester','from .utils import map_params','from .generated.endpoints import (','    '+',\n    '.join(imp),')','',f'class {cls}:','    def __init__(self, requester: Requester):','        self._requester = requester','']
    for e in ents:
        tn=e['type_name']; mn=e['method_name']
        body_raw=[p['name'] for p in e.get('body_params',[])]
        query_raw=[p['name'] for p in e.get('query_params',[])]
        out.append(f"    async def {mn}(self, params: {tn}Params) -> {tn}Response:")
        out.append(f"        validate_{mn}_params(params)")
        out.append(f"        mapped = map_params(params, {tn}ParamMap)")
        if body_raw and query_raw:
            out.append(f"        body = {{k: mapped.get(k) for k in {body_raw!r} if mapped.get(k) is not None}}")
            out.append(f"        query = {{k: mapped.get(k) for k in {query_raw!r} if mapped.get(k) is not None}}")
            out.append(f"        return await self._requester.request({e['method']!r}, {e['path']!r}, query=query, body=body, multipart=True)")
        elif body_raw:
            out.append(f"        return await self._requester.request({e['method']!r}, {e['path']!r}, body=mapped, multipart=True)")
        else:
            out.append(f"        return await self._requester.request({e['method']!r}, {e['path']!r}, query=mapped)")
        out.append("")
    (ROOT/f'packages/python/ailabtools/{mod}.py').write_text('\n'.join(out))
