from dataclasses import dataclass
from typing import Any, Dict, Optional, TypedDict

class BaseResponse(TypedDict, total=False):
    request_id: str
    log_id: str
    error_code: int
    error_code_str: str
    error_msg: str
    error_detail: Dict[str, Any]
    data: Any
    image: str
    ratio: Any
    task_type: str
    task_id: str
    task_status: int

@dataclass
class ClientOptions:
    api_key: str
    base_url: str = "https://www.ailabapi.com"
    timeout: float = 30.0
