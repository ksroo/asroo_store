import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/toast/show_toast.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateUploadImage extends StatelessWidget {
  const UpdateUploadImage({required this.imageUrl, super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageUploaded),
            );
          },
          error: (errorMessage) {
            ShowToast.showToastErrorTop(
              message: errorMessage,
            );
          },
        );
      },
      builder: (context, state) {
        final cubit = context.read<UploadImageCubit>();
        return state.maybeWhen(
          loading: () {
            return Container(
              height: 120.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          },
          orElse: () {
            return InkWell(
              onTap: cubit.uploadImage,
              child: Stack(
                children: [
                  // old image url and new
                  Container(
                    height: 120.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          cubit.getImageUrl.isEmpty
                              ? imageUrl
                              : cubit.getImageUrl,
                        ),
                      ),
                    ),
                  ),
                  //Image selected

                  if (cubit.getImageUrl.isEmpty)
                    Container(
                      height: 120.h,
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
                    )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
