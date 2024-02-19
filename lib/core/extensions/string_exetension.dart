extension StringFormate on String {
  String imageProductFormate() {
    return replaceAll(RegExp(r'^\["?|"\]?|"$'), '');
  }

  String toCapitalized() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
