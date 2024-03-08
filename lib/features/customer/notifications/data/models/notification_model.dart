import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  NotificationModel({
    required this.notificationId,
    required this.title,
    required this.body,
    required this.createdAt,
    required this.isSeen,
    required this.productId,
  });
  
  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  @JsonKey(name: 'notification_id')
  final String notificationId;

  final String title;

  final String body;

  @JsonKey(name: 'created_at')
  final String createdAt;

  final bool isSeen;

  @JsonKey(name: 'product_id')
  final int productId;

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
