import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  const ShowToast._();

  static void showToastErrorTop({
    required String message,
    int? seconds,
  }) =>
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: seconds ?? 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.sp,
      );

  static void showToastSuccessTop({
    required String message,
    int? seconds,
  }) =>
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: seconds ?? 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.sp,
      );
}
