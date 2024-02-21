import 'package:asroo_store/core/common/widgets/custom_container_linear_customer.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.image,
    required this.title,
    required this.id,
    super.key,
  });

  final String image;
  final String title;
  final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushName(
          AppRoutes.category,
          arguments: (categoryName: title, categoryId: id),
        );
      },
      child: Column(
        children: [
          //image
          CustomContainerLinearCustomer(
            height: 71.h,
            width: 71.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.contain,
                height: 71.h,
                width: 71.w,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 35.h,
            width: 75.w,
            child: TextApp(
              text: title,
              textAlign: TextAlign.center,
              theme: context.textStyle.copyWith(
                fontWeight: FontWeightHelper.bold,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
