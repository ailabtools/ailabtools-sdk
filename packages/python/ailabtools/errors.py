from dataclasses import dataclass
from typing import Optional, Any

@dataclass
class ErrorDetail:
    status_code: Optional[int] = None
    code: Optional[str] = None
    code_message: Optional[str] = None
    message: Optional[str] = None

class AILabApiError(Exception):
    def __init__(self, message: str, detail: Optional[ErrorDetail] = None, request_id: Optional[str] = None, log_id: Optional[str] = None, raw: Any = None):
        super().__init__(message)
        self.detail = detail
        self.request_id = request_id
        self.log_id = log_id
        self.raw = raw
