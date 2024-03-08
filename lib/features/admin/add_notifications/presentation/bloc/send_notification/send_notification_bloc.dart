import 'dart:async';
import 'package:asroo_store/features/admin/add_notifications/data/repos/add_notification_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_notification_event.dart';
part 'send_notification_state.dart';
part 'send_notification_bloc.freezed.dart';

class SendNotificationBloc
    extends Bloc<SendNotificationEvent, SendNotificationState> {
  SendNotificationBloc(this._repo) : super(const _Initial()) {
    on<NewSendNotificationsEvent>(_sendNotification);
  }

  final AddNotificationRepo _repo;
  FutureOr<void> _sendNotification(
    NewSendNotificationsEvent event,
    Emitter<SendNotificationState> emit,
  ) async {
    emit(SendNotificationState.loading(indexId: event.indexId));

    final result = await _repo.sendNotifications(
      title: event.title,
      body: event.body,
      productId: event.productId,
    );

    await result.when(
      success: (_) async {
        await _repo.addNotificationsToAllUsersFirebase(
          body: event.body,
          productId: event.productId,
          title: event.title,
        );
        emit(const SendNotificationState.success());
      },
      failure: (error) {
        emit(SendNotificationState.error(error: error));
      },
    );
  }
}
