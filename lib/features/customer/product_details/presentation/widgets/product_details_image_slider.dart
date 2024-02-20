import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsImageSlider extends StatefulWidget {
  const ProductDetailsImageSlider({super.key});

  @override
  State<ProductDetailsImageSlider> createState() =>
      _ProductDetailsImageSliderState();
}

class _ProductDetailsImageSliderState extends State<ProductDetailsImageSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 500,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 250.h,
              reverse: true,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                activeIndex = index;
                setState(() {});
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return CachedNetworkImage(
                imageUrl:
                    'https://images.unsplash.com/photo-1707647038136-a2dbf6945716?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                placeholder: (context, url) => const SizedBox.shrink(),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 30,
                ),
              );
            },
          ),
          SizedBox(height: 10.h),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: widget.bannersList.asMap().entries.map((entry) {
          //     return Container(
          //       width: 15.w,
          //       height: 4.h,
          //       margin: const EdgeInsets.symmetric(horizontal: 3),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         color: activeIndex == entry.key
          //             ? context.color.bluePinkLight
          //             : Colors.grey,
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
