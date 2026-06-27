# AILabTools 官方 SDK

AILabTools 为 Node.js、Python、Go、Flutter、Dart、PHP 和 Java 提供官方 SDK，帮助开发者快速接入背景移除、图片放大、物体移除、人像美化、发型编辑、卡通头像和虚拟试穿等 AI 图像处理能力。

## SDK 下载与安装

| 开发语言 | 官方软件包页面 | 安装方式 |
| --- | --- | --- |
| Node.js / TypeScript | [AILabTools Node.js SDK on npm](https://www.npmjs.com/package/ailabtools) | `npm install ailabtools` |
| Python Async | [AILabTools Python SDK on PyPI](https://pypi.org/project/ailabtools-sdk/) | `pip install ailabtools-sdk` |
| Go | [AILabTools Go SDK on pkg.go.dev](https://pkg.go.dev/github.com/ailabtools/ailabtools-sdk/packages/go) | `go get github.com/ailabtools/ailabtools-sdk/packages/go` |
| Flutter / Dart | [AILabTools Flutter and Dart SDK on pub.dev](https://pub.dev/packages/ailabtools) | `flutter pub add ailabtools` |
| PHP | [AILabTools PHP SDK on Packagist](https://packagist.org/packages/ailabtools/ailabtools) | `composer require ailabtools/ailabtools` |
| Java | [AILabTools Java SDK on Maven Central](https://central.sonatype.com/artifact/com.ailabtools/ailabtools-sdk/0.5.3) | `com.ailabtools:ailabtools-sdk:0.5.3` |

## Java Maven 依赖

```xml
<dependency>
  <groupId>com.ailabtools</groupId>
  <artifactId>ailabtools-sdk</artifactId>
  <version>0.5.3</version>
</dependency>
```

## 官方资源

- [AILabTools API Documentation](https://www.ailabtools.com/docs)：查看完整的 API 接口、请求参数和响应结构。
- [AILabTools Developer Console](https://www.ailabtools.com/developer)：创建并管理 AILabTools API Key。
- [AILabTools SDK GitHub Repository](https://github.com/ailabtools/ailabtools-sdk)：查看 Node.js、Python、Go、Flutter、Dart 和 Java SDK 源码。
- [AILabTools PHP SDK GitHub Repository](https://github.com/ailabtools/ailabtools-php)：查看 PHP SDK 源码、示例和更新记录。

## 说明

- Node.js SDK 使用 TypeScript 开发并提供完整类型定义。
- Python SDK 基于异步 HTTP 客户端，支持 `async` / `await`。
- Flutter SDK 同时适用于 Dart 和 Flutter 项目。
- 所有 SDK 均使用 AILabTools API Key 进行身份验证。
- SDK 和 API 返回的图片链接可能具有有效期，请及时下载并保存处理结果。
