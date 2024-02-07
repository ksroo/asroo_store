part of 'get_all_admin_categories_bloc.dart';

@freezed
class GetAllAdminCategoriesEvent with _$GetAllAdminCategoriesEvent {
  const factory GetAllAdminCategoriesEvent.started() = _Started;
  const factory GetAllAdminCategoriesEvent.fetchAdminCategories({
    required bool isNotLoading,
  }) = FetchAdminCategoriesEvent;
}
