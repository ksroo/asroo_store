import 'dart:async';
import 'package:asroo_store/core/service/hive/hive_database.dart';
import 'package:asroo_store/features/admin/add_notifications/data/models/add_notification_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_notification_event.dart';
part 'add_notification_state.dart';
part 'add_notification_bloc.freezed.dart';

class AddNotificationBloc
    extends Bloc<AddNotificationEvent, AddNotificationState> {
  AddNotificationBloc() : super(const _Initial()) {
    on<CreateNotificationEvent>(_createNotification);
    on<DeleteNotificationEvent>(_deleteNotification);
  }

  FutureOr<void> _createNotification(
    CreateNotificationEvent event,
    Emitter<AddNotificationState> emit,
  ) async {
    emit(const AddNotificationState.loading());

    try {
      await HiveDatabase().notificationBox!.add(event.notificationModel);

      emit(const AddNotificationState.success());
    } catch (e) {
      emit(AddNotificationState.error(error: e.toString()));
    }
  }

  FutureOr<void> _deleteNotification(
    DeleteNotificationEvent event,
    Emitter<AddNotificationState> emit,
  ) async {
    emit(const AddNotificationState.loading());

    await event.notificationModel.delete();

    emit(const AddNotificationState.success());
  }
}
