import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/toast/show_toast.dart';
import 'package:asroo_store/core/common/widgets/custom_button.dart';
import 'package:asroo_store/core/common/widgets/custom_drop_down.dart';
import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:asroo_store/features/admin/add_products/data/models/create_product_request_body.dart';
import 'package:asroo_store/features/admin/add_products/presentation/bloc/create_product/create_prodcut_bloc.dart';
import 'package:asroo_store/features/admin/add_products/presentation/widgets/create/create_product_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateProductBottomSheet extends StatefulWidget {
  const CreateProductBottomSheet({super.key});

  @override
  State<CreateProductBottomSheet> createState() =>
      _CreateProductBottomSheetState();
}

class _CreateProductBottomSheetState extends State<CreateProductBottomSheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  String? categoryName;
  double? catgeoryId;

  @override
  void dispose() {
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Form(
        key: fromKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title Update Product
              Center(
                child: TextApp(
                  text: 'Create Product',
                  theme: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextApp(
                text: 'Create a photos',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              //Create Image Widget
              const CreateProductImages(),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              // Title
              CustomTextField(
                controller: _titleController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Title',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Price',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              // Price
              CustomTextField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                hintText: 'Price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Selected Your Product Price';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Description',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              //Description
              CustomTextField(
                controller: _descriptionController,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                hintText: 'Description',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Category',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              // Category Drop Doown
              BlocBuilder<GetAllAdminCategoriesBloc,
                  GetAllAdminCategoriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (catgeory) {
                      return CustomCreateDropDown(
                        hintText: 'Select a Category',
                        items: catgeory.categoryDropdownList,
                        onChanged: (value) {
                          setState(() {
                            categoryName = value;

                            final catgeoryIdString = catgeory
                                .categoriesGetAllList
                                .firstWhere((e) => e.name == value)
                                .id!;
                            catgeoryId = double.parse(catgeoryIdString);
                          });
                        },
                        value: categoryName,
                      );
                    },
                    orElse: () {
                      return CustomCreateDropDown(
                        hintText: 'Select a Category',
                        items: const [''],
                        onChanged: (value) {},
                        value: '',
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 15.h),
              SizedBox(height: 15.h),
              //Create Product Button
              BlocConsumer<CreateProdcutBloc, CreateProdcutState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      context.pop();

                      ShowToast.showToastSuccessTop(
                        message: '${_titleController.text} Created Success',
                        seconds: 2,
                      );
                    },
                    error: (errorMesage) {
                      ShowToast.showToastErrorTop(
                        message: errorMesage,
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
                          color: ColorsDark.blueDark,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: ColorsDark.white,
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return CustomButton(
                        onPressed: () {
                          _validCreateProductButton(context);
                        },
                        backgroundColor: ColorsDark.white,
                        lastRadius: 20,
                        threeRadius: 20,
                        textColor: ColorsDark.blueDark,
                        text: 'Create Product',
                        width: MediaQuery.of(context).size.width,
                        height: 50.h,
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 20.h)
            ],
          ),
        ),
      ),
    );
  }

  void _validCreateProductButton(BuildContext context) {
    final indexEmptyImage = context
        .read<UploadImageCubit>()
        .imageList
        .indexWhere((e) => e.isNotEmpty);

    if (fromKey.currentState!.validate() ||
        indexEmptyImage == -1 ||
        categoryName == null) {
      if (indexEmptyImage == -1) {
        ShowToast.showToastErrorTop(
          message: context.translate(LangKeys.validPickImage),
        );
      } else if (categoryName == null) {
        ShowToast.showToastErrorTop(
          message: 'Please select your category',
        );
      } else {
        // create new product

        context.read<CreateProdcutBloc>().add(
              CreateProdcutEvent.creatProduct(
                body: CreateProductRequestBody(
                  title: _titleController.text.trim(),
                  description: _descriptionController.text.trim(),
                  price: double.parse(_priceController.text.trim()),
                  imageList: context.read<UploadImageCubit>().imageList,
                  categoryId: catgeoryId ?? 0,
                ),
              ),
            );
      }
    }
  }
}
