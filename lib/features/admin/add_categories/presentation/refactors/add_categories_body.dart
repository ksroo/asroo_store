import 'package:asroo_store/core/common/loading/empty_screen.dart';
import 'package:asroo_store/core/common/loading/loading_shimmer.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/widgets/add_category_item.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/widgets/create/create_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoriesBody extends StatelessWidget {
  const AddCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          //Create Category Button
          const CreateCategory(),

          // Category item list
          Expanded(
            child: RefreshIndicator(
              color: ColorsDark.blueLight,
              onRefresh: () async {
                context.read<GetAllAdminCategoriesBloc>().add(
                      const GetAllAdminCategoriesEvent.fetchAdminCategories(
                        isNotLoading: true,
                      ),
                    );
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                  SliverToBoxAdapter(
                    child: BlocBuilder<GetAllAdminCategoriesBloc,
                        GetAllAdminCategoriesState>(
                      builder: (context, state) {
                        return state.when(
                          loading: () {
                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return LoadingShimmer(
                                  height: 130.h,
                                  borderRadius: 15,
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 15.h),
                              itemCount: 4,
                            );
                          },
                          success: (list) {
                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return AddCatgeoryItem(
                                  name: list.categoriesGetAllList[index].name ??
                                      '',
                                  categoryId:
                                      list.categoriesGetAllList[index].id ?? '',
                                  image:
                                      list.categoriesGetAllList[index].image ??
                                          '',
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 15.h),
                              itemCount: list.categoriesGetAllList.length,
                            );
                          },
                          empty: EmptyScreen.new,
                          error: Text.new,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
