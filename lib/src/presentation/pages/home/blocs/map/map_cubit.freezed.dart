// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState state(
      {required MapController mapController,
      required MapConfigurationEntity mapConfiguration,
      required MapModeEntity mapMode,
      bool loadingConfigs = false,
      Failure? failure = null}) {
    return _MapState(
      mapController: mapController,
      mapConfiguration: mapConfiguration,
      mapMode: mapMode,
      loadingConfigs: loadingConfigs,
      failure: failure,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  MapController get mapController => throw _privateConstructorUsedError;
  MapConfigurationEntity get mapConfiguration =>
      throw _privateConstructorUsedError;
  MapModeEntity get mapMode => throw _privateConstructorUsedError;
  bool get loadingConfigs => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MapController mapController,
            MapConfigurationEntity mapConfiguration,
            MapModeEntity mapMode,
            bool loadingConfigs,
            Failure? failure)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            MapController mapController,
            MapConfigurationEntity mapConfiguration,
            MapModeEntity mapMode,
            bool loadingConfigs,
            Failure? failure)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MapController mapController,
            MapConfigurationEntity mapConfiguration,
            MapModeEntity mapMode,
            bool loadingConfigs,
            Failure? failure)?
        state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {MapController mapController,
      MapConfigurationEntity mapConfiguration,
      MapModeEntity mapMode,
      bool loadingConfigs,
      Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? mapController = freezed,
    Object? mapConfiguration = freezed,
    Object? mapMode = freezed,
    Object? loadingConfigs = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      mapController: mapController == freezed
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as MapController,
      mapConfiguration: mapConfiguration == freezed
          ? _value.mapConfiguration
          : mapConfiguration // ignore: cast_nullable_to_non_nullable
              as MapConfigurationEntity,
      mapMode: mapMode == freezed
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapModeEntity,
      loadingConfigs: loadingConfigs == freezed
          ? _value.loadingConfigs
          : loadingConfigs // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MapController mapController,
      MapConfigurationEntity mapConfiguration,
      MapModeEntity mapMode,
      bool loadingConfigs,
      Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? mapController = freezed,
    Object? mapConfiguration = freezed,
    Object? mapMode = freezed,
    Object? loadingConfigs = freezed,
    Object? failure = freezed,
  }) {
    return _then(_MapState(
      mapController: mapController == freezed
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as MapController,
      mapConfiguration: mapConfiguration == freezed
          ? _value.mapConfiguration
          : mapConfiguration // ignore: cast_nullable_to_non_nullable
              as MapConfigurationEntity,
      mapMode: mapMode == freezed
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapModeEntity,
      loadingConfigs: loadingConfigs == freezed
          ? _value.loadingConfigs
          : loadingConfigs // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  const _$_MapState(
      {required this.mapController,
      required this.mapConfiguration,
      required this.mapMode,
      this.loadingConfigs = false,
      this.failure = null});

  @override
  final MapController mapController;
  @override
  final MapConfigurationEntity mapConfiguration;
  @override
  final MapModeEntity mapMode;
  @JsonKey()
  @override
  final bool loadingConfigs;
  @JsonKey()
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'MapState.state(mapController: $mapController, mapConfiguration: $mapConfiguration, mapMode: $mapMode, loadingConfigs: $loadingConfigs, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapState &&
            const DeepCollectionEquality()
                .equals(other.mapController, mapController) &&
            const DeepCollectionEquality()
                .equals(other.mapConfiguration, mapConfiguration) &&
            const DeepCollectionEquality().equals(other.mapMode, mapMode) &&
            const DeepCollectionEquality()
                .equals(other.loadingConfigs, loadingConfigs) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mapController),
      const DeepCollectionEquality().hash(mapConfiguration),
      const DeepCollectionEquality().hash(mapMode),
      const DeepCollectionEquality().hash(loadingConfigs),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MapController mapController,
            MapConfigurationEntity mapConfiguration,
            MapModeEntity mapMode,
            bool loadingConfigs,
            Failure? failure)
        state,
  }) {
    return state(
        mapController, mapConfiguration, mapMode, loadingConfigs, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            MapController mapController,
            MapConfigurationEntity mapConfiguration,
            MapModeEntity mapMode,
            bool loadingConfigs,
            Failure? failure)?
        state,
  }) {
    return state?.call(
        mapController, mapConfiguration, mapMode, loadingConfigs, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MapController mapController,
            MapConfigurationEntity mapConfiguration,
            MapModeEntity mapMode,
            bool loadingConfigs,
            Failure? failure)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(
          mapController, mapConfiguration, mapMode, loadingConfigs, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MapState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MapState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {required MapController mapController,
      required MapConfigurationEntity mapConfiguration,
      required MapModeEntity mapMode,
      bool loadingConfigs,
      Failure? failure}) = _$_MapState;

  @override
  MapController get mapController;
  @override
  MapConfigurationEntity get mapConfiguration;
  @override
  MapModeEntity get mapMode;
  @override
  bool get loadingConfigs;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
