import com.ailabtools.sdk.AILabClient;
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingProParams;
import com.ailabtools.sdk.http.FileInput;
import java.nio.file.Path;
import java.time.Duration;

public final class AsyncTaskPolling {
    public static void main(String[] args) throws Exception {
        AILabClient client = new AILabClient(System.getenv("AILAB_API_KEY"));
        var task = client.portrait().changeHairstyle(
                PortraitHairstyleEditingProParams.builder()
                        .taskType("async")
                        .image(FileInput.fromPath(Path.of("image.jpg")))
                        .hairStyle("BuzzCut")
                        .build());
        String taskId = task.getTaskId() != null
                ? task.getTaskId()
                : task.getData().getTaskId();
        var result = client.waitForTask(
                taskId,
                Duration.ofSeconds(5),
                Duration.ofMinutes(5),
                true);
        System.out.println(result.getData());
    }
}
