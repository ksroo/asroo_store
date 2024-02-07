import 'package:asroo_store/features/admin/add_categories/data/models/get_all_categories_reponse.dart';
import 'package:asroo_store/features/admin/add_categories/data/repos/categoreis_admin_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_admin_categories_event.dart';
part 'get_all_admin_categories_state.dart';
part 'get_all_admin_categories_bloc.freezed.dart';

class GetAllAdminCategoriesBloc
    extends Bloc<GetAllAdminCategoriesEvent, GetAllAdminCategoriesState> {
  GetAllAdminCategoriesBloc(this._repo)
      : super(const GetAllAdminCategoriesState.loading()) {
    on<FetchCategoriesEvent>((event, emit) {});
  }

  final CategoreisAdminRepo _repo;
}
