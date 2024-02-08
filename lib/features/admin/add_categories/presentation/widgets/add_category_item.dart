import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/bottom_shet/custom_bottom_sheet.dart';
import 'package:asroo_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/widgets/delete/delete_catgeory_widget.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/widgets/update/update_category_bottom_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCatgeoryItem extends StatelessWidget {
  const AddCatgeoryItem({
    required this.name,
    required this.image,
    required this.categoryId,
    super.key,
  });

  final String name;
  final String image;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                TextApp(
                  text: name,
                  theme: context.textStyle.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    //Delete
                    DeleteCategoryWidget(
                      categoryId: categoryId,
                    ),
                    SizedBox(width: 20.h),
                    //Update
                    InkWell(
                      onTap: () {
                        _updateCategoryBottomSheet(context);
                      },
                      child: const Icon(
                        Icons.edit,
                        color: Colors.green,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            Flexible(
              child: CachedNetworkImage(
                height: 90.h,
                width: 120.w,
                imageUrl: image,
                // fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateCategoryBottomSheet(BuildContext context) {
    CustomBottomSheet.showModalBottomSheetContainer(
      context: context,
      widget: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<UpdateCategoryBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<UploadImageCubit>(),
          ),
        ],
        child: UpdateCategoryBottomWidget(
          categoryId: categoryId,
          ctageoryName: name,
          imageUrl: image,
        ),
      ),
      whenComplete: () {
        context.read<GetAllAdminCategoriesBloc>().add(
              const GetAllAdminCategoriesEvent.fetchAdminCategories(
                isNotLoading: false,
              ),
            );
      },
    );
  }
}
