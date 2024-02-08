import 'package:asroo_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductAdminItem extends StatelessWidget {
  const ProductAdminItem({
    required this.imageUrl,
    required this.title,
    required this.categoryName,
    required this.price,
    super.key,
  });

  final String imageUrl;
  final String title;
  final String categoryName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 250.h,
      width: 165.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Delete Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              ),
              //Update Button
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          // Show Image
          Flexible(
            child: Center(
              child: CachedNetworkImage(
                height: 200.h,
                width: 120.w,
                imageUrl: imageUrl,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          // title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: title,
              theme: context.textStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
              maxLines: 1,
            ),
          ),
          SizedBox(height: 5.h),
          // Category Name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: categoryName,
              theme: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
              maxLines: 1,
            ),
          ),
          SizedBox(height: 5.h),
          // Price
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: '\$ $price',
              theme: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
