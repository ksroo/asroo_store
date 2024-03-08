import 'dart:math';

class AppValues {
  static String get randomStringId {
    const chars =
        'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    final random = Random.secure();

    final codes = List<int>.generate(
        20, (index) => chars.codeUnitAt(random.nextInt(chars.length)));

    return String.fromCharCodes(codes);
  }
}
