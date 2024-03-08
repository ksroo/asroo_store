import 'package:asroo_store/core/common/loading/empty_screen.dart';
import 'package:asroo_store/core/common/loading/loading_shimmer.dart';
import 'package:asroo_store/core/common/widgets/custom_product_item.dart';
import 'package:asroo_store/features/customer/category/persentation/bloc/get_category/get_category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: BlocBuilder<GetCategoryBloc, GetCategoryState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 8,
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
              );
            },
            success: (productList) {
              return GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //Number of cloums
                  crossAxisSpacing: 8, // Spacing between colums
                  mainAxisSpacing: 15, //Spacing between rows
                  childAspectRatio: 165 / 250,
                ),
                itemBuilder: (context, index) {
                  return CustomProductItem(
                    price: productList[index].price ?? 0,
                    categoryName: productList[index].category!.name ?? '',
                    title: productList[index].title ?? '',
                    imageUrl: productList[index].images!.first,
                    productId: int.parse(productList[index].id ?? '0'),
                  );
                },
              );
            },
            empty: () {
              return const EmptyScreen();
            },
            error: Text.new,
          );
        },
      ),
    );
  }
}
