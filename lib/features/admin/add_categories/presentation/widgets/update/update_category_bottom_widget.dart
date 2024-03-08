import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/toast/show_toast.dart';
import 'package:asroo_store/core/common/widgets/custom_button.dart';
import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/widgets/update/update_upload_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryBottomWidget extends StatefulWidget {
  const UpdateCategoryBottomWidget({
    required this.imageUrl,
    required this.categoryId,
    required this.ctageoryName,
    super.key,
  });

  final String imageUrl;
  final String categoryId;
  final String ctageoryName;

  @override
  State<UpdateCategoryBottomWidget> createState() =>
      _UpdateCategoryBottomWidgetState();
}

class _UpdateCategoryBottomWidgetState
    extends State<UpdateCategoryBottomWidget> {
  TextEditingController nameCategoryController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    nameCategoryController.text = widget.ctageoryName;
  }

  @override
  void dispose() {
    nameCategoryController.dispose();
    super.dispose();
  }

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
          UpdateUploadImage(imageUrl: widget.imageUrl),
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
          //Update Category Button
          BlocConsumer<UpdateCategoryBloc, UpdateCategoryState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  context.pop();
                  ShowToast.showToastSuccessTop(
                    message: '${nameCategoryController.text} Update Success',
                    seconds: 2,
                  );
                },
                error: (error) {
                  ShowToast.showToastErrorTop(
                    message: error,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return Container(
                    height: 50.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: ColorsDark.blueDark,
                      ),
                    ),
                  );
                },
                orElse: () {
                  return CustomButton(
                    onPressed: () {
                      _validUpdateCategory(context);
                    },
                    backgroundColor: ColorsDark.white,
                    lastRadius: 20,
                    threeRadius: 20,
                    textColor: ColorsDark.blueDark,
                    text: 'Update a new category',
                    width: MediaQuery.of(context).size.width,
                    height: 50.h,
                  );
                },
              );
            },
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  void _validUpdateCategory(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<UpdateCategoryBloc>().add(
            UpdateCategoryEvent.updateCategory(
              body: UpdateCategoryRequestBody(
                id: widget.categoryId,
                image: context.read<UploadImageCubit>().getImageUrl.isEmpty
                    ? widget.imageUrl
                    : context.read<UploadImageCubit>().getImageUrl,
                name: nameCategoryController.text.trim(),
              ),
            ),
          );
    }
  }
}
