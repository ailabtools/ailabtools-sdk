export * from "./generated/endpoints";
export * from "./types";
export * from "./errors";
import { Requester } from "./http";
import { CommonAPI } from "./common/common";
import { ImageAPI } from "./image/image";
import { PortraitAPI } from "./portrait/portrait";
import { CutoutAPI } from "./cutout/cutout";
import type { ClientOptions } from "./types";
import type {
  CommonQueryAsyncTaskResultResponse,
  CutoutUniversalBackgroundRemovalParams,
  CutoutUniversalBackgroundRemovalResponse,
} from "./generated/endpoints";

export interface WaitForTaskOptions {
  intervalMs?: number;
  timeoutMs?: number;
  throwOnFailed?: boolean;
}

export interface BackgroundAPI {
  remove(params: CutoutUniversalBackgroundRemovalParams): Promise<CutoutUniversalBackgroundRemovalResponse>;
}

export class AILabClient {
  readonly common: CommonAPI;
  readonly image: ImageAPI;
  readonly portrait: PortraitAPI;
  readonly cutout: CutoutAPI;
  readonly background: BackgroundAPI;
  constructor(options: ClientOptions) {
    const requester = new Requester({
      apiKey: options.apiKey,
      baseUrl: options.baseUrl ?? "https://www.ailabapi.com",
      timeoutMs: options.timeoutMs ?? 30000,
    });
    this.common = new CommonAPI(requester);
    this.image = new ImageAPI(requester);
    this.portrait = new PortraitAPI(requester);
    this.cutout = new CutoutAPI(requester);
    this.background = {
      remove: (params) => this.cutout.cutoutUniversalBackgroundRemoval(params),
    };
  }

  async waitForTask(taskId: string, options: WaitForTaskOptions = {}): Promise<CommonQueryAsyncTaskResultResponse> {
    const intervalMs = options.intervalMs ?? 5000;
    const timeoutMs = options.timeoutMs ?? 300000;
    const throwOnFailed = options.throwOnFailed ?? true;
    const startedAt = Date.now();

    while (Date.now() - startedAt <= timeoutMs) {
      const result = await this.common.commonQueryAsyncTaskResult({ taskId });
      const status = result.data?.task_status ?? (result.data as any)?.taskStatus ?? result.task_status;
      if (status === 2) return result;
      if (status === 3) {
        if (throwOnFailed) throw new Error(`AILabTools task failed: ${taskId}`);
        return result;
      }
      await new Promise((resolve) => setTimeout(resolve, intervalMs));
    }

    throw new Error(`AILabTools task timed out: ${taskId}`);
  }
}
