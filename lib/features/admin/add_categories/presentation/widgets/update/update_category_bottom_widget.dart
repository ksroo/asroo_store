import 'package:asroo_store/core/common/widgets/custom_button.dart';
import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/widgets/update/update_upload_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryBottomWidget extends StatefulWidget {
  const UpdateCategoryBottomWidget({super.key});

  @override
  State<UpdateCategoryBottomWidget> createState() =>
      _UpdateCategoryBottomWidgetState();
}

class _UpdateCategoryBottomWidgetState
    extends State<UpdateCategoryBottomWidget> {
  TextEditingController nameCategoryController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: TextApp(
              text: 'Update Category',
              theme: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          TextApp(
            text: 'Update a photo',
            theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          SizedBox(height: 10.h),
          // update upload inage
          UpdateUploadImage(
              imageUrl:
                  'https://images.unsplash.com/photo-1707150814808-c7fdba03c49f?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          SizedBox(height: 20.h),
          TextApp(
            text: 'Upadate the Category Name',
            theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          SizedBox(height: 10.h),
          // Name for category TextForm
          CustomTextField(
            controller: nameCategoryController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Category Name',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return 'Please Selected Your Category Name';
              }
              return null;
            },
          ),
          SizedBox(height: 20.h),
          CustomButton(
            onPressed: () {},
            backgroundColor: ColorsDark.white,
            lastRadius: 20,
            threeRadius: 20,
            textColor: ColorsDark.blueDark,
            text: 'Update a new category',
            width: MediaQuery.of(context).size.width,
            height: 50.h,
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
