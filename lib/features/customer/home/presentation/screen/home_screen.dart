import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_all_categories/get_all_categories_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_all_products/get_all_products_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/bloc/get_banners/get_banners_bloc.dart';
import 'package:asroo_store/features/customer/home/presentation/refactors/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollCOntroller = ScrollController();

  @override
  void dispose() {
    scrollCOntroller.dispose();
    super.dispose();
  }

  void scrollUp() {
    scrollCOntroller.animateTo(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetBannersBloc>()
            ..add(
              const GetBannersEvent.getBanners(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<GetAllCategoriesBloc>()
            ..add(
              const GetAllCategoriesEvent.getCategories(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<GetAllProductsBloc>()
            ..add(
              const GetAllProductsEvent.getProducts(),
            ),
        ),
      ],
      child: Stack(
        children: [
          //body
          HomeBody(
            scrollCOntroller: scrollCOntroller,
          ),

          CustomFadeInLeft(
            duration: 200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: FloatingActionButton(
                  onPressed: scrollUp,
                  backgroundColor: context.color.bluePinkLight,
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
