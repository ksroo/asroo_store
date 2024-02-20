import 'package:asroo_store/features/customer/home/presentation/widgets/products/product_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //Number of cloums
          crossAxisSpacing: 8, // Spacing between colums
          mainAxisSpacing: 15, //Spacing between rows
          childAspectRatio: 165 / 250,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            price: 100,
            categoryName: "category",
            title: "title",
            imageUrl:
                'https://images.unsplash.com/photo-1708115106932-9e4fb96e4725?q=80&w=1750&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          );
        },
      ),
    );
  }
}
