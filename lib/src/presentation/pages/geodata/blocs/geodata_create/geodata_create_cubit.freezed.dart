// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geodata_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeodataCreateStateTearOff {
  const _$GeodataCreateStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _GeodataCategorySelectionState categorySelection(
      {required List<CategoryGetEntity> categories}) {
    return _GeodataCategorySelectionState(
      categories: categories,
    );
  }

  _GeodataCreateState inputData({required GeodataCreateInitialData fetchData}) {
    return _GeodataCreateState(
      fetchData: fetchData,
    );
  }

  _GeodataLoadingCategoriesErrorState failure({required Failure failure}) {
    return _GeodataLoadingCategoriesErrorState(
      failure: failure,
    );
  }
}

/// @nodoc
const $GeodataCreateState = _$GeodataCreateStateTearOff();

/// @nodoc
mixin _$GeodataCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories)
        categorySelection,
    required TResult Function(GeodataCreateInitialData fetchData) inputData,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories)? categorySelection,
    TResult Function(GeodataCreateInitialData fetchData)? inputData,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GeodataCategorySelectionState value)
        categorySelection,
    required TResult Function(_GeodataCreateState value) inputData,
    required TResult Function(_GeodataLoadingCategoriesErrorState value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GeodataCategorySelectionState value)? categorySelection,
    TResult Function(_GeodataCreateState value)? inputData,
    TResult Function(_GeodataLoadingCategoriesErrorState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeodataCreateStateCopyWith<$Res> {
  factory $GeodataCreateStateCopyWith(
          GeodataCreateState value, $Res Function(GeodataCreateState) then) =
      _$GeodataCreateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeodataCreateStateCopyWithImpl<$Res>
    implements $GeodataCreateStateCopyWith<$Res> {
  _$GeodataCreateStateCopyWithImpl(this._value, this._then);

  final GeodataCreateState _value;
  // ignore: unused_field
  final $Res Function(GeodataCreateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$GeodataCreateStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GeodataCreateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories)
        categorySelection,
    required TResult Function(GeodataCreateInitialData fetchData) inputData,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories)? categorySelection,
    TResult Function(GeodataCreateInitialData fetchData)? inputData,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GeodataCategorySelectionState value)
        categorySelection,
    required TResult Function(_GeodataCreateState value) inputData,
    required TResult Function(_GeodataLoadingCategoriesErrorState value)
        failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GeodataCategorySelectionState value)? categorySelection,
    TResult Function(_GeodataCreateState value)? inputData,
    TResult Function(_GeodataLoadingCategoriesErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GeodataCreateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$GeodataCreateStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GeodataCreateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories)
        categorySelection,
    required TResult Function(GeodataCreateInitialData fetchData) inputData,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories)? categorySelection,
    TResult Function(GeodataCreateInitialData fetchData)? inputData,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GeodataCategorySelectionState value)
        categorySelection,
    required TResult Function(_GeodataCreateState value) inputData,
    required TResult Function(_GeodataLoadingCategoriesErrorState value)
        failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GeodataCategorySelectionState value)? categorySelection,
    TResult Function(_GeodataCreateState value)? inputData,
    TResult Function(_GeodataLoadingCategoriesErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GeodataCreateState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$GeodataCategorySelectionStateCopyWith<$Res> {
  factory _$GeodataCategorySelectionStateCopyWith(
          _GeodataCategorySelectionState value,
          $Res Function(_GeodataCategorySelectionState) then) =
      __$GeodataCategorySelectionStateCopyWithImpl<$Res>;
  $Res call({List<CategoryGetEntity> categories});
}

/// @nodoc
class __$GeodataCategorySelectionStateCopyWithImpl<$Res>
    extends _$GeodataCreateStateCopyWithImpl<$Res>
    implements _$GeodataCategorySelectionStateCopyWith<$Res> {
  __$GeodataCategorySelectionStateCopyWithImpl(
      _GeodataCategorySelectionState _value,
      $Res Function(_GeodataCategorySelectionState) _then)
      : super(_value, (v) => _then(v as _GeodataCategorySelectionState));

  @override
  _GeodataCategorySelectionState get _value =>
      super._value as _GeodataCategorySelectionState;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_GeodataCategorySelectionState(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
    ));
  }
}

/// @nodoc
class _$_GeodataCategorySelectionState
    implements _GeodataCategorySelectionState {
  const _$_GeodataCategorySelectionState({required this.categories});

  @override
  final List<CategoryGetEntity> categories;

  @override
  String toString() {
    return 'GeodataCreateState.categorySelection(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeodataCategorySelectionState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$GeodataCategorySelectionStateCopyWith<_GeodataCategorySelectionState>
      get copyWith => __$GeodataCategorySelectionStateCopyWithImpl<
          _GeodataCategorySelectionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories)
        categorySelection,
    required TResult Function(GeodataCreateInitialData fetchData) inputData,
    required TResult Function(Failure failure) failure,
  }) {
    return categorySelection(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories)? categorySelection,
    TResult Function(GeodataCreateInitialData fetchData)? inputData,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (categorySelection != null) {
      return categorySelection(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GeodataCategorySelectionState value)
        categorySelection,
    required TResult Function(_GeodataCreateState value) inputData,
    required TResult Function(_GeodataLoadingCategoriesErrorState value)
        failure,
  }) {
    return categorySelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GeodataCategorySelectionState value)? categorySelection,
    TResult Function(_GeodataCreateState value)? inputData,
    TResult Function(_GeodataLoadingCategoriesErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (categorySelection != null) {
      return categorySelection(this);
    }
    return orElse();
  }
}

abstract class _GeodataCategorySelectionState implements GeodataCreateState {
  const factory _GeodataCategorySelectionState(
          {required List<CategoryGetEntity> categories}) =
      _$_GeodataCategorySelectionState;

  List<CategoryGetEntity> get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeodataCategorySelectionStateCopyWith<_GeodataCategorySelectionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeodataCreateStateCopyWith<$Res> {
  factory _$GeodataCreateStateCopyWith(
          _GeodataCreateState value, $Res Function(_GeodataCreateState) then) =
      __$GeodataCreateStateCopyWithImpl<$Res>;
  $Res call({GeodataCreateInitialData fetchData});
}

/// @nodoc
class __$GeodataCreateStateCopyWithImpl<$Res>
    extends _$GeodataCreateStateCopyWithImpl<$Res>
    implements _$GeodataCreateStateCopyWith<$Res> {
  __$GeodataCreateStateCopyWithImpl(
      _GeodataCreateState _value, $Res Function(_GeodataCreateState) _then)
      : super(_value, (v) => _then(v as _GeodataCreateState));

  @override
  _GeodataCreateState get _value => super._value as _GeodataCreateState;

  @override
  $Res call({
    Object? fetchData = freezed,
  }) {
    return _then(_GeodataCreateState(
      fetchData: fetchData == freezed
          ? _value.fetchData
          : fetchData // ignore: cast_nullable_to_non_nullable
              as GeodataCreateInitialData,
    ));
  }
}

/// @nodoc
class _$_GeodataCreateState implements _GeodataCreateState {
  const _$_GeodataCreateState({required this.fetchData});

  @override
  final GeodataCreateInitialData fetchData;

  @override
  String toString() {
    return 'GeodataCreateState.inputData(fetchData: $fetchData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeodataCreateState &&
            (identical(other.fetchData, fetchData) ||
                const DeepCollectionEquality()
                    .equals(other.fetchData, fetchData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fetchData);

  @JsonKey(ignore: true)
  @override
  _$GeodataCreateStateCopyWith<_GeodataCreateState> get copyWith =>
      __$GeodataCreateStateCopyWithImpl<_GeodataCreateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories)
        categorySelection,
    required TResult Function(GeodataCreateInitialData fetchData) inputData,
    required TResult Function(Failure failure) failure,
  }) {
    return inputData(fetchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories)? categorySelection,
    TResult Function(GeodataCreateInitialData fetchData)? inputData,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (inputData != null) {
      return inputData(fetchData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GeodataCategorySelectionState value)
        categorySelection,
    required TResult Function(_GeodataCreateState value) inputData,
    required TResult Function(_GeodataLoadingCategoriesErrorState value)
        failure,
  }) {
    return inputData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GeodataCategorySelectionState value)? categorySelection,
    TResult Function(_GeodataCreateState value)? inputData,
    TResult Function(_GeodataLoadingCategoriesErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (inputData != null) {
      return inputData(this);
    }
    return orElse();
  }
}

abstract class _GeodataCreateState implements GeodataCreateState {
  const factory _GeodataCreateState(
      {required GeodataCreateInitialData fetchData}) = _$_GeodataCreateState;

  GeodataCreateInitialData get fetchData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeodataCreateStateCopyWith<_GeodataCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeodataLoadingCategoriesErrorStateCopyWith<$Res> {
  factory _$GeodataLoadingCategoriesErrorStateCopyWith(
          _GeodataLoadingCategoriesErrorState value,
          $Res Function(_GeodataLoadingCategoriesErrorState) then) =
      __$GeodataLoadingCategoriesErrorStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$GeodataLoadingCategoriesErrorStateCopyWithImpl<$Res>
    extends _$GeodataCreateStateCopyWithImpl<$Res>
    implements _$GeodataLoadingCategoriesErrorStateCopyWith<$Res> {
  __$GeodataLoadingCategoriesErrorStateCopyWithImpl(
      _GeodataLoadingCategoriesErrorState _value,
      $Res Function(_GeodataLoadingCategoriesErrorState) _then)
      : super(_value, (v) => _then(v as _GeodataLoadingCategoriesErrorState));

  @override
  _GeodataLoadingCategoriesErrorState get _value =>
      super._value as _GeodataLoadingCategoriesErrorState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_GeodataLoadingCategoriesErrorState(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_GeodataLoadingCategoriesErrorState
    implements _GeodataLoadingCategoriesErrorState {
  const _$_GeodataLoadingCategoriesErrorState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GeodataCreateState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeodataLoadingCategoriesErrorState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$GeodataLoadingCategoriesErrorStateCopyWith<
          _GeodataLoadingCategoriesErrorState>
      get copyWith => __$GeodataLoadingCategoriesErrorStateCopyWithImpl<
          _GeodataLoadingCategoriesErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories)
        categorySelection,
    required TResult Function(GeodataCreateInitialData fetchData) inputData,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories)? categorySelection,
    TResult Function(GeodataCreateInitialData fetchData)? inputData,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GeodataCategorySelectionState value)
        categorySelection,
    required TResult Function(_GeodataCreateState value) inputData,
    required TResult Function(_GeodataLoadingCategoriesErrorState value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GeodataCategorySelectionState value)? categorySelection,
    TResult Function(_GeodataCreateState value)? inputData,
    TResult Function(_GeodataLoadingCategoriesErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _GeodataLoadingCategoriesErrorState
    implements GeodataCreateState {
  const factory _GeodataLoadingCategoriesErrorState(
      {required Failure failure}) = _$_GeodataLoadingCategoriesErrorState;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeodataLoadingCategoriesErrorStateCopyWith<
          _GeodataLoadingCategoriesErrorState>
      get copyWith => throw _privateConstructorUsedError;
}
