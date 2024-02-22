import 'package:asroo_store/core/common/loading/empty_screen.dart';
import 'package:asroo_store/core/common/loading/loading_shimmer.dart';
import 'package:asroo_store/core/common/widgets/custom_button.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_all_categories/get_all_categories_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_all_products/get_all_products_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_banners/get_banners_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/banners/banner_sliders.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/categories/categories_list.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/categories/categories_shimmer.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/products/products_list.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/products/products_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({required this.scrollCOntroller, super.key});

  final ScrollController scrollCOntroller;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<GetBannersBloc>().add(const GetBannersEvent.getBanners());
        context
            .read<GetAllCategoriesBloc>()
            .add(const GetAllCategoriesEvent.getCategories());
        context
            .read<GetAllProductsBloc>()
            .add(const GetAllProductsEvent.getProducts());
      },
      child: CustomScrollView(
        controller: scrollCOntroller,
        slivers: [
          //Banners

          SliverToBoxAdapter(
            child: BlocBuilder<GetBannersBloc, GetBannersState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: LoadingShimmer(
                        height: 160.h,
                        width: MediaQuery.of(context).size.width,
                      ),
                    );
                  },
                  success: (bannerList) {
                    return BannerSliders(
                      bannersList: bannerList,
                    );
                  },
                  empty: () {
                    return const SizedBox.shrink();
                  },
                  error: (error) {
                    return Text(error);
                  },
                );
              },
            ),
          ),

          //Caegories
          SliverToBoxAdapter(
            child: BlocBuilder<GetAllCategoriesBloc, GetAllCategoriesState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const CategoriesShimmer();
                  },
                  success: (categoreisList) {
                    return CategoriesList(
                      categoreisList: categoreisList,
                    );
                  },
                  empty: () {
                    return const EmptyScreen();
                  },
                  error: Text.new,
                );
              },
            ),
          ),

          //Products

          SliverToBoxAdapter(
            child: BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const ProductShimmer();
                  },
                  success: (productList) {
                    return ProductsList(
                      productList: productList,
                    );
                  },
                  empty: () {
                    return const SizedBox.shrink();
                  },
                  error: Text.new,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),

          SliverToBoxAdapter(
            child: BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
              builder: (context, state) {
                if (context
                    .read<GetAllProductsBloc>()
                    .isProductListSmallerThan10) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: CustomButton(
                      height: 50.h,
                      lastRadius: 10,
                      threeRadius: 10,
                      width: MediaQuery.of(context).size.width,
                      backgroundColor: context.color.bluePinkLight,
                      textColor: Colors.black,
                      text: context.translate(LangKeys.viewAll),
                      onPressed: () {
                        context.pushName(AppRoutes.productsViewAll);
                      },
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(height: 60.h),
          ),
        ],
      ),
    );
  }
}
