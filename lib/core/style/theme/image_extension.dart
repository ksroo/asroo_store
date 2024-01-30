import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({
    required this.testImage,
  });

  final String? testImage;

  @override
  ThemeExtension<MyImages> copyWith({
    String? testImage,
  }) {
    return MyImages(
      testImage: testImage,
    );
  }

  @override
  ThemeExtension<MyImages> lerp(
    covariant ThemeExtension<MyImages>? other,
    double t,
  ) {
    if (other is! MyImages) {
      return this;
    }

    return MyImages(
      testImage: testImage,
    );
  }

  static const MyImages dark = MyImages(
    testImage: AppImages.testDark,
  );

  static const MyImages light = MyImages(
    testImage: AppImages.testLight,
  );
}
