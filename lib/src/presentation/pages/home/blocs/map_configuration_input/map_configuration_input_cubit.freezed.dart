// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_configuration_input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapConfigurationInputStateTearOff {
  const _$MapConfigurationInputStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ConfigurationInput configurationInput(
      {MapConfigurationEntity? config, required MapSource selectedType}) {
    return _ConfigurationInput(
      config: config,
      selectedType: selectedType,
    );
  }

  _ConfigurationLoadFailure failureLoading(Failure failure) {
    return _ConfigurationLoadFailure(
      failure,
    );
  }

  _ConfigurationSavingLoadFailure failureSaving(
      {required Failure failure, required MapConfigurationEntity config}) {
    return _ConfigurationSavingLoadFailure(
      failure: failure,
      config: config,
    );
  }
}

/// @nodoc
const $MapConfigurationInputState = _$MapConfigurationInputStateTearOff();

/// @nodoc
mixin _$MapConfigurationInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapConfigurationEntity? config, MapSource selectedType)
        configurationInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(Failure failure, MapConfigurationEntity config)
        failureSaving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapConfigurationEntity? config, MapSource selectedType)?
        configurationInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapConfigurationEntity config)?
        failureSaving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ConfigurationInput value) configurationInput,
    required TResult Function(_ConfigurationLoadFailure value) failureLoading,
    required TResult Function(_ConfigurationSavingLoadFailure value)
        failureSaving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ConfigurationInput value)? configurationInput,
    TResult Function(_ConfigurationLoadFailure value)? failureLoading,
    TResult Function(_ConfigurationSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapConfigurationInputStateCopyWith<$Res> {
  factory $MapConfigurationInputStateCopyWith(MapConfigurationInputState value,
          $Res Function(MapConfigurationInputState) then) =
      _$MapConfigurationInputStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapConfigurationInputStateCopyWithImpl<$Res>
    implements $MapConfigurationInputStateCopyWith<$Res> {
  _$MapConfigurationInputStateCopyWithImpl(this._value, this._then);

  final MapConfigurationInputState _value;
  // ignore: unused_field
  final $Res Function(MapConfigurationInputState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$MapConfigurationInputStateCopyWithImpl<$Res>
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
    return 'MapConfigurationInputState.initial()';
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
            MapConfigurationEntity? config, MapSource selectedType)
        configurationInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(Failure failure, MapConfigurationEntity config)
        failureSaving,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapConfigurationEntity? config, MapSource selectedType)?
        configurationInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapConfigurationEntity config)?
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
    required TResult Function(_ConfigurationInput value) configurationInput,
    required TResult Function(_ConfigurationLoadFailure value) failureLoading,
    required TResult Function(_ConfigurationSavingLoadFailure value)
        failureSaving,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ConfigurationInput value)? configurationInput,
    TResult Function(_ConfigurationLoadFailure value)? failureLoading,
    TResult Function(_ConfigurationSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapConfigurationInputState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ConfigurationInputCopyWith<$Res> {
  factory _$ConfigurationInputCopyWith(
          _ConfigurationInput value, $Res Function(_ConfigurationInput) then) =
      __$ConfigurationInputCopyWithImpl<$Res>;
  $Res call({MapConfigurationEntity? config, MapSource selectedType});
}

/// @nodoc
class __$ConfigurationInputCopyWithImpl<$Res>
    extends _$MapConfigurationInputStateCopyWithImpl<$Res>
    implements _$ConfigurationInputCopyWith<$Res> {
  __$ConfigurationInputCopyWithImpl(
      _ConfigurationInput _value, $Res Function(_ConfigurationInput) _then)
      : super(_value, (v) => _then(v as _ConfigurationInput));

  @override
  _ConfigurationInput get _value => super._value as _ConfigurationInput;

  @override
  $Res call({
    Object? config = freezed,
    Object? selectedType = freezed,
  }) {
    return _then(_ConfigurationInput(
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as MapConfigurationEntity?,
      selectedType: selectedType == freezed
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as MapSource,
    ));
  }
}

/// @nodoc
class _$_ConfigurationInput implements _ConfigurationInput {
  const _$_ConfigurationInput({this.config, required this.selectedType});

  @override
  final MapConfigurationEntity? config;
  @override
  final MapSource selectedType;

  @override
  String toString() {
    return 'MapConfigurationInputState.configurationInput(config: $config, selectedType: $selectedType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigurationInput &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)) &&
            (identical(other.selectedType, selectedType) ||
                const DeepCollectionEquality()
                    .equals(other.selectedType, selectedType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(config) ^
      const DeepCollectionEquality().hash(selectedType);

  @JsonKey(ignore: true)
  @override
  _$ConfigurationInputCopyWith<_ConfigurationInput> get copyWith =>
      __$ConfigurationInputCopyWithImpl<_ConfigurationInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapConfigurationEntity? config, MapSource selectedType)
        configurationInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(Failure failure, MapConfigurationEntity config)
        failureSaving,
  }) {
    return configurationInput(config, selectedType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapConfigurationEntity? config, MapSource selectedType)?
        configurationInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapConfigurationEntity config)?
        failureSaving,
    required TResult orElse(),
  }) {
    if (configurationInput != null) {
      return configurationInput(config, selectedType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ConfigurationInput value) configurationInput,
    required TResult Function(_ConfigurationLoadFailure value) failureLoading,
    required TResult Function(_ConfigurationSavingLoadFailure value)
        failureSaving,
  }) {
    return configurationInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ConfigurationInput value)? configurationInput,
    TResult Function(_ConfigurationLoadFailure value)? failureLoading,
    TResult Function(_ConfigurationSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (configurationInput != null) {
      return configurationInput(this);
    }
    return orElse();
  }
}

abstract class _ConfigurationInput implements MapConfigurationInputState {
  const factory _ConfigurationInput(
      {MapConfigurationEntity? config,
      required MapSource selectedType}) = _$_ConfigurationInput;

  MapConfigurationEntity? get config => throw _privateConstructorUsedError;
  MapSource get selectedType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfigurationInputCopyWith<_ConfigurationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfigurationLoadFailureCopyWith<$Res> {
  factory _$ConfigurationLoadFailureCopyWith(_ConfigurationLoadFailure value,
          $Res Function(_ConfigurationLoadFailure) then) =
      __$ConfigurationLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ConfigurationLoadFailureCopyWithImpl<$Res>
    extends _$MapConfigurationInputStateCopyWithImpl<$Res>
    implements _$ConfigurationLoadFailureCopyWith<$Res> {
  __$ConfigurationLoadFailureCopyWithImpl(_ConfigurationLoadFailure _value,
      $Res Function(_ConfigurationLoadFailure) _then)
      : super(_value, (v) => _then(v as _ConfigurationLoadFailure));

  @override
  _ConfigurationLoadFailure get _value =>
      super._value as _ConfigurationLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_ConfigurationLoadFailure(
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
class _$_ConfigurationLoadFailure implements _ConfigurationLoadFailure {
  const _$_ConfigurationLoadFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MapConfigurationInputState.failureLoading(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigurationLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ConfigurationLoadFailureCopyWith<_ConfigurationLoadFailure> get copyWith =>
      __$ConfigurationLoadFailureCopyWithImpl<_ConfigurationLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapConfigurationEntity? config, MapSource selectedType)
        configurationInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(Failure failure, MapConfigurationEntity config)
        failureSaving,
  }) {
    return failureLoading(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapConfigurationEntity? config, MapSource selectedType)?
        configurationInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapConfigurationEntity config)?
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
    required TResult Function(_ConfigurationInput value) configurationInput,
    required TResult Function(_ConfigurationLoadFailure value) failureLoading,
    required TResult Function(_ConfigurationSavingLoadFailure value)
        failureSaving,
  }) {
    return failureLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ConfigurationInput value)? configurationInput,
    TResult Function(_ConfigurationLoadFailure value)? failureLoading,
    TResult Function(_ConfigurationSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (failureLoading != null) {
      return failureLoading(this);
    }
    return orElse();
  }
}

abstract class _ConfigurationLoadFailure implements MapConfigurationInputState {
  const factory _ConfigurationLoadFailure(Failure failure) =
      _$_ConfigurationLoadFailure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfigurationLoadFailureCopyWith<_ConfigurationLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfigurationSavingLoadFailureCopyWith<$Res> {
  factory _$ConfigurationSavingLoadFailureCopyWith(
          _ConfigurationSavingLoadFailure value,
          $Res Function(_ConfigurationSavingLoadFailure) then) =
      __$ConfigurationSavingLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure, MapConfigurationEntity config});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ConfigurationSavingLoadFailureCopyWithImpl<$Res>
    extends _$MapConfigurationInputStateCopyWithImpl<$Res>
    implements _$ConfigurationSavingLoadFailureCopyWith<$Res> {
  __$ConfigurationSavingLoadFailureCopyWithImpl(
      _ConfigurationSavingLoadFailure _value,
      $Res Function(_ConfigurationSavingLoadFailure) _then)
      : super(_value, (v) => _then(v as _ConfigurationSavingLoadFailure));

  @override
  _ConfigurationSavingLoadFailure get _value =>
      super._value as _ConfigurationSavingLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
    Object? config = freezed,
  }) {
    return _then(_ConfigurationSavingLoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as MapConfigurationEntity,
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
class _$_ConfigurationSavingLoadFailure
    implements _ConfigurationSavingLoadFailure {
  const _$_ConfigurationSavingLoadFailure(
      {required this.failure, required this.config});

  @override
  final Failure failure;
  @override
  final MapConfigurationEntity config;

  @override
  String toString() {
    return 'MapConfigurationInputState.failureSaving(failure: $failure, config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigurationSavingLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(config);

  @JsonKey(ignore: true)
  @override
  _$ConfigurationSavingLoadFailureCopyWith<_ConfigurationSavingLoadFailure>
      get copyWith => __$ConfigurationSavingLoadFailureCopyWithImpl<
          _ConfigurationSavingLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            MapConfigurationEntity? config, MapSource selectedType)
        configurationInput,
    required TResult Function(Failure failure) failureLoading,
    required TResult Function(Failure failure, MapConfigurationEntity config)
        failureSaving,
  }) {
    return failureSaving(failure, config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapConfigurationEntity? config, MapSource selectedType)?
        configurationInput,
    TResult Function(Failure failure)? failureLoading,
    TResult Function(Failure failure, MapConfigurationEntity config)?
        failureSaving,
    required TResult orElse(),
  }) {
    if (failureSaving != null) {
      return failureSaving(failure, config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ConfigurationInput value) configurationInput,
    required TResult Function(_ConfigurationLoadFailure value) failureLoading,
    required TResult Function(_ConfigurationSavingLoadFailure value)
        failureSaving,
  }) {
    return failureSaving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ConfigurationInput value)? configurationInput,
    TResult Function(_ConfigurationLoadFailure value)? failureLoading,
    TResult Function(_ConfigurationSavingLoadFailure value)? failureSaving,
    required TResult orElse(),
  }) {
    if (failureSaving != null) {
      return failureSaving(this);
    }
    return orElse();
  }
}

abstract class _ConfigurationSavingLoadFailure
    implements MapConfigurationInputState {
  const factory _ConfigurationSavingLoadFailure(
          {required Failure failure, required MapConfigurationEntity config}) =
      _$_ConfigurationSavingLoadFailure;

  Failure get failure => throw _privateConstructorUsedError;
  MapConfigurationEntity get config => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfigurationSavingLoadFailureCopyWith<_ConfigurationSavingLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
