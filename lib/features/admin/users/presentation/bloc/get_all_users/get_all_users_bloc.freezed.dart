// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNotLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNotLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNotLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllUsersEventCopyWith<$Res> {
  factory $GetAllUsersEventCopyWith(
          GetAllUsersEvent value, $Res Function(GetAllUsersEvent) then) =
      _$GetAllUsersEventCopyWithImpl<$Res, GetAllUsersEvent>;
}

/// @nodoc
class _$GetAllUsersEventCopyWithImpl<$Res, $Val extends GetAllUsersEvent>
    implements $GetAllUsersEventCopyWith<$Res> {
  _$GetAllUsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GetAllUsersEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GetAllUsersEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNotLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNotLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNotLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetAllUsersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchAllUsersEventImplCopyWith<$Res> {
  factory _$$FetchAllUsersEventImplCopyWith(_$FetchAllUsersEventImpl value,
          $Res Function(_$FetchAllUsersEventImpl) then) =
      __$$FetchAllUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNotLoading});
}

/// @nodoc
class __$$FetchAllUsersEventImplCopyWithImpl<$Res>
    extends _$GetAllUsersEventCopyWithImpl<$Res, _$FetchAllUsersEventImpl>
    implements _$$FetchAllUsersEventImplCopyWith<$Res> {
  __$$FetchAllUsersEventImplCopyWithImpl(_$FetchAllUsersEventImpl _value,
      $Res Function(_$FetchAllUsersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotLoading = null,
  }) {
    return _then(_$FetchAllUsersEventImpl(
      isNotLoading: null == isNotLoading
          ? _value.isNotLoading
          : isNotLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchAllUsersEventImpl implements FetchAllUsersEvent {
  const _$FetchAllUsersEventImpl({required this.isNotLoading});

  @override
  final bool isNotLoading;

  @override
  String toString() {
    return 'GetAllUsersEvent.getAllUsers(isNotLoading: $isNotLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllUsersEventImpl &&
            (identical(other.isNotLoading, isNotLoading) ||
                other.isNotLoading == isNotLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNotLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllUsersEventImplCopyWith<_$FetchAllUsersEventImpl> get copyWith =>
      __$$FetchAllUsersEventImplCopyWithImpl<_$FetchAllUsersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNotLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) {
    return getAllUsers(isNotLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNotLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) {
    return getAllUsers?.call(isNotLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNotLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(isNotLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class FetchAllUsersEvent implements GetAllUsersEvent {
  const factory FetchAllUsersEvent({required final bool isNotLoading}) =
      _$FetchAllUsersEventImpl;

  bool get isNotLoading;
  @JsonKey(ignore: true)
  _$$FetchAllUsersEventImplCopyWith<_$FetchAllUsersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchForUserEventImplCopyWith<$Res> {
  factory _$$SearchForUserEventImplCopyWith(_$SearchForUserEventImpl value,
          $Res Function(_$SearchForUserEventImpl) then) =
      __$$SearchForUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchName});
}

/// @nodoc
class __$$SearchForUserEventImplCopyWithImpl<$Res>
    extends _$GetAllUsersEventCopyWithImpl<$Res, _$SearchForUserEventImpl>
    implements _$$SearchForUserEventImplCopyWith<$Res> {
  __$$SearchForUserEventImplCopyWithImpl(_$SearchForUserEventImpl _value,
      $Res Function(_$SearchForUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchName = freezed,
  }) {
    return _then(_$SearchForUserEventImpl(
      freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchForUserEventImpl implements SearchForUserEvent {
  const _$SearchForUserEventImpl(this.searchName);

  @override
  final String? searchName;

  @override
  String toString() {
    return 'GetAllUsersEvent.searchForUser(searchName: $searchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchForUserEventImpl &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchForUserEventImplCopyWith<_$SearchForUserEventImpl> get copyWith =>
      __$$SearchForUserEventImplCopyWithImpl<_$SearchForUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNotLoading) getAllUsers,
    required TResult Function(String? searchName) searchForUser,
  }) {
    return searchForUser(searchName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNotLoading)? getAllUsers,
    TResult? Function(String? searchName)? searchForUser,
  }) {
    return searchForUser?.call(searchName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNotLoading)? getAllUsers,
    TResult Function(String? searchName)? searchForUser,
    required TResult orElse(),
  }) {
    if (searchForUser != null) {
      return searchForUser(searchName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchAllUsersEvent value) getAllUsers,
    required TResult Function(SearchForUserEvent value) searchForUser,
  }) {
    return searchForUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchAllUsersEvent value)? getAllUsers,
    TResult? Function(SearchForUserEvent value)? searchForUser,
  }) {
    return searchForUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchAllUsersEvent value)? getAllUsers,
    TResult Function(SearchForUserEvent value)? searchForUser,
    required TResult orElse(),
  }) {
    if (searchForUser != null) {
      return searchForUser(this);
    }
    return orElse();
  }
}

abstract class SearchForUserEvent implements GetAllUsersEvent {
  const factory SearchForUserEvent(final String? searchName) =
      _$SearchForUserEventImpl;

  String? get searchName;
  @JsonKey(ignore: true)
  _$$SearchForUserEventImplCopyWith<_$SearchForUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAllUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UsersModel> userList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<UsersModel> userList) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UsersModel> userList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
    TResult? Function(List<UsersModel> userList)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UsersModel> userList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<UsersModel> userList)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
    required TResult Function(SearchUserState value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SearchUserState value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllUsersStateCopyWith<$Res> {
  factory $GetAllUsersStateCopyWith(
          GetAllUsersState value, $Res Function(GetAllUsersState) then) =
      _$GetAllUsersStateCopyWithImpl<$Res, GetAllUsersState>;
}

/// @nodoc
class _$GetAllUsersStateCopyWithImpl<$Res, $Val extends GetAllUsersState>
    implements $GetAllUsersStateCopyWith<$Res> {
  _$GetAllUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$GetAllUsersStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'GetAllUsersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UsersModel> userList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<UsersModel> userList) search,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UsersModel> userList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
    TResult? Function(List<UsersModel> userList)? search,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UsersModel> userList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<UsersModel> userList)? search,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements GetAllUsersState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UsersModel> userList});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$GetAllUsersStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
  }) {
    return _then(_$SuccessStateImpl(
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UsersModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl({required final List<UsersModel> userList})
      : _userList = userList;

  final List<UsersModel> _userList;
  @override
  List<UsersModel> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'GetAllUsersState.success(userList: $userList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UsersModel> userList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<UsersModel> userList) search,
  }) {
    return success(userList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UsersModel> userList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
    TResult? Function(List<UsersModel> userList)? search,
  }) {
    return success?.call(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UsersModel> userList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<UsersModel> userList)? search,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements GetAllUsersState {
  const factory SuccessState({required final List<UsersModel> userList}) =
      _$SuccessStateImpl;

  List<UsersModel> get userList;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStateImplCopyWith<$Res> {
  factory _$$EmptyStateImplCopyWith(
          _$EmptyStateImpl value, $Res Function(_$EmptyStateImpl) then) =
      __$$EmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyStateImplCopyWithImpl<$Res>
    extends _$GetAllUsersStateCopyWithImpl<$Res, _$EmptyStateImpl>
    implements _$$EmptyStateImplCopyWith<$Res> {
  __$$EmptyStateImplCopyWithImpl(
      _$EmptyStateImpl _value, $Res Function(_$EmptyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyStateImpl implements EmptyState {
  const _$EmptyStateImpl();

  @override
  String toString() {
    return 'GetAllUsersState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UsersModel> userList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<UsersModel> userList) search,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UsersModel> userList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
    TResult? Function(List<UsersModel> userList)? search,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UsersModel> userList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<UsersModel> userList)? search,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyState implements GetAllUsersState {
  const factory EmptyState() = _$EmptyStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$GetAllUsersStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GetAllUsersState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UsersModel> userList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<UsersModel> userList) search,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UsersModel> userList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
    TResult? Function(List<UsersModel> userList)? search,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UsersModel> userList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<UsersModel> userList)? search,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements GetAllUsersState {
  const factory ErrorState({required final String error}) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchUserStateImplCopyWith<$Res> {
  factory _$$SearchUserStateImplCopyWith(_$SearchUserStateImpl value,
          $Res Function(_$SearchUserStateImpl) then) =
      __$$SearchUserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UsersModel> userList});
}

/// @nodoc
class __$$SearchUserStateImplCopyWithImpl<$Res>
    extends _$GetAllUsersStateCopyWithImpl<$Res, _$SearchUserStateImpl>
    implements _$$SearchUserStateImplCopyWith<$Res> {
  __$$SearchUserStateImplCopyWithImpl(
      _$SearchUserStateImpl _value, $Res Function(_$SearchUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
  }) {
    return _then(_$SearchUserStateImpl(
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UsersModel>,
    ));
  }
}

/// @nodoc

class _$SearchUserStateImpl implements SearchUserState {
  const _$SearchUserStateImpl({required final List<UsersModel> userList})
      : _userList = userList;

  final List<UsersModel> _userList;
  @override
  List<UsersModel> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'GetAllUsersState.search(userList: $userList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserStateImpl &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      __$$SearchUserStateImplCopyWithImpl<_$SearchUserStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UsersModel> userList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
    required TResult Function(List<UsersModel> userList) search,
  }) {
    return search(userList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<UsersModel> userList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
    TResult? Function(List<UsersModel> userList)? search,
  }) {
    return search?.call(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UsersModel> userList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    TResult Function(List<UsersModel> userList)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(userList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
    required TResult Function(SearchUserState value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
    TResult? Function(SearchUserState value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    TResult Function(SearchUserState value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchUserState implements GetAllUsersState {
  const factory SearchUserState({required final List<UsersModel> userList}) =
      _$SearchUserStateImpl;

  List<UsersModel> get userList;
  @JsonKey(ignore: true)
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
