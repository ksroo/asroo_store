import 'package:asroo_store/core/common/loading/loading_shimmer.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_banners/get_banners_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/banners/banner_sliders.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/categories/categories_list.dart';
import 'package:asroo_store/features/customer/home/presentation/widgets/categories/categories_shimmer.dart';
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
            child: CategoriesShimmer(),
          ),

          //Products
        ],
      ),
    );
  }
}
