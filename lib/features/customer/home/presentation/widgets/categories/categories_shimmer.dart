import 'package:asroo_store/core/common/loading/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesShimmer extends StatelessWidget {
  const CategoriesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: SizedBox(
        height: 125.h,
        child: ListView.separated(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                LoadingShimmer(
                  height: 71.h,
                  width: 71.w,
                  borderRadius: 15,
                ),
                SizedBox(height: 10.h),
                LoadingShimmer(
                  height: 20.h,
                  width: 75.w,
                  borderRadius: 10,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 15.w),
        ),
      ),
    );
  }
}
