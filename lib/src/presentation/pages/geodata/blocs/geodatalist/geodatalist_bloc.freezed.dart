// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geodatalist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeodataListEventTearOff {
  const _$GeodataListEventTearOff();

  _Fetched fetched({int? categoryId}) {
    return _Fetched(
      categoryId: categoryId,
    );
  }
}

/// @nodoc
const $GeodataListEvent = _$GeodataListEventTearOff();

/// @nodoc
mixin _$GeodataListEvent {
  int? get categoryId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? categoryId) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? categoryId)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeodataListEventCopyWith<GeodataListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeodataListEventCopyWith<$Res> {
  factory $GeodataListEventCopyWith(
          GeodataListEvent value, $Res Function(GeodataListEvent) then) =
      _$GeodataListEventCopyWithImpl<$Res>;
  $Res call({int? categoryId});
}

/// @nodoc
class _$GeodataListEventCopyWithImpl<$Res>
    implements $GeodataListEventCopyWith<$Res> {
  _$GeodataListEventCopyWithImpl(this._value, this._then);

  final GeodataListEvent _value;
  // ignore: unused_field
  final $Res Function(GeodataListEvent) _then;

  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res>
    implements $GeodataListEventCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
  @override
  $Res call({int? categoryId});
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res> extends _$GeodataListEventCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;

  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_Fetched(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_Fetched implements _Fetched {
  const _$_Fetched({this.categoryId});

  @override
  final int? categoryId;

  @override
  String toString() {
    return 'GeodataListEvent.fetched(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetched &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  _$FetchedCopyWith<_Fetched> get copyWith =>
      __$FetchedCopyWithImpl<_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? categoryId) fetched,
  }) {
    return fetched(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? categoryId)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements GeodataListEvent {
  const factory _Fetched({int? categoryId}) = _$_Fetched;

  @override
  int? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchedCopyWith<_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GeodataListStateTearOff {
  const _$GeodataListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

  _FetchSuccess fetchSuccess({required List<GeodataGetEntity> geodataList}) {
    return _FetchSuccess(
      geodataList: geodataList,
    );
  }

  _FetchSuccessNotFound fetchSuccessNotFound() {
    return const _FetchSuccessNotFound();
  }

  _FetchFailure fetchFailure({required String error}) {
    return _FetchFailure(
      error: error,
    );
  }
}

/// @nodoc
const $GeodataListState = _$GeodataListStateTearOff();

/// @nodoc
mixin _$GeodataListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<GeodataGetEntity> geodataList) fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<GeodataGetEntity> geodataList)? fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchSuccessNotFound value) fetchSuccessNotFound,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeodataListStateCopyWith<$Res> {
  factory $GeodataListStateCopyWith(
          GeodataListState value, $Res Function(GeodataListState) then) =
      _$GeodataListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeodataListStateCopyWithImpl<$Res>
    implements $GeodataListStateCopyWith<$Res> {
  _$GeodataListStateCopyWithImpl(this._value, this._then);

  final GeodataListState _value;
  // ignore: unused_field
  final $Res Function(GeodataListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GeodataListStateCopyWithImpl<$Res>
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
    return 'GeodataListState.initial()';
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
    required TResult Function() fetchInProgress,
    required TResult Function(List<GeodataGetEntity> geodataList) fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<GeodataGetEntity> geodataList)? fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
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
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchSuccessNotFound value) fetchSuccessNotFound,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GeodataListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchInProgressCopyWithImpl<$Res>
    extends _$GeodataListStateCopyWithImpl<$Res>
    implements _$FetchInProgressCopyWith<$Res> {
  __$FetchInProgressCopyWithImpl(
      _FetchInProgress _value, $Res Function(_FetchInProgress) _then)
      : super(_value, (v) => _then(v as _FetchInProgress));

  @override
  _FetchInProgress get _value => super._value as _FetchInProgress;
}

/// @nodoc
class _$_FetchInProgress implements _FetchInProgress {
  const _$_FetchInProgress();

  @override
  String toString() {
    return 'GeodataListState.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<GeodataGetEntity> geodataList) fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<GeodataGetEntity> geodataList)? fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchSuccessNotFound value) fetchSuccessNotFound,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchInProgress implements GeodataListState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({List<GeodataGetEntity> geodataList});
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$GeodataListStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object? geodataList = freezed,
  }) {
    return _then(_FetchSuccess(
      geodataList: geodataList == freezed
          ? _value.geodataList
          : geodataList // ignore: cast_nullable_to_non_nullable
              as List<GeodataGetEntity>,
    ));
  }
}

/// @nodoc
class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess({required this.geodataList});

  @override
  final List<GeodataGetEntity> geodataList;

  @override
  String toString() {
    return 'GeodataListState.fetchSuccess(geodataList: $geodataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSuccess &&
            (identical(other.geodataList, geodataList) ||
                const DeepCollectionEquality()
                    .equals(other.geodataList, geodataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(geodataList);

  @JsonKey(ignore: true)
  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<GeodataGetEntity> geodataList) fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchSuccess(geodataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<GeodataGetEntity> geodataList)? fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(geodataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchSuccessNotFound value) fetchSuccessNotFound,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements GeodataListState {
  const factory _FetchSuccess({required List<GeodataGetEntity> geodataList}) =
      _$_FetchSuccess;

  List<GeodataGetEntity> get geodataList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchSuccessNotFoundCopyWith<$Res> {
  factory _$FetchSuccessNotFoundCopyWith(_FetchSuccessNotFound value,
          $Res Function(_FetchSuccessNotFound) then) =
      __$FetchSuccessNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchSuccessNotFoundCopyWithImpl<$Res>
    extends _$GeodataListStateCopyWithImpl<$Res>
    implements _$FetchSuccessNotFoundCopyWith<$Res> {
  __$FetchSuccessNotFoundCopyWithImpl(
      _FetchSuccessNotFound _value, $Res Function(_FetchSuccessNotFound) _then)
      : super(_value, (v) => _then(v as _FetchSuccessNotFound));

  @override
  _FetchSuccessNotFound get _value => super._value as _FetchSuccessNotFound;
}

/// @nodoc
class _$_FetchSuccessNotFound implements _FetchSuccessNotFound {
  const _$_FetchSuccessNotFound();

  @override
  String toString() {
    return 'GeodataListState.fetchSuccessNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchSuccessNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<GeodataGetEntity> geodataList) fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchSuccessNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<GeodataGetEntity> geodataList)? fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccessNotFound != null) {
      return fetchSuccessNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchSuccessNotFound value) fetchSuccessNotFound,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchSuccessNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccessNotFound != null) {
      return fetchSuccessNotFound(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccessNotFound implements GeodataListState {
  const factory _FetchSuccessNotFound() = _$_FetchSuccessNotFound;
}

/// @nodoc
abstract class _$FetchFailureCopyWith<$Res> {
  factory _$FetchFailureCopyWith(
          _FetchFailure value, $Res Function(_FetchFailure) then) =
      __$FetchFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$FetchFailureCopyWithImpl<$Res>
    extends _$GeodataListStateCopyWithImpl<$Res>
    implements _$FetchFailureCopyWith<$Res> {
  __$FetchFailureCopyWithImpl(
      _FetchFailure _value, $Res Function(_FetchFailure) _then)
      : super(_value, (v) => _then(v as _FetchFailure));

  @override
  _FetchFailure get _value => super._value as _FetchFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_FetchFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FetchFailure implements _FetchFailure {
  const _$_FetchFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GeodataListState.fetchFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      __$FetchFailureCopyWithImpl<_FetchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(List<GeodataGetEntity> geodataList) fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(List<GeodataGetEntity> geodataList)? fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchSuccessNotFound value) fetchSuccessNotFound,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements GeodataListState {
  const factory _FetchFailure({required String error}) = _$_FetchFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}