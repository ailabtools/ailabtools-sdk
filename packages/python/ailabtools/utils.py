from typing import Dict, Any

def map_params(params: Dict[str, Any], mapping: Dict[str, str]) -> Dict[str, Any]:
    out: Dict[str, Any] = {}
    for k, v in (params or {}).items():
        if v is None:
            continue
        out[mapping.get(k, k)] = v
    return out
