export * from "./generated/endpoints";
export * from "./types";
export * from "./errors";
import { Requester } from "./http";
import { CommonAPI } from "./common/common";
import { ImageAPI } from "./image/image";
import { PortraitAPI } from "./portrait/portrait";
import { CutoutAPI } from "./cutout/cutout";
import type { ClientOptions } from "./types";

export class AILabClient {
  readonly common: CommonAPI;
  readonly image: ImageAPI;
  readonly portrait: PortraitAPI;
  readonly cutout: CutoutAPI;
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
  }
}
