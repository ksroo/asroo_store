import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children: [
            //Products
            const DashBoardContiner(
              image: AppImages.productsDrawer,
              number: '0',
              title: 'Products',
              isLoading: false,
            ),
            SizedBox(height: 20.h),
            //Categories
            const DashBoardContiner(
              image: AppImages.categoriesDrawer,
              number: '0',
              title: 'Categories',
              isLoading: false,
            ),
            SizedBox(height: 20.h),
            //Users
            const DashBoardContiner(
              image: AppImages.usersDrawer,
              number: '0',
              title: 'Users',
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
