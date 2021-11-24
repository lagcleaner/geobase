// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'static_selection_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StaticSelectionViewStateTearOff {
  const _$StaticSelectionViewStateTearOff();

  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

  _FetchSuccess fetchSuccess(
      {required FieldTypeStaticSelectionGetEntity staticSelection}) {
    return _FetchSuccess(
      staticSelection: staticSelection,
    );
  }

  _FetchFailure fetchFailure({required String error}) {
    return _FetchFailure(
      error: error,
    );
  }
}

/// @nodoc
const $StaticSelectionViewState = _$StaticSelectionViewStateTearOff();

/// @nodoc
mixin _$StaticSelectionViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)
        fetchSuccess,
    required TResult Function(String error) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)?
        fetchSuccess,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticSelectionViewStateCopyWith<$Res> {
  factory $StaticSelectionViewStateCopyWith(StaticSelectionViewState value,
          $Res Function(StaticSelectionViewState) then) =
      _$StaticSelectionViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StaticSelectionViewStateCopyWithImpl<$Res>
    implements $StaticSelectionViewStateCopyWith<$Res> {
  _$StaticSelectionViewStateCopyWithImpl(this._value, this._then);

  final StaticSelectionViewState _value;
  // ignore: unused_field
  final $Res Function(StaticSelectionViewState) _then;
}

/// @nodoc
abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchInProgressCopyWithImpl<$Res>
    extends _$StaticSelectionViewStateCopyWithImpl<$Res>
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
    return 'StaticSelectionViewState.fetchInProgress()';
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
    required TResult Function() fetchInProgress,
    required TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)
        fetchSuccess,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)?
        fetchSuccess,
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
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchInProgress implements StaticSelectionViewState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({FieldTypeStaticSelectionGetEntity staticSelection});
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$StaticSelectionViewStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object? staticSelection = freezed,
  }) {
    return _then(_FetchSuccess(
      staticSelection: staticSelection == freezed
          ? _value.staticSelection
          : staticSelection // ignore: cast_nullable_to_non_nullable
              as FieldTypeStaticSelectionGetEntity,
    ));
  }
}

/// @nodoc
class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess({required this.staticSelection});

  @override
  final FieldTypeStaticSelectionGetEntity staticSelection;

  @override
  String toString() {
    return 'StaticSelectionViewState.fetchSuccess(staticSelection: $staticSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSuccess &&
            (identical(other.staticSelection, staticSelection) ||
                const DeepCollectionEquality()
                    .equals(other.staticSelection, staticSelection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(staticSelection);

  @JsonKey(ignore: true)
  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)
        fetchSuccess,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchSuccess(staticSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)?
        fetchSuccess,
    TResult Function(String error)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(staticSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements StaticSelectionViewState {
  const factory _FetchSuccess(
          {required FieldTypeStaticSelectionGetEntity staticSelection}) =
      _$_FetchSuccess;

  FieldTypeStaticSelectionGetEntity get staticSelection =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$StaticSelectionViewStateCopyWithImpl<$Res>
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
    return 'StaticSelectionViewState.fetchFailure(error: $error)';
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
    required TResult Function() fetchInProgress,
    required TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)
        fetchSuccess,
    required TResult Function(String error) fetchFailure,
  }) {
    return fetchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(FieldTypeStaticSelectionGetEntity staticSelection)?
        fetchSuccess,
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
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements StaticSelectionViewState {
  const factory _FetchFailure({required String error}) = _$_FetchFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
