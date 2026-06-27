// GENERATED FROM packages/spec.json. DO NOT EDIT BY HAND.

import '../requester.dart';
import 'endpoints.dart';

final class CutoutAPI {
  const CutoutAPI(this._requester);

  final Requester _requester;

  Future<CutoutClothingBackgroundRemovalResponse>
      cutoutClothingBackgroundRemoval(
    CutoutClothingBackgroundRemovalParams params,
  ) =>
          _requester.request<CutoutClothingBackgroundRemovalResponseData>(
            method: "POST",
            path: "/api/cutout/general/apparel-background-removal",
            parseData: (value) => value is Map<String, dynamic>
                ? CutoutClothingBackgroundRemovalResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<CutoutProductBackgroundRemovalResponse> cutoutProductBackgroundRemoval(
    CutoutProductBackgroundRemovalParams params,
  ) =>
      _requester.request<CutoutProductBackgroundRemovalResponseData>(
        method: "POST",
        path: "/api/cutout/general/commodity-background-removal",
        parseData: (value) => value is Map<String, dynamic>
            ? CutoutProductBackgroundRemovalResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<CutoutFoodBackgroundRemovalResponse> cutoutFoodBackgroundRemoval(
    CutoutFoodBackgroundRemovalParams params,
  ) =>
      _requester.request<CutoutFoodBackgroundRemovalResponseData>(
        method: "POST",
        path: "/api/cutout/general/food-background-removal",
        parseData: (value) => value is Map<String, dynamic>
            ? CutoutFoodBackgroundRemovalResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<CutoutUniversalBackgroundRemovalResponse>
      cutoutUniversalBackgroundRemoval(
    CutoutUniversalBackgroundRemovalParams params,
  ) =>
          _requester.request<CutoutUniversalBackgroundRemovalResponseData>(
            method: "POST",
            path: "/api/cutout/general/universal-background-removal",
            parseData: (value) => value is Map<String, dynamic>
                ? CutoutUniversalBackgroundRemovalResponseData.fromJson(value)
                : null,
            body: params.toMap(),
            multipart: true,
          );

  Future<CutoutAvatarExtractionResponse> cutoutAvatarExtraction(
    CutoutAvatarExtractionParams params,
  ) =>
      _requester.request<CutoutAvatarExtractionResponseData>(
        method: "POST",
        path: "/api/cutout/portrait/avatar-extraction",
        parseData: (value) => value is Map<String, dynamic>
            ? CutoutAvatarExtractionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<CutoutHairExtractionResponse> cutoutHairExtraction(
    CutoutHairExtractionParams params,
  ) =>
      _requester.request<CutoutHairExtractionResponseData>(
        method: "POST",
        path: "/api/cutout/portrait/hairstyle-extraction",
        parseData: (value) => value is Map<String, dynamic>
            ? CutoutHairExtractionResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );

  Future<CutoutHumanBackgroundRemovalResponse> cutoutHumanBackgroundRemoval(
    CutoutHumanBackgroundRemovalParams params,
  ) =>
      _requester.request<CutoutHumanBackgroundRemovalResponseData>(
        method: "POST",
        path: "/api/cutout/portrait/portrait-background-removal",
        parseData: (value) => value is Map<String, dynamic>
            ? CutoutHumanBackgroundRemovalResponseData.fromJson(value)
            : null,
        body: params.toMap(),
        multipart: true,
      );
}
