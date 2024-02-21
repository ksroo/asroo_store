part of 'get_category_bloc.dart';

@freezed
class GetCategoryEvent with _$GetCategoryEvent {
  const factory GetCategoryEvent.started() = _Started;
  const factory GetCategoryEvent.getCategory({
    required int categoryId,
  }) = FetchCategoreyEvent;
}
