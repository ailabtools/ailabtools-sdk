# Legacy API Migration Guide

The SDK retains six endpoints that are no longer listed in the current
AILabTools API documentation. They remain available for compatibility, but new
integrations should use current APIs.

## Legacy Endpoints

| Legacy API | SDK method | Recommended migration |
| --- | --- | --- |
| Image async task results | `image.imageQueryingAsyncTaskResults()` | Use `common.commonQueryAsyncTaskResult()` for APIs that return `task_id`. The legacy endpoint uses `job_id` and `type`, so update persisted task metadata before switching. |
| Image Erasure | `image.imageErasure()` | Prefer `image.imageRemoveObjects()`, `image.imageRemoveObjectsAdvanced()`, or `image.imageRemoveObjectsPro()` based on the required mask and quality controls. |
| Style Transfer | `image.imageStyleMigration()` | Evaluate the current Photo to Painting, AI Cartoon Generator, or other documented image-effect APIs. There is no guaranteed one-to-one replacement. |
| Detect Skin Disease | `portrait.portraitSkinDiseaseDetection()` | Prefer the current Skin Analyze Pro API for supported skin analysis fields. Do not treat SDK output as medical advice or diagnosis. |
| Hairstyle Changer | `portrait.portraitHairstyleEditing()` | Use Hairstyle Changer Pro or Hairstyle Changer Premium. Premium supports preset and reference-image workflows. |
| Live Photos | `portrait.portraitLivePhotos()` | No direct current replacement is documented. Keep the legacy call only for existing integrations and test availability before relying on it. |

## Migration Process

1. Identify legacy method calls with the table above.
2. Compare the current API's required inputs and output schema with the legacy
   call; method replacement alone is not sufficient.
3. Update request fields and async task handling.
4. Run contract tests against representative images.
5. Deploy behind a feature flag or staged rollout.
6. Retain request IDs and log IDs for troubleshooting.

Legacy compatibility does not guarantee permanent service availability. Check
the [current AILabTools API documentation](https://www.ailabtools.com/docs)
before starting a new integration.
