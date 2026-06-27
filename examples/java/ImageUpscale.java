import com.ailabtools.sdk.AILabClient;
import com.ailabtools.sdk.generated.params.ImageLosslessEnlargementParams;
import com.ailabtools.sdk.http.FileInput;
import java.nio.file.Path;

public final class ImageUpscale {
    public static void main(String[] args) throws Exception {
        AILabClient client = new AILabClient(System.getenv("AILAB_API_KEY"));
        var result = client.image().upscale(
                ImageLosslessEnlargementParams.builder()
                        .image(FileInput.fromPath(Path.of("image.jpg")))
                        .upscaleFactor(2)
                        .build());
        System.out.println(result.getData().getUrl());
    }
}
