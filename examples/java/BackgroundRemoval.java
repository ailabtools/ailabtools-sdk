import com.ailabtools.sdk.AILabClient;
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams;
import com.ailabtools.sdk.http.FileInput;
import java.nio.file.Path;

public final class BackgroundRemoval {
    private BackgroundRemoval() {
    }

    public static void main(String[] args) throws Exception {
        String apiKey = System.getenv("AILAB_API_KEY");
        if (apiKey == null || apiKey.isEmpty()) {
            throw new IllegalStateException("Set AILAB_API_KEY before running this example.");
        }

        AILabClient client = new AILabClient(apiKey);
        var result = client.background().remove(
                CutoutUniversalBackgroundRemovalParams.builder()
                        .image(FileInput.fromPath(Path.of("image.jpg")))
                        .build());

        System.out.println(result.getData().getImageUrl());
    }
}
