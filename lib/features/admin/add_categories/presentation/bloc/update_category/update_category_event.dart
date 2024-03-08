part of 'update_category_bloc.dart';

@freezed
class UpdateCategoryEvent with _$UpdateCategoryEvent {
  const factory UpdateCategoryEvent.started() = _Started;
  const factory UpdateCategoryEvent.updateCategory({
    required UpdateCategoryRequestBody body,
  }) = NewUpdateCategoryEvent;
}
