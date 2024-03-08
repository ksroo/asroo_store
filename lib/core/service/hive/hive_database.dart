import 'package:asroo_store/features/admin/add_notifications/data/models/add_notification_model.dart';
import 'package:asroo_store/features/customer/favorites/data/models/favorites_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabase {
  factory HiveDatabase() => _instance;

  HiveDatabase._();

  static final HiveDatabase _instance = HiveDatabase._();

  Box<AddNotificationModel>? notificationBox;
  Box<FavoritesModel>? favoritesBox;

  Future<void> setup() async {
    await Hive.initFlutter();

    Hive
      ..registerAdapter(AddNotificationModelAdapter())
      ..registerAdapter(FavoritesModelAdapter());

    notificationBox =
        await Hive.openBox<AddNotificationModel>('notification_box');

    favoritesBox = await Hive.openBox<FavoritesModel>('favorites_box');
  }

  Future<void> clearAllBox() async {
    await notificationBox!.clear();
    await favoritesBox!.clear();
  }
}
