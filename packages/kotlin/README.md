# AILabTools SDK for Kotlin and Android

Official coroutine-based Kotlin and Android SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). It covers background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, skin analysis, and other AI photo workflows.

## Requirements

- Kotlin 2.0 or later
- Android 5.0+ (API level 21+) or Java 8+
- Coroutines

The SDK is distributed as a JVM 8-compatible JAR and does not depend on Android framework classes, so the same artifact works in Android and server-side Kotlin projects.

## Installation

Gradle Kotlin DSL:

```kotlin
dependencies {
    implementation("com.ailabtools:ailabtools-kotlin:0.5.4")
}
```

Gradle Groovy DSL:

```groovy
dependencies {
    implementation 'com.ailabtools:ailabtools-kotlin:0.5.4'
}
```

Maven:

```xml
<dependency>
  <groupId>com.ailabtools</groupId>
  <artifactId>ailabtools-kotlin</artifactId>
  <version>0.5.4</version>
</dependency>
```

Android applications also need network permission:

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

## Quick Start

Create an API key in the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```kotlin
import com.ailabtools.sdk.AILabClient
import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams
import java.io.File

val client = AILabClient(apiKey = BuildConfig.AILABTOOLS_API_KEY)

val result = client.background.remove(
    CutoutUniversalBackgroundRemovalParams(
        image = FileInput.fromFile(File("photo.jpg"), "image/jpeg"),
        returnForm = "whiteBK",
    ),
)

println(result.data?.imageUrl)
client.close()
```

All network methods are `suspend` functions and should run from a lifecycle-aware coroutine on Android.

## Android URI Uploads

The core module does not require an Android `Context`. Convert a content URI with `ContentResolver`:

```kotlin
val image = requireNotNull(contentResolver.openInputStream(uri)).use {
    FileInput.fromStream(it, "photo.jpg", "image/jpeg")
}
```

## Async Tasks

```kotlin
val task = client.portrait.changeHairstyle(params)
val taskId = task.taskId ?: task.data?.taskId
    ?: error("Missing task ID")

val completed = client.waitForTask(taskId)
println(completed.data?.taskStatus)
```

Task polling uses cancellable coroutine delays. Cancelling the calling coroutine also cancels an in-flight OkHttp request.

## Error Handling

```kotlin
try {
    val result = client.background.remove(params)
} catch (error: ApiException) {
    println(error.message)
    println(error.requestId)
    println(error.logId)
    println(error.errorCode)
}
```

## Client Configuration

```kotlin
val client = AILabClient(
    apiKey = apiKey,
    baseUrl = "https://www.ailabapi.com",
    timeoutMillis = 120_000, // default: 120 seconds
    httpClient = sharedOkHttpClient,
)
```

`close()` cancels active calls created by this SDK client. It does not shut down the injected OkHttp dispatcher's shared resources.

## Features

- Strongly typed Kotlin parameters and responses for all 93 SDK endpoints
- Idiomatic `suspend` APIs with coroutine cancellation
- Android-compatible OkHttp transport
- File, byte-array, and input-stream uploads
- Automatic camelCase-to-wire-name parameter mapping
- Structured API exceptions with request and log IDs
- Async task polling
- Sources and Dokka Javadoc artifacts for IDE navigation

## Security

Do not embed a production API key in a publicly distributed Android application. Mobile application packages can be inspected. For production consumer apps, call AILabTools through your authenticated backend and keep the API key on the server.

## Maven Central Publishing

The POM includes required project, license, developer, SCM, issue, source, documentation, signing, and Central Portal metadata.

Before publishing:

1. Verify the `com.ailabtools` namespace in the [Maven Central Portal](https://central.sonatype.com/).
2. Add the Central user token as server ID `central` in `~/.m2/settings.xml`.
3. Configure the GPG signing key through `gpg-agent`.
4. Run `mvn clean deploy -Prelease`.
5. Review and publish the validated deployment in the Central Portal.

Automatic publishing is intentionally disabled.

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report an SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
