import 'dart:io';

import 'package:ailabtools/ailabtools.dart';

Future<void> main() async {
  final client = AILabClient(apiKey: Platform.environment['AILAB_API_KEY']!);
  try {
    final bytes = await File('image.jpg').readAsBytes();
    final result = await client.image.upscale(
      ImageLosslessEnlargementParams(
        image: AILabFile.fromBytes(bytes, filename: 'image.jpg'),
        upscaleFactor: 2,
      ),
    );
    print(result.data?.url);
  } finally {
    client.close();
  }
}
