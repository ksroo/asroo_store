import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/toast/show_toast.dart';
import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(success: (_) {
          ShowToast.showToastSuccessTop(
            message: context.translate(LangKeys.loggedSuccessfully),
          );
          context.pushNamedAndRemoveUntil(AppRoutes.mainCustomer);
        }, error: (message) {
          ShowToast.showToastErrorTop(
            message: context.translate(message),
          );
        });
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return CustomLinearButton(
              onPressed: () {},
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          },
          orElse: () {
            return CustomFadeInRight(
              duration: 600,
              child: CustomLinearButton(
                onPressed: () {
                  _validateThenDoSignUp(context);
                },
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                child: TextApp(
                  text: context.translate(LangKeys.signUp),
                  theme: context.textStyle.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _validateThenDoSignUp(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final imageCubit = context.read<UploadImageCubit>();

    if (!authBloc.formKey.currentState!.validate() ||
        imageCubit.getImageUrl.isEmpty) {
      if (imageCubit.getImageUrl.isEmpty) {
        ShowToast.showToastErrorTop(
          message: context.translate(LangKeys.validPickImage),
        );
      }
    } else {
      context.read<AuthBloc>().add(
            AuthEvent.signUp(
              imagUrl: imageCubit.getImageUrl,
            ),
          );
    }
  }
}
