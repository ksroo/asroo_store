import 'package:asroo_store/features/admin/add_products/presentation/widgets/create/create_product.dart';
import 'package:asroo_store/features/admin/add_products/presentation/widgets/product_admin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductsBody extends StatelessWidget {
  const AddProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          //Add products button
          const CreateProduct(),
          //Get ALl Product
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {},
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                  SliverToBoxAdapter(
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, //Number of cloums
                        crossAxisSpacing: 8, // Spacing between colums
                        mainAxisSpacing: 15, //Spacing between rows
                        childAspectRatio: 165 / 250,
                      ),
                      itemBuilder: (context, index) {
                        return ProductAdminItem(
                          imageUrl:
                              'https://images.unsplash.com/photo-1621272036047-bb0f76bbc1ad?q=80&w=1424&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          categoryName: 'Apple',
                          price: '1200',
                          title: 'MacBook Air',
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
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
