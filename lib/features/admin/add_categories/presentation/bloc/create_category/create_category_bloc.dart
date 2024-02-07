import 'package:asroo_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:asroo_store/features/admin/add_categories/data/repos/categoreis_admin_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_event.dart';
part 'create_category_state.dart';
part 'create_category_bloc.freezed.dart';

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  CreateCategoryBloc(this._repo) : super(const _Initial()) {
    on<CreateCategoryEvent>((event, emit) {});
  }

  final CategoreisAdminRepo _repo;
}
