import 'package:asroo_store/core/service/dynamic_link/dynamic_link.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'share_state.dart';
part 'share_cubit.freezed.dart';

class ShareCubit extends Cubit<ShareState> {
  ShareCubit() : super(const ShareState.initial());

  Future<void> sendDynamicLinkProduct({
    required String imageUrl,
    required String title,
    required int productId,
  }) async {
    emit(ShareState.loading(productId: productId));

    await DynamicLink()
        .generateProductLink(
          imageUrl: imageUrl,
          productId: productId,
          title: title,
        )
        .then(Share.share);

    emit(const ShareState.success());
  }
}
