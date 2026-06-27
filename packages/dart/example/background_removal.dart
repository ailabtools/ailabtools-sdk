import 'dart:io';

import 'package:ailabtools/ailabtools.dart';

Future<void> main() async {
  final apiKey = Platform.environment['AILAB_API_KEY'];
  if (apiKey == null) {
    throw StateError('Set AILAB_API_KEY before running this example.');
  }

  final image = await File('image.jpg').readAsBytes();
  final client = AILabClient(apiKey: apiKey);
  try {
    final result = await client.background.remove(
      CutoutUniversalBackgroundRemovalParams(
        image: AILabFile.fromBytes(image, filename: 'image.jpg'),
      ),
    );
    print(result.data?.imageUrl);
  } finally {
    client.close();
  }
}
