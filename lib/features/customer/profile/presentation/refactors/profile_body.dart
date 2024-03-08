import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/customer/profile/presentation/bloc/bloc/profile_bloc.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/build_developer.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/build_version.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/dark_mode_change.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/language_change.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/logout_widget.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/notifications_change.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/user_profile_info.dart';
import 'package:asroo_store/features/customer/profile/presentation/widgets/user_profile_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //User Profile Info
            Center(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.when(
                    loading: UserProfileShimmer.new,
                    success: (userInfoData) => UserProfileInfo(
                      userInfo: userInfoData,
                    ),
                    error: Text.new,
                  );
                },
              ),
            ),

            //title
            SizedBox(height: 20.h),
            CustomFadeInRight(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.applicationFeatures),
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            // language
            const CustomFadeInRight(
              duration: 400,
              child: LanguageChange(),
            ),
            SizedBox(height: 20.h),
            // dark mode
            const CustomFadeInRight(
              duration: 400,
              child: DarkModeChange(),
            ),
            SizedBox(height: 20.h),
            // Build Developer
            const CustomFadeInRight(
              duration: 400,
              child: BuildDeveloper(),
            ),
            SizedBox(height: 20.h),
            // Notifications change
            const CustomFadeInRight(
              duration: 400,
              child: NotificationsChange(),
            ),
            SizedBox(height: 20.h),
            // Build Version
            const CustomFadeInRight(
              duration: 400,
              child: BuildVersion(),
            ),
            SizedBox(height: 20.h),
            // Logout
            const CustomFadeInRight(
              duration: 400,
              child: LogOutWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
