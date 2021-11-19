// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_source_input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapSourceInputStateTearOff {
  const _$MapSourceInputStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SourceInput sourceInput(
      {MapSourceConfigurationEntity? source, required MapSource selectedType}) {
    return _SourceInput(
      source: source,
      selectedType: selectedType,
    );
  }

  _SourceLoadFailure failureLoading(Failure failure) {
    return _SourceLoadFailure(
      failure,
    );
  }

  _SourceSavingLoadFailure failureSaving(
      {required Failure failure,
      required MapSourceConfigurationEntity source}) {
    return _SourceSavingLoadFailure(
      failure: failure,
      source: source,
    );
  }
}

/// @nodoc
const $MapSourceInputState = _$MapSourceInputStateTearOff();

/// @nodoc
mixin _$MapSourceInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)
        sourceInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(
            Failure failure, MapSourceConfigurationEntity source)
        failureSaving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)?
        sourceInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapSourceConfigurationEntity source)?
        failureSaving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SourceInput value) sourceInput,
    required TResult Function(_SourceLoadFailure value) failureLoading,
    required TResult Function(_SourceSavingLoadFailure value) failureSaving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SourceInput value)? sourceInput,
    TResult Function(_SourceLoadFailure value)? failureLoading,
    TResult Function(_SourceSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapSourceInputStateCopyWith<$Res> {
  factory $MapSourceInputStateCopyWith(
          MapSourceInputState value, $Res Function(MapSourceInputState) then) =
      _$MapSourceInputStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapSourceInputStateCopyWithImpl<$Res>
    implements $MapSourceInputStateCopyWith<$Res> {
  _$MapSourceInputStateCopyWithImpl(this._value, this._then);

  final MapSourceInputState _value;
  // ignore: unused_field
  final $Res Function(MapSourceInputState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$MapSourceInputStateCopyWithImpl<$Res>
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
    return 'MapSourceInputState.initial()';
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
    required TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)
        sourceInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(
            Failure failure, MapSourceConfigurationEntity source)
        failureSaving,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)?
        sourceInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapSourceConfigurationEntity source)?
        failureSaving,
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
    required TResult Function(_SourceInput value) sourceInput,
    required TResult Function(_SourceLoadFailure value) failureLoading,
    required TResult Function(_SourceSavingLoadFailure value) failureSaving,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SourceInput value)? sourceInput,
    TResult Function(_SourceLoadFailure value)? failureLoading,
    TResult Function(_SourceSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapSourceInputState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SourceInputCopyWith<$Res> {
  factory _$SourceInputCopyWith(
          _SourceInput value, $Res Function(_SourceInput) then) =
      __$SourceInputCopyWithImpl<$Res>;
  $Res call({MapSourceConfigurationEntity? source, MapSource selectedType});
}

/// @nodoc
class __$SourceInputCopyWithImpl<$Res>
    extends _$MapSourceInputStateCopyWithImpl<$Res>
    implements _$SourceInputCopyWith<$Res> {
  __$SourceInputCopyWithImpl(
      _SourceInput _value, $Res Function(_SourceInput) _then)
      : super(_value, (v) => _then(v as _SourceInput));

  @override
  _SourceInput get _value => super._value as _SourceInput;

  @override
  $Res call({
    Object? source = freezed,
    Object? selectedType = freezed,
  }) {
    return _then(_SourceInput(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as MapSourceConfigurationEntity?,
      selectedType: selectedType == freezed
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as MapSource,
    ));
  }
}

/// @nodoc
class _$_SourceInput implements _SourceInput {
  const _$_SourceInput({this.source, required this.selectedType});

  @override
  final MapSourceConfigurationEntity? source;
  @override
  final MapSource selectedType;

  @override
  String toString() {
    return 'MapSourceInputState.sourceInput(source: $source, selectedType: $selectedType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SourceInput &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.selectedType, selectedType) ||
                const DeepCollectionEquality()
                    .equals(other.selectedType, selectedType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(selectedType);

  @JsonKey(ignore: true)
  @override
  _$SourceInputCopyWith<_SourceInput> get copyWith =>
      __$SourceInputCopyWithImpl<_SourceInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)
        sourceInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(
            Failure failure, MapSourceConfigurationEntity source)
        failureSaving,
  }) {
    return sourceInput(source, selectedType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)?
        sourceInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapSourceConfigurationEntity source)?
        failureSaving,
    required TResult orElse(),
  }) {
    if (sourceInput != null) {
      return sourceInput(source, selectedType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SourceInput value) sourceInput,
    required TResult Function(_SourceLoadFailure value) failureLoading,
    required TResult Function(_SourceSavingLoadFailure value) failureSaving,
  }) {
    return sourceInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SourceInput value)? sourceInput,
    TResult Function(_SourceLoadFailure value)? failureLoading,
    TResult Function(_SourceSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (sourceInput != null) {
      return sourceInput(this);
    }
    return orElse();
  }
}

abstract class _SourceInput implements MapSourceInputState {
  const factory _SourceInput(
      {MapSourceConfigurationEntity? source,
      required MapSource selectedType}) = _$_SourceInput;

  MapSourceConfigurationEntity? get source =>
      throw _privateConstructorUsedError;
  MapSource get selectedType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SourceInputCopyWith<_SourceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SourceLoadFailureCopyWith<$Res> {
  factory _$SourceLoadFailureCopyWith(
          _SourceLoadFailure value, $Res Function(_SourceLoadFailure) then) =
      __$SourceLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SourceLoadFailureCopyWithImpl<$Res>
    extends _$MapSourceInputStateCopyWithImpl<$Res>
    implements _$SourceLoadFailureCopyWith<$Res> {
  __$SourceLoadFailureCopyWithImpl(
      _SourceLoadFailure _value, $Res Function(_SourceLoadFailure) _then)
      : super(_value, (v) => _then(v as _SourceLoadFailure));

  @override
  _SourceLoadFailure get _value => super._value as _SourceLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SourceLoadFailure(
      failure == freezed
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
class _$_SourceLoadFailure implements _SourceLoadFailure {
  const _$_SourceLoadFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MapSourceInputState.failureLoading(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SourceLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SourceLoadFailureCopyWith<_SourceLoadFailure> get copyWith =>
      __$SourceLoadFailureCopyWithImpl<_SourceLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)
        sourceInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(
            Failure failure, MapSourceConfigurationEntity source)
        failureSaving,
  }) {
    return failureLoading(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)?
        sourceInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapSourceConfigurationEntity source)?
        failureSaving,
    required TResult orElse(),
  }) {
    if (failureLoading != null) {
      return failureLoading(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SourceInput value) sourceInput,
    required TResult Function(_SourceLoadFailure value) failureLoading,
    required TResult Function(_SourceSavingLoadFailure value) failureSaving,
  }) {
    return failureLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SourceInput value)? sourceInput,
    TResult Function(_SourceLoadFailure value)? failureLoading,
    TResult Function(_SourceSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (failureLoading != null) {
      return failureLoading(this);
    }
    return orElse();
  }
}

abstract class _SourceLoadFailure implements MapSourceInputState {
  const factory _SourceLoadFailure(Failure failure) = _$_SourceLoadFailure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SourceLoadFailureCopyWith<_SourceLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SourceSavingLoadFailureCopyWith<$Res> {
  factory _$SourceSavingLoadFailureCopyWith(_SourceSavingLoadFailure value,
          $Res Function(_SourceSavingLoadFailure) then) =
      __$SourceSavingLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure, MapSourceConfigurationEntity source});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SourceSavingLoadFailureCopyWithImpl<$Res>
    extends _$MapSourceInputStateCopyWithImpl<$Res>
    implements _$SourceSavingLoadFailureCopyWith<$Res> {
  __$SourceSavingLoadFailureCopyWithImpl(_SourceSavingLoadFailure _value,
      $Res Function(_SourceSavingLoadFailure) _then)
      : super(_value, (v) => _then(v as _SourceSavingLoadFailure));

  @override
  _SourceSavingLoadFailure get _value =>
      super._value as _SourceSavingLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
    Object? source = freezed,
  }) {
    return _then(_SourceSavingLoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as MapSourceConfigurationEntity,
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
class _$_SourceSavingLoadFailure implements _SourceSavingLoadFailure {
  const _$_SourceSavingLoadFailure(
      {required this.failure, required this.source});

  @override
  final Failure failure;
  @override
  final MapSourceConfigurationEntity source;

  @override
  String toString() {
    return 'MapSourceInputState.failureSaving(failure: $failure, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SourceSavingLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(source);

  @JsonKey(ignore: true)
  @override
  _$SourceSavingLoadFailureCopyWith<_SourceSavingLoadFailure> get copyWith =>
      __$SourceSavingLoadFailureCopyWithImpl<_SourceSavingLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)
        sourceInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(
            Failure failure, MapSourceConfigurationEntity source)
        failureSaving,
  }) {
    return failureSaving(failure, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            MapSourceConfigurationEntity? source, MapSource selectedType)?
        sourceInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapSourceConfigurationEntity source)?
        failureSaving,
    required TResult orElse(),
  }) {
    if (failureSaving != null) {
      return failureSaving(failure, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SourceInput value) sourceInput,
    required TResult Function(_SourceLoadFailure value) failureLoading,
    required TResult Function(_SourceSavingLoadFailure value) failureSaving,
  }) {
    return failureSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SourceInput value)? sourceInput,
    TResult Function(_SourceLoadFailure value)? failureLoading,
    TResult Function(_SourceSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (failureSaving != null) {
      return failureSaving(this);
    }
    return orElse();
  }
}

abstract class _SourceSavingLoadFailure implements MapSourceInputState {
  const factory _SourceSavingLoadFailure(
          {required Failure failure,
          required MapSourceConfigurationEntity source}) =
      _$_SourceSavingLoadFailure;

  Failure get failure => throw _privateConstructorUsedError;
  MapSourceConfigurationEntity get source => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SourceSavingLoadFailureCopyWith<_SourceSavingLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
