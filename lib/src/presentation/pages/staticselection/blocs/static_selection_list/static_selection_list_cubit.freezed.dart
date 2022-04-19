// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'static_selection_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StaticSelectionListStateTearOff {
  const _$StaticSelectionListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

  _FetchSuccess fetchSuccess(
      {required List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes}) {
    return _FetchSuccess(
      staticSelectionTypes: staticSelectionTypes,
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
const $StaticSelectionListState = _$StaticSelectionListStateTearOff();

/// @nodoc
mixin _$StaticSelectionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)
        fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
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
abstract class $StaticSelectionListStateCopyWith<$Res> {
  factory $StaticSelectionListStateCopyWith(StaticSelectionListState value,
          $Res Function(StaticSelectionListState) then) =
      _$StaticSelectionListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StaticSelectionListStateCopyWithImpl<$Res>
    implements $StaticSelectionListStateCopyWith<$Res> {
  _$StaticSelectionListStateCopyWithImpl(this._value, this._then);

  final StaticSelectionListState _value;
  // ignore: unused_field
  final $Res Function(StaticSelectionListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$StaticSelectionListStateCopyWithImpl<$Res>
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
    return 'StaticSelectionListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)
        fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return initial?.call(this);
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

abstract class _Initial implements StaticSelectionListState {
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
    extends _$StaticSelectionListStateCopyWithImpl<$Res>
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
    return 'StaticSelectionListState.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)
        fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchInProgress?.call(this);
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

abstract class _FetchInProgress implements StaticSelectionListState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes});
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$StaticSelectionListStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object? staticSelectionTypes = freezed,
  }) {
    return _then(_FetchSuccess(
      staticSelectionTypes: staticSelectionTypes == freezed
          ? _value.staticSelectionTypes
          : staticSelectionTypes // ignore: cast_nullable_to_non_nullable
              as List<FieldTypeStaticSelectionGetEntity>,
    ));
  }
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess({required this.staticSelectionTypes});

  @override
  final List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes;

  @override
  String toString() {
    return 'StaticSelectionListState.fetchSuccess(staticSelectionTypes: $staticSelectionTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchSuccess &&
            const DeepCollectionEquality()
                .equals(other.staticSelectionTypes, staticSelectionTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(staticSelectionTypes));

  @JsonKey(ignore: true)
  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)
        fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchSuccess(staticSelectionTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
  }) {
    return fetchSuccess?.call(staticSelectionTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(staticSelectionTypes);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchSuccess?.call(this);
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

abstract class _FetchSuccess implements StaticSelectionListState {
  const factory _FetchSuccess(
      {required List<FieldTypeStaticSelectionGetEntity>
          staticSelectionTypes}) = _$_FetchSuccess;

  List<FieldTypeStaticSelectionGetEntity> get staticSelectionTypes;
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
    extends _$StaticSelectionListStateCopyWithImpl<$Res>
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
    return 'StaticSelectionListState.fetchSuccessNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchSuccessNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)
        fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchSuccessNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
  }) {
    return fetchSuccessNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchSuccessNotFound?.call(this);
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

abstract class _FetchSuccessNotFound implements StaticSelectionListState {
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
    extends _$StaticSelectionListStateCopyWithImpl<$Res>
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
    return 'StaticSelectionListState.fetchFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      __$FetchFailureCopyWithImpl<_FetchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)
        fetchSuccess,
    required TResult Function() fetchSuccessNotFound,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
    TResult Function()? fetchSuccessNotFound,
    TResult Function(String error)? fetchFailure,
  }) {
    return fetchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(
            List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes)?
        fetchSuccess,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchSuccessNotFound value)? fetchSuccessNotFound,
    TResult Function(_FetchFailure value)? fetchFailure,
  }) {
    return fetchFailure?.call(this);
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

abstract class _FetchFailure implements StaticSelectionListState {
  const factory _FetchFailure({required String error}) = _$_FetchFailure;

  String get error;
  @JsonKey(ignore: true)
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
