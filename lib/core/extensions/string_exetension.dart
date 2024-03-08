import 'package:intl/intl.dart';

extension StringFormate on String {
  String imageProductFormate() {
    return replaceAll(RegExp(r'^\["?|"\]?|"$'), '');
  }

  String toCapitalized() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String convertLongString() {
    final shortString = split(' ').sublist(0, split(' ').length - 2).join(' ');
    return shortString;
  }

  String convertDataFormate() {
    final now = DateTime.now();

    return DateFormat('d MMM, y - h:mm a').format(now);
  }
}
