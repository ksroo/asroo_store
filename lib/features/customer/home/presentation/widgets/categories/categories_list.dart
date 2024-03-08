import 'package:asroo_store/features/admin/add_categories/data/models/get_all_categories_reponse.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/categories/catgeory_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    required this.categoreisList,
    super.key,
  });

  final List<CategoriesGetAllModel> categoreisList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
      child: SizedBox(
        height: 125.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categoreisList.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              image: categoreisList[index].image ?? '',
              title: categoreisList[index].name ?? '',
              id: int.parse(categoreisList[index].id ?? '0'),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 15.w),
        ),
      ),
    );
  }
}
