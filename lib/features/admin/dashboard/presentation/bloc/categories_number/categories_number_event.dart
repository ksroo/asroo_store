part of 'categories_number_bloc.dart';

@freezed
class CategoriesNumberEvent with _$CategoriesNumberEvent {
  const factory CategoriesNumberEvent.started() = _Started;
  const factory CategoriesNumberEvent.getCategoriesNumber() =
      GetCategoriesNumberEvent;
}
