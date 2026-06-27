import 'dart:io';

import 'package:ailabtools/ailabtools.dart';

Future<void> main() async {
  final client = AILabClient(apiKey: Platform.environment['AILAB_API_KEY']!);
  try {
    final bytes = await File('image.jpg').readAsBytes();
    final task = await client.portrait.changeHairstyle(
      PortraitHairstyleEditingProParams(
        taskType: 'async',
        image: AILabFile.fromBytes(bytes, filename: 'image.jpg'),
        hairStyle: 'BuzzCut',
      ),
    );
    final taskId = task.taskId ?? task.data?.taskId;
    final result = await client.waitForTask(taskId!);
    print(result.data);
  } finally {
    client.close();
  }
}
