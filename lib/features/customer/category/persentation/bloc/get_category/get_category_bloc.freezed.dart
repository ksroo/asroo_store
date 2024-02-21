// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryId) getCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryId)? getCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryId)? getCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchCategoreyEvent value) getCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchCategoreyEvent value)? getCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchCategoreyEvent value)? getCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoryEventCopyWith<$Res> {
  factory $GetCategoryEventCopyWith(
          GetCategoryEvent value, $Res Function(GetCategoryEvent) then) =
      _$GetCategoryEventCopyWithImpl<$Res, GetCategoryEvent>;
}

/// @nodoc
class _$GetCategoryEventCopyWithImpl<$Res, $Val extends GetCategoryEvent>
    implements $GetCategoryEventCopyWith<$Res> {
  _$GetCategoryEventCopyWithImpl(this._value, this._then);

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
    extends _$GetCategoryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'GetCategoryEvent.started()';
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
    required TResult Function(int categoryId) getCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryId)? getCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryId)? getCategory,
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
    required TResult Function(FetchCategoreyEvent value) getCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchCategoreyEvent value)? getCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchCategoreyEvent value)? getCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetCategoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchCategoreyEventImplCopyWith<$Res> {
  factory _$$FetchCategoreyEventImplCopyWith(_$FetchCategoreyEventImpl value,
          $Res Function(_$FetchCategoreyEventImpl) then) =
      __$$FetchCategoreyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$FetchCategoreyEventImplCopyWithImpl<$Res>
    extends _$GetCategoryEventCopyWithImpl<$Res, _$FetchCategoreyEventImpl>
    implements _$$FetchCategoreyEventImplCopyWith<$Res> {
  __$$FetchCategoreyEventImplCopyWithImpl(_$FetchCategoreyEventImpl _value,
      $Res Function(_$FetchCategoreyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$FetchCategoreyEventImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchCategoreyEventImpl implements FetchCategoreyEvent {
  const _$FetchCategoreyEventImpl({required this.categoryId});

  @override
  final int categoryId;

  @override
  String toString() {
    return 'GetCategoryEvent.getCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoreyEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategoreyEventImplCopyWith<_$FetchCategoreyEventImpl> get copyWith =>
      __$$FetchCategoreyEventImplCopyWithImpl<_$FetchCategoreyEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryId) getCategory,
  }) {
    return getCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryId)? getCategory,
  }) {
    return getCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryId)? getCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchCategoreyEvent value) getCategory,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchCategoreyEvent value)? getCategory,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchCategoreyEvent value)? getCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class FetchCategoreyEvent implements GetCategoryEvent {
  const factory FetchCategoreyEvent({required final int categoryId}) =
      _$FetchCategoreyEventImpl;

  int get categoryId;
  @JsonKey(ignore: true)
  _$$FetchCategoreyEventImplCopyWith<_$FetchCategoreyEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProductGetAllModel> productsList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProductGetAllModel> productsList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProductGetAllModel> productsList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoryStateCopyWith<$Res> {
  factory $GetCategoryStateCopyWith(
          GetCategoryState value, $Res Function(GetCategoryState) then) =
      _$GetCategoryStateCopyWithImpl<$Res, GetCategoryState>;
}

/// @nodoc
class _$GetCategoryStateCopyWithImpl<$Res, $Val extends GetCategoryState>
    implements $GetCategoryStateCopyWith<$Res> {
  _$GetCategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$GetCategoryStateCopyWithImpl<$Res, _$LoadingStateImpl>
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
    return 'GetCategoryState.loading()';
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
    required TResult Function(List<ProductGetAllModel> productsList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProductGetAllModel> productsList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProductGetAllModel> productsList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements GetCategoryState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductGetAllModel> productsList});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$GetCategoryStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = null,
  }) {
    return _then(_$SuccessStateImpl(
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductGetAllModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl(
      {required final List<ProductGetAllModel> productsList})
      : _productsList = productsList;

  final List<ProductGetAllModel> _productsList;
  @override
  List<ProductGetAllModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  String toString() {
    return 'GetCategoryState.success(productsList: $productsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProductGetAllModel> productsList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return success(productsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProductGetAllModel> productsList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
  }) {
    return success?.call(productsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProductGetAllModel> productsList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(productsList);
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
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements GetCategoryState {
  const factory SuccessState(
          {required final List<ProductGetAllModel> productsList}) =
      _$SuccessStateImpl;

  List<ProductGetAllModel> get productsList;
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
    extends _$GetCategoryStateCopyWithImpl<$Res, _$EmptyStateImpl>
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
    return 'GetCategoryState.empty()';
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
    required TResult Function(List<ProductGetAllModel> productsList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProductGetAllModel> productsList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProductGetAllModel> productsList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
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
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyState implements GetCategoryState {
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
    extends _$GetCategoryStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'GetCategoryState.error(error: $error)';
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
    required TResult Function(List<ProductGetAllModel> productsList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ProductGetAllModel> productsList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProductGetAllModel> productsList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements GetCategoryState {
  const factory ErrorState({required final String error}) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
