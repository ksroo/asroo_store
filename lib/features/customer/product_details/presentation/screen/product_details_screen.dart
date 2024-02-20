import 'package:asroo_store/core/common/widgets/customer_app_bar.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/features/customer/product_details/presentation/refactors/add_to_cart_button.dart';
import 'package:asroo_store/features/customer/product_details/presentation/refactors/product_deatils_custom_painter.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({required this.productId, super.key});

  final int productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Ttile'),
      bottomNavigationBar: AddToCartButton(price: 100),
      body: Stack(
        children: [
          CustomPaint(
            size: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
            painter: DetailsCustomPainter(
              gradient: LinearGradient(
                colors: [
                  context.color.bluePinkLight!,
                  context.color.bluePinkDark!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
