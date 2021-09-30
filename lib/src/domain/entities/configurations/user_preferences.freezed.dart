// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserPreferencesEntityTearOff {
  const _$UserPreferencesEntityTearOff();

  UserPreferencesGetEntity get(
      {bool showLocation = false,
      Duration updateInterval = const Duration(seconds: 3)}) {
    return UserPreferencesGetEntity(
      showLocation: showLocation,
      updateInterval: updateInterval,
    );
  }

  UserPreferencesUpdateEntity update(
      {bool? showLocation, Duration? updateInterval}) {
    return UserPreferencesUpdateEntity(
      showLocation: showLocation,
      updateInterval: updateInterval,
    );
  }
}

/// @nodoc
const $UserPreferencesEntity = _$UserPreferencesEntityTearOff();

/// @nodoc
mixin _$UserPreferencesEntity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLocation, Duration updateInterval) get,
    required TResult Function(bool? showLocation, Duration? updateInterval)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLocation, Duration updateInterval)? get,
    TResult Function(bool? showLocation, Duration? updateInterval)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPreferencesGetEntity value) get,
    required TResult Function(UserPreferencesUpdateEntity value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesGetEntity value)? get,
    TResult Function(UserPreferencesUpdateEntity value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesEntityCopyWith<$Res> {
  factory $UserPreferencesEntityCopyWith(UserPreferencesEntity value,
          $Res Function(UserPreferencesEntity) then) =
      _$UserPreferencesEntityCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserPreferencesEntityCopyWithImpl<$Res>
    implements $UserPreferencesEntityCopyWith<$Res> {
  _$UserPreferencesEntityCopyWithImpl(this._value, this._then);

  final UserPreferencesEntity _value;
  // ignore: unused_field
  final $Res Function(UserPreferencesEntity) _then;
}

/// @nodoc
abstract class $UserPreferencesGetEntityCopyWith<$Res> {
  factory $UserPreferencesGetEntityCopyWith(UserPreferencesGetEntity value,
          $Res Function(UserPreferencesGetEntity) then) =
      _$UserPreferencesGetEntityCopyWithImpl<$Res>;
  $Res call({bool showLocation, Duration updateInterval});
}

/// @nodoc
class _$UserPreferencesGetEntityCopyWithImpl<$Res>
    extends _$UserPreferencesEntityCopyWithImpl<$Res>
    implements $UserPreferencesGetEntityCopyWith<$Res> {
  _$UserPreferencesGetEntityCopyWithImpl(UserPreferencesGetEntity _value,
      $Res Function(UserPreferencesGetEntity) _then)
      : super(_value, (v) => _then(v as UserPreferencesGetEntity));

  @override
  UserPreferencesGetEntity get _value =>
      super._value as UserPreferencesGetEntity;

  @override
  $Res call({
    Object? showLocation = freezed,
    Object? updateInterval = freezed,
  }) {
    return _then(UserPreferencesGetEntity(
      showLocation: showLocation == freezed
          ? _value.showLocation
          : showLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      updateInterval: updateInterval == freezed
          ? _value.updateInterval
          : updateInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
class _$UserPreferencesGetEntity implements UserPreferencesGetEntity {
  const _$UserPreferencesGetEntity(
      {this.showLocation = false,
      this.updateInterval = const Duration(seconds: 3)});

  @JsonKey(defaultValue: false)
  @override
  final bool showLocation;
  @JsonKey(defaultValue: const Duration(seconds: 3))
  @override
  final Duration updateInterval;

  @override
  String toString() {
    return 'UserPreferencesEntity.get(showLocation: $showLocation, updateInterval: $updateInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPreferencesGetEntity &&
            (identical(other.showLocation, showLocation) ||
                const DeepCollectionEquality()
                    .equals(other.showLocation, showLocation)) &&
            (identical(other.updateInterval, updateInterval) ||
                const DeepCollectionEquality()
                    .equals(other.updateInterval, updateInterval)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showLocation) ^
      const DeepCollectionEquality().hash(updateInterval);

  @JsonKey(ignore: true)
  @override
  $UserPreferencesGetEntityCopyWith<UserPreferencesGetEntity> get copyWith =>
      _$UserPreferencesGetEntityCopyWithImpl<UserPreferencesGetEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLocation, Duration updateInterval) get,
    required TResult Function(bool? showLocation, Duration? updateInterval)
        update,
  }) {
    return get(showLocation, updateInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLocation, Duration updateInterval)? get,
    TResult Function(bool? showLocation, Duration? updateInterval)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(showLocation, updateInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPreferencesGetEntity value) get,
    required TResult Function(UserPreferencesUpdateEntity value) update,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesGetEntity value)? get,
    TResult Function(UserPreferencesUpdateEntity value)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class UserPreferencesGetEntity implements UserPreferencesEntity {
  const factory UserPreferencesGetEntity(
      {bool showLocation,
      Duration updateInterval}) = _$UserPreferencesGetEntity;

  bool get showLocation => throw _privateConstructorUsedError;
  Duration get updateInterval => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreferencesGetEntityCopyWith<UserPreferencesGetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesUpdateEntityCopyWith<$Res> {
  factory $UserPreferencesUpdateEntityCopyWith(
          UserPreferencesUpdateEntity value,
          $Res Function(UserPreferencesUpdateEntity) then) =
      _$UserPreferencesUpdateEntityCopyWithImpl<$Res>;
  $Res call({bool? showLocation, Duration? updateInterval});
}

/// @nodoc
class _$UserPreferencesUpdateEntityCopyWithImpl<$Res>
    extends _$UserPreferencesEntityCopyWithImpl<$Res>
    implements $UserPreferencesUpdateEntityCopyWith<$Res> {
  _$UserPreferencesUpdateEntityCopyWithImpl(UserPreferencesUpdateEntity _value,
      $Res Function(UserPreferencesUpdateEntity) _then)
      : super(_value, (v) => _then(v as UserPreferencesUpdateEntity));

  @override
  UserPreferencesUpdateEntity get _value =>
      super._value as UserPreferencesUpdateEntity;

  @override
  $Res call({
    Object? showLocation = freezed,
    Object? updateInterval = freezed,
  }) {
    return _then(UserPreferencesUpdateEntity(
      showLocation: showLocation == freezed
          ? _value.showLocation
          : showLocation // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateInterval: updateInterval == freezed
          ? _value.updateInterval
          : updateInterval // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
class _$UserPreferencesUpdateEntity implements UserPreferencesUpdateEntity {
  const _$UserPreferencesUpdateEntity({this.showLocation, this.updateInterval});

  @override
  final bool? showLocation;
  @override
  final Duration? updateInterval;

  @override
  String toString() {
    return 'UserPreferencesEntity.update(showLocation: $showLocation, updateInterval: $updateInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPreferencesUpdateEntity &&
            (identical(other.showLocation, showLocation) ||
                const DeepCollectionEquality()
                    .equals(other.showLocation, showLocation)) &&
            (identical(other.updateInterval, updateInterval) ||
                const DeepCollectionEquality()
                    .equals(other.updateInterval, updateInterval)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showLocation) ^
      const DeepCollectionEquality().hash(updateInterval);

  @JsonKey(ignore: true)
  @override
  $UserPreferencesUpdateEntityCopyWith<UserPreferencesUpdateEntity>
      get copyWith => _$UserPreferencesUpdateEntityCopyWithImpl<
          UserPreferencesUpdateEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLocation, Duration updateInterval) get,
    required TResult Function(bool? showLocation, Duration? updateInterval)
        update,
  }) {
    return update(showLocation, updateInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLocation, Duration updateInterval)? get,
    TResult Function(bool? showLocation, Duration? updateInterval)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(showLocation, updateInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPreferencesGetEntity value) get,
    required TResult Function(UserPreferencesUpdateEntity value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesGetEntity value)? get,
    TResult Function(UserPreferencesUpdateEntity value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UserPreferencesUpdateEntity implements UserPreferencesEntity {
  const factory UserPreferencesUpdateEntity(
      {bool? showLocation,
      Duration? updateInterval}) = _$UserPreferencesUpdateEntity;

  bool? get showLocation => throw _privateConstructorUsedError;
  Duration? get updateInterval => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreferencesUpdateEntityCopyWith<UserPreferencesUpdateEntity>
      get copyWith => throw _privateConstructorUsedError;
}
