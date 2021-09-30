// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfigurationEntityTearOff {
  const _$ConfigurationEntityTearOff();

  _ConfigurationEntity call(
      {required MapSourceConfiguration sourceConfiguration,
      required UserPreferencesEntity preferences}) {
    return _ConfigurationEntity(
      sourceConfiguration: sourceConfiguration,
      preferences: preferences,
    );
  }
}

/// @nodoc
const $ConfigurationEntity = _$ConfigurationEntityTearOff();

/// @nodoc
mixin _$ConfigurationEntity {
  MapSourceConfiguration get sourceConfiguration =>
      throw _privateConstructorUsedError;
  UserPreferencesEntity get preferences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigurationEntityCopyWith<ConfigurationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationEntityCopyWith<$Res> {
  factory $ConfigurationEntityCopyWith(
          ConfigurationEntity value, $Res Function(ConfigurationEntity) then) =
      _$ConfigurationEntityCopyWithImpl<$Res>;
  $Res call(
      {MapSourceConfiguration sourceConfiguration,
      UserPreferencesEntity preferences});

  $MapSourceConfigurationCopyWith<$Res> get sourceConfiguration;
  $UserPreferencesEntityCopyWith<$Res> get preferences;
}

/// @nodoc
class _$ConfigurationEntityCopyWithImpl<$Res>
    implements $ConfigurationEntityCopyWith<$Res> {
  _$ConfigurationEntityCopyWithImpl(this._value, this._then);

  final ConfigurationEntity _value;
  // ignore: unused_field
  final $Res Function(ConfigurationEntity) _then;

  @override
  $Res call({
    Object? sourceConfiguration = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      sourceConfiguration: sourceConfiguration == freezed
          ? _value.sourceConfiguration
          : sourceConfiguration // ignore: cast_nullable_to_non_nullable
              as MapSourceConfiguration,
      preferences: preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferencesEntity,
    ));
  }

  @override
  $MapSourceConfigurationCopyWith<$Res> get sourceConfiguration {
    return $MapSourceConfigurationCopyWith<$Res>(_value.sourceConfiguration,
        (value) {
      return _then(_value.copyWith(sourceConfiguration: value));
    });
  }

  @override
  $UserPreferencesEntityCopyWith<$Res> get preferences {
    return $UserPreferencesEntityCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
  }
}

/// @nodoc
abstract class _$ConfigurationEntityCopyWith<$Res>
    implements $ConfigurationEntityCopyWith<$Res> {
  factory _$ConfigurationEntityCopyWith(_ConfigurationEntity value,
          $Res Function(_ConfigurationEntity) then) =
      __$ConfigurationEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {MapSourceConfiguration sourceConfiguration,
      UserPreferencesEntity preferences});

  @override
  $MapSourceConfigurationCopyWith<$Res> get sourceConfiguration;
  @override
  $UserPreferencesEntityCopyWith<$Res> get preferences;
}

/// @nodoc
class __$ConfigurationEntityCopyWithImpl<$Res>
    extends _$ConfigurationEntityCopyWithImpl<$Res>
    implements _$ConfigurationEntityCopyWith<$Res> {
  __$ConfigurationEntityCopyWithImpl(
      _ConfigurationEntity _value, $Res Function(_ConfigurationEntity) _then)
      : super(_value, (v) => _then(v as _ConfigurationEntity));

  @override
  _ConfigurationEntity get _value => super._value as _ConfigurationEntity;

  @override
  $Res call({
    Object? sourceConfiguration = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_ConfigurationEntity(
      sourceConfiguration: sourceConfiguration == freezed
          ? _value.sourceConfiguration
          : sourceConfiguration // ignore: cast_nullable_to_non_nullable
              as MapSourceConfiguration,
      preferences: preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferencesEntity,
    ));
  }
}

/// @nodoc
class _$_ConfigurationEntity implements _ConfigurationEntity {
  const _$_ConfigurationEntity(
      {required this.sourceConfiguration, required this.preferences});

  @override
  final MapSourceConfiguration sourceConfiguration;
  @override
  final UserPreferencesEntity preferences;

  @override
  String toString() {
    return 'ConfigurationEntity(sourceConfiguration: $sourceConfiguration, preferences: $preferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigurationEntity &&
            (identical(other.sourceConfiguration, sourceConfiguration) ||
                const DeepCollectionEquality()
                    .equals(other.sourceConfiguration, sourceConfiguration)) &&
            (identical(other.preferences, preferences) ||
                const DeepCollectionEquality()
                    .equals(other.preferences, preferences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sourceConfiguration) ^
      const DeepCollectionEquality().hash(preferences);

  @JsonKey(ignore: true)
  @override
  _$ConfigurationEntityCopyWith<_ConfigurationEntity> get copyWith =>
      __$ConfigurationEntityCopyWithImpl<_ConfigurationEntity>(
          this, _$identity);
}

abstract class _ConfigurationEntity implements ConfigurationEntity {
  const factory _ConfigurationEntity(
      {required MapSourceConfiguration sourceConfiguration,
      required UserPreferencesEntity preferences}) = _$_ConfigurationEntity;

  @override
  MapSourceConfiguration get sourceConfiguration =>
      throw _privateConstructorUsedError;
  @override
  UserPreferencesEntity get preferences => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfigurationEntityCopyWith<_ConfigurationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
