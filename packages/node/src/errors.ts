export interface ErrorDetail {
  status_code?: number;
  code?: string;
  code_message?: string;
  message?: string;
}

export class AILabApiError extends Error {
  readonly statusCode?: number;
  readonly code?: string;
  readonly codeMessage?: string;
  readonly requestId?: string;
  readonly logId?: string;
  readonly raw?: unknown;

  constructor(message: string, detail?: ErrorDetail, meta?: { requestId?: string; logId?: string; raw?: unknown }) {
    super(message);
    this.name = 'AILabApiError';
    this.statusCode = detail?.status_code;
    this.code = detail?.code;
    this.codeMessage = detail?.code_message;
    this.requestId = meta?.requestId;
    this.logId = meta?.logId;
    this.raw = meta?.raw;
  }
}
