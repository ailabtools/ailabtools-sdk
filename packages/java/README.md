# AILabTools SDK for Java

Official Java SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). Add background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, and other AI photo features to Java applications.

## Requirements

- Java 11 or later
- Maven 3.8 or later

## Installation

```xml
<dependency>
  <groupId>com.ailabtools</groupId>
  <artifactId>ailabtools-sdk</artifactId>
  <version>0.5.3</version>
</dependency>
```

## Quick Start

Create or copy an API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```java
import com.ailabtools.sdk.AILabClient;
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams;
import com.ailabtools.sdk.http.FileInput;
import java.nio.file.Path;

public final class Example {
    public static void main(String[] args) throws Exception {
        AILabClient client = new AILabClient(
                System.getenv("AILAB_API_KEY"));

        var result = client.background().remove(
                CutoutUniversalBackgroundRemovalParams.builder()
                        .image(FileInput.fromPath(Path.of("photo.jpg")))
                        .returnForm("whiteBK")
                        .build());

        System.out.println(result.getData().getImageUrl());
    }
}
```

## Features

- Strongly typed Builder parameters and responses for 87 current APIs plus 6 legacy-compatible endpoints
- Java 11 `HttpClient` with no third-party HTTP dependency
- Path, byte-array, and input-stream file uploads
- Structured API exceptions with request and log IDs
- Async task polling for long-running APIs
- Sources and Javadoc artifacts for IDE navigation

## File Uploads

```java
FileInput fromPath = FileInput.fromPath(Path.of("photo.jpg"));
FileInput fromBytes = FileInput.fromBytes(bytes, "photo.jpg", "image/jpeg");
FileInput fromStream = FileInput.fromInputStream(stream, "photo.jpg");
```

## Popular Use Cases

| Popular API | Typical use case | SDK method |
| --- | --- | --- |
| [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api) | Create cartoon portraits and avatars from photos. | `client.portrait().portraitCartoonYourself()` |
| [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api) | Edit smiles, grins, sadness, and other facial expressions. | `client.portrait().portraitExpressionEditing()` |
| [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api) | Preview preset hairstyles or transfer a hairstyle from a reference image. | `client.portrait().portraitHairstyleEditingPremium()` |
| [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api) | Generate high-quality virtual clothing try-on results. | `client.portrait().portraitTryOnClothesPremium()` |
| [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api) | Analyze skin condition, texture, tone, acne, pores, and wrinkles. | `client.portrait().portraitSkinAnalysisProfessional()` |
| [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api) | Apply advanced portrait beautification and face shaping. | `client.portrait().portraitFacialBeautificationPro()` |
| [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api) | Swap a face into a target portrait while preserving the scene. | `client.portrait().portraitAIFaceSwap()` |
| [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api) | Apply a controlled bust-area adjustment to a portrait. | `client.portrait().portraitAIBreastExpansion()` |

[View the complete AILabTools SDK API index](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/README.md#api-index).

## Common Developer-Friendly Aliases

| Use case | Java alias |
| --- | --- |
| Remove image background | `client.background().remove()` |
| Upscale an image | `client.image().upscale()` |
| Remove objects | `client.image().removeObjects()` |
| Change a hairstyle | `client.portrait().changeHairstyle()` |
| Retouch a portrait | `client.portrait().retouch()` |

The SDK exposes camelCase Java methods and maps them to API request names. For example, `upscaleFactor()` maps to `upscale_factor`, while `returnForm()` maps to `return_form`.

[View the complete method and alias reference](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/method-aliases.md).

## Async Tasks

```java
var task = client.portrait().changeHairstyle(params);
String taskId = task.getTaskId() != null
        ? task.getTaskId()
        : task.getData().getTaskId();

var result = client.waitForTask(
        taskId,
        Duration.ofSeconds(5),
        Duration.ofMinutes(5),
        true);
```

## Error Handling

```java
import com.ailabtools.sdk.exception.ApiException;

try {
    var result = client.background().remove(params);
} catch (ApiException error) {
    System.err.println(error.getMessage());
    System.err.println(error.getRequestId());
    System.err.println(error.getLogId());
}
```

## Client Configuration

```java
AILabClient client = AILabClient.builder(apiKey)
        .timeout(Duration.ofSeconds(60))
        .httpClient(customHttpClient)
        .build();
```

## Maven Central Publishing

The POM includes all Maven Central requirements:

- Project, license, developer, SCM, and issue metadata
- Sources and Javadoc JAR generation
- GPG signing through `maven-gpg-plugin`
- Central Portal publishing through `central-publishing-maven-plugin`

Before publishing:

1. Register and verify the `com.ailabtools` namespace in the [Maven Central Portal](https://central.sonatype.com/).
2. Generate a Central Portal user token and add it as server ID `central` in `~/.m2/settings.xml`.
3. Configure a GPG signing key through `gpg-agent`.
4. Run `mvn clean deploy -Prelease`.
5. Review and publish the validated deployment in the Central Portal.

Automatic publishing is intentionally disabled in the release profile.

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report an SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
