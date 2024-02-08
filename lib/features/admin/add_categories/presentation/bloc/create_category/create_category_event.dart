part of 'create_category_bloc.dart';

@freezed
class CreateCategoryEvent with _$CreateCategoryEvent {
  const factory CreateCategoryEvent.started() = _Started;
  const factory CreateCategoryEvent.createCategory({
    required CreateCategoryRequestBody body,
  }) = NewCreateCategoryEvent;
}
