import axios from 'axios';
import FormData from 'form-data';
import { AILabApiError } from './errors';
import type { BaseResponse } from './types';

function fileOptions(field: string, buf: Buffer): { filename: string; contentType?: string } {
  if (buf.length >= 4 && buf[0] === 0xff && buf[1] === 0xd8) {
    return { filename: `${field}.jpg`, contentType: 'image/jpeg' };
  }
  if (buf.length >= 8 && buf[0] === 0x89 && buf[1] === 0x50 && buf[2] === 0x4e && buf[3] === 0x47) {
    return { filename: `${field}.png`, contentType: 'image/png' };
  }
  if (buf.length >= 12 && buf.subarray(0, 4).toString() === 'RIFF' && buf.subarray(8, 12).toString() === 'WEBP') {
    return { filename: `${field}.webp`, contentType: 'image/webp' };
  }
  if (buf.length >= 2 && buf.subarray(0, 2).toString() === 'BM') {
    return { filename: `${field}.bmp`, contentType: 'image/bmp' };
  }
  return { filename: `${field}.bin` };
}

export interface RequesterOptions {
  apiKey: string;
  baseUrl: string;
  timeoutMs: number;
}

export class Requester {
  private readonly apiKey: string;
  private readonly baseUrl: string;
  private readonly timeoutMs: number;

  constructor(options: RequesterOptions) {
    this.apiKey = options.apiKey;
    this.baseUrl = options.baseUrl;
    this.timeoutMs = options.timeoutMs;
  }

  async request<T = unknown>(method: string, path: string, opts?: { query?: Record<string, any>; body?: any; multipart?: boolean }): Promise<BaseResponse<T>> {
    const url = new URL(path, this.baseUrl).toString();

    const headers: Record<string, string> = {
      'ailabapi-api-key': this.apiKey,
    };

    let data: any = undefined;
    if (opts?.multipart && opts.body) {
      const fd = new FormData();
      for (const [k, v] of Object.entries(opts.body)) {
        if (v === undefined || v === null) continue;
        if (v instanceof Uint8Array) {
          const buf = Buffer.from(v);
          fd.append(k, buf, fileOptions(k, buf));
        } else if (v instanceof ArrayBuffer) {
          const buf = Buffer.from(new Uint8Array(v));
          fd.append(k, buf, fileOptions(k, buf));
        } else if (Buffer.isBuffer(v)) {
          fd.append(k, v, fileOptions(k, v));
        } else if (v && typeof v === "object" && typeof (v as any).pipe === "function") {
          fd.append(k, v as any);
        } else {
          fd.append(k, String(v));
        }
      }
      data = fd;
      Object.assign(headers, fd.getHeaders());
    } else if (opts?.body) {
      headers['content-type'] = 'application/json';
      data = opts.body;
    }

    const res = await axios.request({
      method,
      url,
      params: opts?.query,
      data,
      headers,
      timeout: this.timeoutMs,
      validateStatus: () => true,
    });

    const json = res.data as BaseResponse<T>;
    if (res.status !== 200 || json?.error_code) {
      const detail = json?.error_detail || { status_code: res.status };
      throw new AILabApiError(detail.message || json?.error_msg || 'AILabTools API Error', detail, {
        requestId: json?.request_id,
        logId: json?.log_id,
        raw: json,
      });
    }
    return json;
  }
}
