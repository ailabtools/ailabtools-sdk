import com.ailabtools.sdk.AILabClient
import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams
import java.io.File
import kotlinx.coroutines.runBlocking

fun main(): Unit = runBlocking {
    val client = AILabClient(
        apiKey = requireNotNull(System.getenv("AILAB_API_KEY")),
    )
    try {
        val result = client.background.remove(
            CutoutUniversalBackgroundRemovalParams(
                image = FileInput.fromFile(File("image.jpg"), "image/jpeg"),
                returnForm = "whiteBK",
            ),
        )
        println(result.data?.imageUrl)
    } finally {
        client.close()
    }
}
