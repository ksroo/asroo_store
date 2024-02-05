import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/animations/animate_do.dart';
import 'package:asroo_store/core/common/toast/show_toast.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvararImage extends StatelessWidget {
  const UserAvararImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: BlocConsumer<UploadImageCubit, UploadImageState>(
        listener: (context, state) {
          state.whenOrNull(success: () {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageUploaded),
              seconds: 2,
            );
          }, removeImage: (removeImage) {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageRemoved),
              seconds: 2,
            );
          }, error: (errorMessage) {
            ShowToast.showToastErrorTop(
              message: errorMessage,
            );
          });
        },
        builder: (context, state) {
          final isImageUploaded =
              context.read<UploadImageCubit>().getImageUrl.isNotEmpty;
          return state.maybeWhen(
            loading: () {
              return CircleAvatar(
                radius: 38,
                backgroundImage: const AssetImage(AppImages.userAvatar),
                child: Center(
                  child: CircularProgressIndicator(
                    color: context.color.mainColor,
                  ),
                ),
              );
            },
            orElse: () {
              return CircleAvatar(
                radius: 38,
                backgroundImage: isImageUploaded
                    ? NetworkImage(context.read<UploadImageCubit>().getImageUrl)
                        as ImageProvider
                    : const AssetImage(AppImages.userAvatar),
                backgroundColor: Colors.grey.withOpacity(.1),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    // remove image
                    if (isImageUploaded)
                      Positioned(
                        top: -15,
                        right: -15,
                        child: IconButton(
                          onPressed: () {
                            context.read<UploadImageCubit>().removeImage();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isImageUploaded
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.4),
                      ),
                    ),

                    //take image
                    if (isImageUploaded)
                      const SizedBox.shrink()
                    else
                      IconButton(
                        onPressed: () {
                          context.read<UploadImageCubit>().uploadImage();
                        },
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
