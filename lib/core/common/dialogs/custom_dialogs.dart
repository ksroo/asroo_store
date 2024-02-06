import 'package:asroo_store/core/common/widgets/custom_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog {
  const CustomDialog._();

  static void twoButtonDialog({
    required BuildContext context,
    required String textBody,
    required String textButton1,
    required String textButton2,
    required void Function() onPressed,
    required bool isLoading,
  }) {
    showDialog<dynamic>(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey,
        title: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 20.h,
          ),
          child: Center(
            child: TextApp(
              text: textBody,
              theme: context.textStyle.copyWith(
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
                fontSize: 18.sp,
                color: Colors.black,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        actions: [
          CustomButton(
            backgroundColor: Colors.red,
            onPressed: onPressed,
            text: textButton1,
            width: 320.w,
            height: 45.h,
            isLoading: isLoading,
            lastRadius: 10,
            threeRadius: 10,
          ),
          SizedBox(height: 10.h, width: 1.w),
          CustomButton(
            onPressed: () {
              context.pop();
            },
            text: textButton2,
            width: 320.w,
            height: 45.h,
            lastRadius: 10,
            threeRadius: 10,
          ),
        ],
      ),
    );
  }
}
