# AILabTools SDK for Dart and Flutter

Official Dart and Flutter SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). Add background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, and other AI photo features to Flutter and Dart applications.

## Features

- Strongly typed parameters and responses for 87 current APIs plus 6 legacy-compatible endpoints
- Flutter Android, iOS, web, macOS, Windows, and Linux support
- Dart server and command-line application support
- Multipart image uploads using platform-independent byte data
- Async task polling and structured API errors
- Injectable HTTP client for tests and advanced networking

## Installation

```bash
dart pub add ailabtools
```

For a Flutter project:

```bash
flutter pub add ailabtools
```

## Quick Start

Create or copy an API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```dart
import 'dart:io';

import 'package:ailabtools/ailabtools.dart';

Future<void> main() async {
  final client = AILabClient(
    apiKey: Platform.environment['AILAB_API_KEY']!,
  );

  try {
    final bytes = await File('photo.jpg').readAsBytes();
    final result = await client.background.remove(
      CutoutUniversalBackgroundRemovalParams(
        image: AILabFile.fromBytes(
          bytes,
          filename: 'photo.jpg',
          contentType: 'image/jpeg',
        ),
        returnForm: 'whiteBK',
      ),
    );

    print(result.data?.imageUrl);
  } finally {
    client.close();
  }
}
```

## Flutter File Upload

`AILabFile.fromBytes` works across every Flutter platform, including web. For example, with an `XFile` selected by `image_picker`:

```dart
final bytes = await pickedFile.readAsBytes();
final result = await client.image.upscale(
  ImageLosslessEnlargementParams(
    image: AILabFile.fromBytes(
      bytes,
      filename: pickedFile.name,
      contentType: pickedFile.mimeType,
    ),
    upscaleFactor: 4,
  ),
);

print(result.data?.url);
```

The SDK exposes camelCase Dart fields and maps them to API request names. For example, `upscaleFactor` maps to `upscale_factor`, while `returnForm` maps to `return_form`.

## Popular Use Cases

| Popular API | Typical use case | SDK method |
| --- | --- | --- |
| [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api) | Create cartoon portraits and avatars from photos. | `client.portrait.portraitCartoonYourself()` |
| [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api) | Edit smiles, grins, sadness, and other facial expressions. | `client.portrait.portraitExpressionEditing()` |
| [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api) | Preview preset hairstyles or transfer a hairstyle from a reference image. | `client.portrait.portraitHairstyleEditingPremium()` |
| [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api) | Generate high-quality virtual clothing try-on results. | `client.portrait.portraitTryOnClothesPremium()` |
| [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api) | Analyze skin condition, texture, tone, acne, pores, and wrinkles. | `client.portrait.portraitSkinAnalysisProfessional()` |
| [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api) | Apply advanced portrait beautification and face shaping. | `client.portrait.portraitFacialBeautificationPro()` |
| [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api) | Swap a face into a target portrait while preserving the scene. | `client.portrait.portraitAIFaceSwap()` |
| [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api) | Apply a controlled bust-area adjustment to a portrait. | `client.portrait.portraitAIBreastExpansion()` |

[View the complete AILabTools SDK API index](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/README.md#api-index).

## Common Developer-Friendly Aliases

| Use case | Dart alias |
| --- | --- |
| Remove image background | `client.background.remove()` |
| Upscale an image | `client.image.upscale()` |
| Remove objects | `client.image.removeObjects()` |
| Change a hairstyle | `client.portrait.changeHairstyle()` |
| Retouch a portrait | `client.portrait.retouch()` |

Every API also has a full method name matching the AILabTools API documentation.

[View the complete method and alias reference](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/method-aliases.md).

## Async Tasks

Some APIs return a `task_id`. Poll the task until it succeeds, fails, or times out:

```dart
final task = await client.portrait.changeHairstyle(params);
final taskId = task.taskId ?? task.data?.taskId;

final result = await client.waitForTask(
  taskId!,
  interval: const Duration(seconds: 5),
  timeout: const Duration(minutes: 5),
);
```

## Error Handling

```dart
try {
  final result = await client.background.remove(params);
  print(result.data?.imageUrl);
} on AILabApiException catch (error) {
  print(error.message);
  print(error.requestId);
  print(error.logId);
}
```

## Client Lifecycle

Call `client.close()` when the SDK creates its own HTTP client. An `http.Client` supplied through `httpClient` remains caller-owned and is not closed by the SDK.

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report an SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
