import 'package:asroo_store/core/app/env.variables.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuildDeveloper extends StatelessWidget {
  const BuildDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.buildDeveloper,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.buildDeveloper),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),
        //language button
        InkWell(
          onTap: () {
            //Open Web View
            context.pushName(
              AppRoutes.webview,
              arguments: EnvVariable.instance.buildDeveloper,
            );
          },
          child: Row(
            children: [
              TextApp(
                text: 'Asroo Stroe',
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.regular,
                ),
              ),
              SizedBox(width: 5.w),
              Icon(
                Icons.arrow_forward_ios,
                color: context.color.textColor,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
