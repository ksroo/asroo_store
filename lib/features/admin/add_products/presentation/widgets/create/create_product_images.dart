import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateProductImages extends StatelessWidget {
  const CreateProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: 90.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.add_a_photo_outlined,
              size: 50,
              color: Colors.white,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 6.h),
    );
  }
}
