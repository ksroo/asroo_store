extension StringFormate on String {
  String imageProductFormate() {


    return replaceAll(RegExp(r'^\["?|"\]?|"$'), '');

    
  }
}
