// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'source_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapSourceConfigurationTearOff {
  const _$MapSourceConfigurationTearOff();

  _WMSConfiguration wms(
      {required String baseUrl,
      required List<String> layers,
      required List<String> subdomains}) {
    return _WMSConfiguration(
      baseUrl: baseUrl,
      layers: layers,
      subdomains: subdomains,
    );
  }

  _TMSConfiguration tms({required String templateUrl}) {
    return _TMSConfiguration(
      templateUrl: templateUrl,
    );
  }

  _AssetConfiguration assets({required String templateUrl}) {
    return _AssetConfiguration(
      templateUrl: templateUrl,
    );
  }

  _FileMapConfiguration file({required String templateUrl}) {
    return _FileMapConfiguration(
      templateUrl: templateUrl,
    );
  }

  _CustomSourceConfiguration custom(
      {required String templateUrl, List<String>? subdomains}) {
    return _CustomSourceConfiguration(
      templateUrl: templateUrl,
      subdomains: subdomains,
    );
  }

  _EmptySourceConfiguration empty() {
    return const _EmptySourceConfiguration();
  }
}

/// @nodoc
const $MapSourceConfiguration = _$MapSourceConfigurationTearOff();

/// @nodoc
mixin _$MapSourceConfiguration {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapSourceConfigurationCopyWith<$Res> {
  factory $MapSourceConfigurationCopyWith(MapSourceConfiguration value,
          $Res Function(MapSourceConfiguration) then) =
      _$MapSourceConfigurationCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapSourceConfigurationCopyWithImpl<$Res>
    implements $MapSourceConfigurationCopyWith<$Res> {
  _$MapSourceConfigurationCopyWithImpl(this._value, this._then);

  final MapSourceConfiguration _value;
  // ignore: unused_field
  final $Res Function(MapSourceConfiguration) _then;
}

/// @nodoc
abstract class _$WMSConfigurationCopyWith<$Res> {
  factory _$WMSConfigurationCopyWith(
          _WMSConfiguration value, $Res Function(_WMSConfiguration) then) =
      __$WMSConfigurationCopyWithImpl<$Res>;
  $Res call({String baseUrl, List<String> layers, List<String> subdomains});
}

/// @nodoc
class __$WMSConfigurationCopyWithImpl<$Res>
    extends _$MapSourceConfigurationCopyWithImpl<$Res>
    implements _$WMSConfigurationCopyWith<$Res> {
  __$WMSConfigurationCopyWithImpl(
      _WMSConfiguration _value, $Res Function(_WMSConfiguration) _then)
      : super(_value, (v) => _then(v as _WMSConfiguration));

  @override
  _WMSConfiguration get _value => super._value as _WMSConfiguration;

  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? layers = freezed,
    Object? subdomains = freezed,
  }) {
    return _then(_WMSConfiguration(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      layers: layers == freezed
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subdomains: subdomains == freezed
          ? _value.subdomains
          : subdomains // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_WMSConfiguration implements _WMSConfiguration {
  const _$_WMSConfiguration(
      {required this.baseUrl, required this.layers, required this.subdomains});

  @override
  final String baseUrl;
  @override
  final List<String> layers;
  @override
  final List<String> subdomains;

  @override
  String toString() {
    return 'MapSourceConfiguration.wms(baseUrl: $baseUrl, layers: $layers, subdomains: $subdomains)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WMSConfiguration &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality()
                    .equals(other.baseUrl, baseUrl)) &&
            (identical(other.layers, layers) ||
                const DeepCollectionEquality().equals(other.layers, layers)) &&
            (identical(other.subdomains, subdomains) ||
                const DeepCollectionEquality()
                    .equals(other.subdomains, subdomains)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(baseUrl) ^
      const DeepCollectionEquality().hash(layers) ^
      const DeepCollectionEquality().hash(subdomains);

  @JsonKey(ignore: true)
  @override
  _$WMSConfigurationCopyWith<_WMSConfiguration> get copyWith =>
      __$WMSConfigurationCopyWithImpl<_WMSConfiguration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) {
    return wms(baseUrl, layers, subdomains);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (wms != null) {
      return wms(baseUrl, layers, subdomains);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) {
    return wms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) {
    if (wms != null) {
      return wms(this);
    }
    return orElse();
  }
}

abstract class _WMSConfiguration implements MapSourceConfiguration {
  const factory _WMSConfiguration(
      {required String baseUrl,
      required List<String> layers,
      required List<String> subdomains}) = _$_WMSConfiguration;

  String get baseUrl => throw _privateConstructorUsedError;
  List<String> get layers => throw _privateConstructorUsedError;
  List<String> get subdomains => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WMSConfigurationCopyWith<_WMSConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TMSConfigurationCopyWith<$Res> {
  factory _$TMSConfigurationCopyWith(
          _TMSConfiguration value, $Res Function(_TMSConfiguration) then) =
      __$TMSConfigurationCopyWithImpl<$Res>;
  $Res call({String templateUrl});
}

/// @nodoc
class __$TMSConfigurationCopyWithImpl<$Res>
    extends _$MapSourceConfigurationCopyWithImpl<$Res>
    implements _$TMSConfigurationCopyWith<$Res> {
  __$TMSConfigurationCopyWithImpl(
      _TMSConfiguration _value, $Res Function(_TMSConfiguration) _then)
      : super(_value, (v) => _then(v as _TMSConfiguration));

  @override
  _TMSConfiguration get _value => super._value as _TMSConfiguration;

  @override
  $Res call({
    Object? templateUrl = freezed,
  }) {
    return _then(_TMSConfiguration(
      templateUrl: templateUrl == freezed
          ? _value.templateUrl
          : templateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_TMSConfiguration implements _TMSConfiguration {
  const _$_TMSConfiguration({required this.templateUrl});

  @override
  final String templateUrl;

  @override
  String toString() {
    return 'MapSourceConfiguration.tms(templateUrl: $templateUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TMSConfiguration &&
            (identical(other.templateUrl, templateUrl) ||
                const DeepCollectionEquality()
                    .equals(other.templateUrl, templateUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(templateUrl);

  @JsonKey(ignore: true)
  @override
  _$TMSConfigurationCopyWith<_TMSConfiguration> get copyWith =>
      __$TMSConfigurationCopyWithImpl<_TMSConfiguration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) {
    return tms(templateUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (tms != null) {
      return tms(templateUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) {
    return tms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) {
    if (tms != null) {
      return tms(this);
    }
    return orElse();
  }
}

abstract class _TMSConfiguration implements MapSourceConfiguration {
  const factory _TMSConfiguration({required String templateUrl}) =
      _$_TMSConfiguration;

  String get templateUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TMSConfigurationCopyWith<_TMSConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AssetConfigurationCopyWith<$Res> {
  factory _$AssetConfigurationCopyWith(
          _AssetConfiguration value, $Res Function(_AssetConfiguration) then) =
      __$AssetConfigurationCopyWithImpl<$Res>;
  $Res call({String templateUrl});
}

/// @nodoc
class __$AssetConfigurationCopyWithImpl<$Res>
    extends _$MapSourceConfigurationCopyWithImpl<$Res>
    implements _$AssetConfigurationCopyWith<$Res> {
  __$AssetConfigurationCopyWithImpl(
      _AssetConfiguration _value, $Res Function(_AssetConfiguration) _then)
      : super(_value, (v) => _then(v as _AssetConfiguration));

  @override
  _AssetConfiguration get _value => super._value as _AssetConfiguration;

  @override
  $Res call({
    Object? templateUrl = freezed,
  }) {
    return _then(_AssetConfiguration(
      templateUrl: templateUrl == freezed
          ? _value.templateUrl
          : templateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AssetConfiguration implements _AssetConfiguration {
  const _$_AssetConfiguration({required this.templateUrl});

  @override
  final String templateUrl;

  @override
  String toString() {
    return 'MapSourceConfiguration.assets(templateUrl: $templateUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssetConfiguration &&
            (identical(other.templateUrl, templateUrl) ||
                const DeepCollectionEquality()
                    .equals(other.templateUrl, templateUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(templateUrl);

  @JsonKey(ignore: true)
  @override
  _$AssetConfigurationCopyWith<_AssetConfiguration> get copyWith =>
      __$AssetConfigurationCopyWithImpl<_AssetConfiguration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) {
    return assets(templateUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (assets != null) {
      return assets(templateUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) {
    return assets(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) {
    if (assets != null) {
      return assets(this);
    }
    return orElse();
  }
}

abstract class _AssetConfiguration implements MapSourceConfiguration {
  const factory _AssetConfiguration({required String templateUrl}) =
      _$_AssetConfiguration;

  String get templateUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AssetConfigurationCopyWith<_AssetConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FileMapConfigurationCopyWith<$Res> {
  factory _$FileMapConfigurationCopyWith(_FileMapConfiguration value,
          $Res Function(_FileMapConfiguration) then) =
      __$FileMapConfigurationCopyWithImpl<$Res>;
  $Res call({String templateUrl});
}

/// @nodoc
class __$FileMapConfigurationCopyWithImpl<$Res>
    extends _$MapSourceConfigurationCopyWithImpl<$Res>
    implements _$FileMapConfigurationCopyWith<$Res> {
  __$FileMapConfigurationCopyWithImpl(
      _FileMapConfiguration _value, $Res Function(_FileMapConfiguration) _then)
      : super(_value, (v) => _then(v as _FileMapConfiguration));

  @override
  _FileMapConfiguration get _value => super._value as _FileMapConfiguration;

  @override
  $Res call({
    Object? templateUrl = freezed,
  }) {
    return _then(_FileMapConfiguration(
      templateUrl: templateUrl == freezed
          ? _value.templateUrl
          : templateUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_FileMapConfiguration implements _FileMapConfiguration {
  const _$_FileMapConfiguration({required this.templateUrl});

  @override
  final String templateUrl;

  @override
  String toString() {
    return 'MapSourceConfiguration.file(templateUrl: $templateUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileMapConfiguration &&
            (identical(other.templateUrl, templateUrl) ||
                const DeepCollectionEquality()
                    .equals(other.templateUrl, templateUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(templateUrl);

  @JsonKey(ignore: true)
  @override
  _$FileMapConfigurationCopyWith<_FileMapConfiguration> get copyWith =>
      __$FileMapConfigurationCopyWithImpl<_FileMapConfiguration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) {
    return file(templateUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(templateUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class _FileMapConfiguration implements MapSourceConfiguration {
  const factory _FileMapConfiguration({required String templateUrl}) =
      _$_FileMapConfiguration;

  String get templateUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FileMapConfigurationCopyWith<_FileMapConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CustomSourceConfigurationCopyWith<$Res> {
  factory _$CustomSourceConfigurationCopyWith(_CustomSourceConfiguration value,
          $Res Function(_CustomSourceConfiguration) then) =
      __$CustomSourceConfigurationCopyWithImpl<$Res>;
  $Res call({String templateUrl, List<String>? subdomains});
}

/// @nodoc
class __$CustomSourceConfigurationCopyWithImpl<$Res>
    extends _$MapSourceConfigurationCopyWithImpl<$Res>
    implements _$CustomSourceConfigurationCopyWith<$Res> {
  __$CustomSourceConfigurationCopyWithImpl(_CustomSourceConfiguration _value,
      $Res Function(_CustomSourceConfiguration) _then)
      : super(_value, (v) => _then(v as _CustomSourceConfiguration));

  @override
  _CustomSourceConfiguration get _value =>
      super._value as _CustomSourceConfiguration;

  @override
  $Res call({
    Object? templateUrl = freezed,
    Object? subdomains = freezed,
  }) {
    return _then(_CustomSourceConfiguration(
      templateUrl: templateUrl == freezed
          ? _value.templateUrl
          : templateUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subdomains: subdomains == freezed
          ? _value.subdomains
          : subdomains // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
class _$_CustomSourceConfiguration implements _CustomSourceConfiguration {
  const _$_CustomSourceConfiguration(
      {required this.templateUrl, this.subdomains});

  @override
  final String templateUrl;
  @override
  final List<String>? subdomains;

  @override
  String toString() {
    return 'MapSourceConfiguration.custom(templateUrl: $templateUrl, subdomains: $subdomains)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSourceConfiguration &&
            (identical(other.templateUrl, templateUrl) ||
                const DeepCollectionEquality()
                    .equals(other.templateUrl, templateUrl)) &&
            (identical(other.subdomains, subdomains) ||
                const DeepCollectionEquality()
                    .equals(other.subdomains, subdomains)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(templateUrl) ^
      const DeepCollectionEquality().hash(subdomains);

  @JsonKey(ignore: true)
  @override
  _$CustomSourceConfigurationCopyWith<_CustomSourceConfiguration>
      get copyWith =>
          __$CustomSourceConfigurationCopyWithImpl<_CustomSourceConfiguration>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) {
    return custom(templateUrl, subdomains);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(templateUrl, subdomains);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class _CustomSourceConfiguration implements MapSourceConfiguration {
  const factory _CustomSourceConfiguration(
      {required String templateUrl,
      List<String>? subdomains}) = _$_CustomSourceConfiguration;

  String get templateUrl => throw _privateConstructorUsedError;
  List<String>? get subdomains => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CustomSourceConfigurationCopyWith<_CustomSourceConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptySourceConfigurationCopyWith<$Res> {
  factory _$EmptySourceConfigurationCopyWith(_EmptySourceConfiguration value,
          $Res Function(_EmptySourceConfiguration) then) =
      __$EmptySourceConfigurationCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptySourceConfigurationCopyWithImpl<$Res>
    extends _$MapSourceConfigurationCopyWithImpl<$Res>
    implements _$EmptySourceConfigurationCopyWith<$Res> {
  __$EmptySourceConfigurationCopyWithImpl(_EmptySourceConfiguration _value,
      $Res Function(_EmptySourceConfiguration) _then)
      : super(_value, (v) => _then(v as _EmptySourceConfiguration));

  @override
  _EmptySourceConfiguration get _value =>
      super._value as _EmptySourceConfiguration;
}

/// @nodoc
class _$_EmptySourceConfiguration implements _EmptySourceConfiguration {
  const _$_EmptySourceConfiguration();

  @override
  String toString() {
    return 'MapSourceConfiguration.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptySourceConfiguration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)
        wms,
    required TResult Function(String templateUrl) tms,
    required TResult Function(String templateUrl) assets,
    required TResult Function(String templateUrl) file,
    required TResult Function(String templateUrl, List<String>? subdomains)
        custom,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String baseUrl, List<String> layers, List<String> subdomains)?
        wms,
    TResult Function(String templateUrl)? tms,
    TResult Function(String templateUrl)? assets,
    TResult Function(String templateUrl)? file,
    TResult Function(String templateUrl, List<String>? subdomains)? custom,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WMSConfiguration value) wms,
    required TResult Function(_TMSConfiguration value) tms,
    required TResult Function(_AssetConfiguration value) assets,
    required TResult Function(_FileMapConfiguration value) file,
    required TResult Function(_CustomSourceConfiguration value) custom,
    required TResult Function(_EmptySourceConfiguration value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WMSConfiguration value)? wms,
    TResult Function(_TMSConfiguration value)? tms,
    TResult Function(_AssetConfiguration value)? assets,
    TResult Function(_FileMapConfiguration value)? file,
    TResult Function(_CustomSourceConfiguration value)? custom,
    TResult Function(_EmptySourceConfiguration value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptySourceConfiguration implements MapSourceConfiguration {
  const factory _EmptySourceConfiguration() = _$_EmptySourceConfiguration;
}
