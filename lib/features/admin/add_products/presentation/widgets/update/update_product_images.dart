import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateProductImages extends StatelessWidget {
  const UpdateProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Stack(
            children: [
              // Image
              Container(
                height: 90.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1682685797088-283404e24b9d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ),
              ),
              //Icon Button
              Container(
                height: 90.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_a_photo_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 6.h),
    );
  }
}
