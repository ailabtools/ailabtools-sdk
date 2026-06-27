import 'dart:io';

import 'package:ailabtools/ailabtools.dart';

Future<void> main() async {
  final apiKey = Platform.environment['AILAB_API_KEY'];
  if (apiKey == null) {
    throw StateError('Set AILAB_API_KEY before running this example.');
  }

  final client = AILabClient(apiKey: apiKey);
  try {
    final bytes = await File('image.jpg').readAsBytes();
    final result = await client.background.remove(
      CutoutUniversalBackgroundRemovalParams(
        image: AILabFile.fromBytes(bytes, filename: 'image.jpg'),
      ),
    );
    print(result.data?.imageUrl);
  } finally {
    client.close();
  }
}
