import 'package:asroo_store/core/common/widgets/custom_product_item.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/features/customer/products_view_all/persentation/bloc/products_view_all/products_view_all_bloc.dart';
import 'package:asroo_store/features/customer/products_view_all/persentation/bloc/products_view_all/products_view_all_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsViewAllBody extends StatefulWidget {
  const ProductsViewAllBody({super.key});

  @override
  State<ProductsViewAllBody> createState() => _ProductsViewAllBodyState();
}

class _ProductsViewAllBodyState extends State<ProductsViewAllBody> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        context.read<ProductsViewAllBloc>().handlerPagination(
              scrollController: _scrollController,
              loadMorePosition: MediaQuery.of(context).size.height * 0.15,
            );
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: BlocBuilder<ProductsViewAllBloc, ProductsViewAllState>(
        builder: (context, state) {
          if (state is ProductsViewAllLoadingState &&
              state.productsList.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                color: context.color.textColor,
              ),
            );
          } else if (state is ProductsViewAllErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    controller: _scrollController,
                    itemCount: state.productsList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //Number of cloums
                      crossAxisSpacing: 8, // Spacing between colums
                      mainAxisSpacing: 15, //Spacing between rows
                      childAspectRatio: 165 / 250,
                    ),
                    itemBuilder: (context, index) {
                      return CustomProductItem(
                        price: state.productsList[index].price ?? 0,
                        categoryName:
                            state.productsList[index].category!.name ?? '',
                        title: state.productsList[index].title ?? '',
                        imageUrl: state.productsList[index].images!.first,
                        productId:
                            int.parse(state.productsList[index].id ?? '0'),
                      );
                    },
                  ),
                ),
                if (state is ProductsViewAllLoadingState &&
                    state.productsList.isNotEmpty)
                  CircularProgressIndicator(
                    color: context.color.textColor,
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}
