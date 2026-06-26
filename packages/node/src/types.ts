export interface BaseResponse<T = unknown> {
  request_id?: string;
  log_id?: string;
  error_code?: number;
  error_code_str?: string;
  error_msg?: string;
  error_detail?: {
    status_code?: number;
    code?: string;
    code_message?: string;
    message?: string;
  };
  data?: T;
  image?: string;
  ratio?: number | string;
  task_type?: string;
  task_id?: string;
  task_status?: number;
}

export type FileInput = Buffer | ArrayBuffer | Uint8Array | NodeJS.ReadableStream;

export interface ClientOptions {
  apiKey: string;
  baseUrl?: string;
  timeoutMs?: number;
}
