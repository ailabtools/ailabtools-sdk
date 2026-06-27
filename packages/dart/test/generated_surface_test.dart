import 'dart:io';

import 'package:test/test.dart';

void main() {
  test('generated API surface contains all 93 SDK endpoints', () {
    final generated = Directory('lib/src/generated')
        .listSync()
        .whereType<File>()
        .where((file) => file.path.endsWith('_api.dart'))
        .map((file) => file.readAsStringSync())
        .join();

    expect(RegExp(r'path: ').allMatches(generated), hasLength(93));
  });
}
