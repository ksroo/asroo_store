import 'package:asroo_store/features/customer/home/presentation/widgets/categories/catgeory_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
      child: SizedBox(
        height: 125.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return CategoryItem(
              image:
                  'https://images.unsplash.com/photo-1682687220777-2c60708d6889?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              title: 'book',
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 15.w),
        ),
      ),
    );
  }
}
