// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure? failureAtTrying) disable,
    required TResult Function(LatLng location) enable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure? failureAtTrying)? disable,
    TResult? Function(LatLng location)? enable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure? failureAtTrying)? disable,
    TResult Function(LatLng location)? enable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingLocation value) loading,
    required TResult Function(_LocationDisable value) disable,
    required TResult Function(_LocationEnable value) enable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingLocation value)? loading,
    TResult? Function(_LocationDisable value)? disable,
    TResult? Function(_LocationEnable value)? enable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingLocation value)? loading,
    TResult Function(_LocationDisable value)? disable,
    TResult Function(_LocationEnable value)? enable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingLocationCopyWith<$Res> {
  factory _$$_LoadingLocationCopyWith(
          _$_LoadingLocation value, $Res Function(_$_LoadingLocation) then) =
      __$$_LoadingLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingLocationCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LoadingLocation>
    implements _$$_LoadingLocationCopyWith<$Res> {
  __$$_LoadingLocationCopyWithImpl(
      _$_LoadingLocation _value, $Res Function(_$_LoadingLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingLocation implements _LoadingLocation {
  const _$_LoadingLocation();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure? failureAtTrying) disable,
    required TResult Function(LatLng location) enable,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure? failureAtTrying)? disable,
    TResult? Function(LatLng location)? enable,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure? failureAtTrying)? disable,
    TResult Function(LatLng location)? enable,
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
    required TResult Function(_LoadingLocation value) loading,
    required TResult Function(_LocationDisable value) disable,
    required TResult Function(_LocationEnable value) enable,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingLocation value)? loading,
    TResult? Function(_LocationDisable value)? disable,
    TResult? Function(_LocationEnable value)? enable,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingLocation value)? loading,
    TResult Function(_LocationDisable value)? disable,
    TResult Function(_LocationEnable value)? enable,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingLocation implements LocationState {
  const factory _LoadingLocation() = _$_LoadingLocation;
}

/// @nodoc
abstract class _$$_LocationDisableCopyWith<$Res> {
  factory _$$_LocationDisableCopyWith(
          _$_LocationDisable value, $Res Function(_$_LocationDisable) then) =
      __$$_LocationDisableCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failureAtTrying});

  $FailureCopyWith<$Res>? get failureAtTrying;
}

/// @nodoc
class __$$_LocationDisableCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationDisable>
    implements _$$_LocationDisableCopyWith<$Res> {
  __$$_LocationDisableCopyWithImpl(
      _$_LocationDisable _value, $Res Function(_$_LocationDisable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureAtTrying = freezed,
  }) {
    return _then(_$_LocationDisable(
      freezed == failureAtTrying
          ? _value.failureAtTrying
          : failureAtTrying // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failureAtTrying {
    if (_value.failureAtTrying == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failureAtTrying!, (value) {
      return _then(_value.copyWith(failureAtTrying: value));
    });
  }
}

/// @nodoc

class _$_LocationDisable implements _LocationDisable {
  const _$_LocationDisable([this.failureAtTrying]);

  @override
  final Failure? failureAtTrying;

  @override
  String toString() {
    return 'LocationState.disable(failureAtTrying: $failureAtTrying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDisable &&
            (identical(other.failureAtTrying, failureAtTrying) ||
                other.failureAtTrying == failureAtTrying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureAtTrying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDisableCopyWith<_$_LocationDisable> get copyWith =>
      __$$_LocationDisableCopyWithImpl<_$_LocationDisable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure? failureAtTrying) disable,
    required TResult Function(LatLng location) enable,
  }) {
    return disable(failureAtTrying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure? failureAtTrying)? disable,
    TResult? Function(LatLng location)? enable,
  }) {
    return disable?.call(failureAtTrying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure? failureAtTrying)? disable,
    TResult Function(LatLng location)? enable,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(failureAtTrying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingLocation value) loading,
    required TResult Function(_LocationDisable value) disable,
    required TResult Function(_LocationEnable value) enable,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingLocation value)? loading,
    TResult? Function(_LocationDisable value)? disable,
    TResult? Function(_LocationEnable value)? enable,
  }) {
    return disable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingLocation value)? loading,
    TResult Function(_LocationDisable value)? disable,
    TResult Function(_LocationEnable value)? enable,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }
}

abstract class _LocationDisable implements LocationState {
  const factory _LocationDisable([final Failure? failureAtTrying]) =
      _$_LocationDisable;

  Failure? get failureAtTrying;
  @JsonKey(ignore: true)
  _$$_LocationDisableCopyWith<_$_LocationDisable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationEnableCopyWith<$Res> {
  factory _$$_LocationEnableCopyWith(
          _$_LocationEnable value, $Res Function(_$_LocationEnable) then) =
      __$$_LocationEnableCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$_LocationEnableCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationEnable>
    implements _$$_LocationEnableCopyWith<$Res> {
  __$$_LocationEnableCopyWithImpl(
      _$_LocationEnable _value, $Res Function(_$_LocationEnable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_LocationEnable(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationEnable implements _LocationEnable {
  const _$_LocationEnable({required this.location});

  @override
  final LatLng location;

  @override
  String toString() {
    return 'LocationState.enable(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationEnable &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationEnableCopyWith<_$_LocationEnable> get copyWith =>
      __$$_LocationEnableCopyWithImpl<_$_LocationEnable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Failure? failureAtTrying) disable,
    required TResult Function(LatLng location) enable,
  }) {
    return enable(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Failure? failureAtTrying)? disable,
    TResult? Function(LatLng location)? enable,
  }) {
    return enable?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Failure? failureAtTrying)? disable,
    TResult Function(LatLng location)? enable,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingLocation value) loading,
    required TResult Function(_LocationDisable value) disable,
    required TResult Function(_LocationEnable value) enable,
  }) {
    return enable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingLocation value)? loading,
    TResult? Function(_LocationDisable value)? disable,
    TResult? Function(_LocationEnable value)? enable,
  }) {
    return enable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingLocation value)? loading,
    TResult Function(_LocationDisable value)? disable,
    TResult Function(_LocationEnable value)? enable,
    required TResult orElse(),
  }) {
    if (enable != null) {
      return enable(this);
    }
    return orElse();
  }
}

abstract class _LocationEnable implements LocationState {
  const factory _LocationEnable({required final LatLng location}) =
      _$_LocationEnable;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$_LocationEnableCopyWith<_$_LocationEnable> get copyWith =>
      throw _privateConstructorUsedError;
}
