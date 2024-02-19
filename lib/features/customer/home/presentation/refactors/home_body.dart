import 'package:asroo_store/features/customer/home/presentation/widgets/banners/banner_sliders.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({required this.scrollCOntroller, super.key});

  final ScrollController scrollCOntroller;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        controller: scrollCOntroller,
        slivers: [
          //Banners

          SliverToBoxAdapter(
            child: BannerSliders(),
          ),

          //Caegories

          //Products
        ],
      ),
    );
  }
}
