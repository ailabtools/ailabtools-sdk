import 'dart:typed_data';

/// A platform-independent file upload.
///
/// Use [AILabFile.fromBytes] with `XFile.readAsBytes()` in Flutter so the same
/// code works on mobile, desktop, and web.
final class AILabFile {
  const AILabFile.fromBytes(
    this.bytes, {
    required this.filename,
    this.contentType,
  });

  final Uint8List bytes;
  final String filename;
  final String? contentType;
}
