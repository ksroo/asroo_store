import 'package:asroo_store/core/common/loading/loading_shimmer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //Number of cloums
          crossAxisSpacing: 8, // Spacing between colums
          mainAxisSpacing: 15, //Spacing between rows
          childAspectRatio: 165 / 250,
        ),
        itemBuilder: (context, index) {
          return LoadingShimmer(
            height: 250.h,
            width: 165.w,
          );
        },
      ),
    );
  }
}
