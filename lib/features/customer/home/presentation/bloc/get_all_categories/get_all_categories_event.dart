part of 'get_all_categories_bloc.dart';

@freezed
class GetAllCategoriesEvent with _$GetAllCategoriesEvent {
  const factory GetAllCategoriesEvent.started() = _Started;
  const factory GetAllCategoriesEvent.getCategories() = FetchCategoriesEvent;
}
