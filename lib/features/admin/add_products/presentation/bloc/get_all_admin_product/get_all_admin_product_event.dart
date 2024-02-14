part of 'get_all_admin_product_bloc.dart';

@freezed
class GetAllAdminProductEvent with _$GetAllAdminProductEvent {
  const factory GetAllAdminProductEvent.started() = _Started;
  const factory GetAllAdminProductEvent.getAllProducts({required bool isNotLoading}) =
      FetchAllAdminProductEvent;
}
