// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _ConnectionFailure connection() {
    return const _ConnectionFailure();
  }

  _PermissionDeniedFailure permissionDenied({String? message}) {
    return _PermissionDeniedFailure(
      message: message,
    );
  }

  _UnhandledFailure unhandled({String? message}) {
    return _UnhandledFailure(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$ConnectionFailureCopyWith<$Res> {
  factory _$ConnectionFailureCopyWith(
          _ConnectionFailure value, $Res Function(_ConnectionFailure) then) =
      __$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ConnectionFailureCopyWith<$Res> {
  __$ConnectionFailureCopyWithImpl(
      _ConnectionFailure _value, $Res Function(_ConnectionFailure) _then)
      : super(_value, (v) => _then(v as _ConnectionFailure));

  @override
  _ConnectionFailure get _value => super._value as _ConnectionFailure;
}

/// @nodoc
class _$_ConnectionFailure implements _ConnectionFailure {
  const _$_ConnectionFailure();

  @override
  String toString() {
    return 'Failure.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) {
    return connection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? unhandled,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure implements Failure {
  const factory _ConnectionFailure() = _$_ConnectionFailure;
}

/// @nodoc
abstract class _$PermissionDeniedFailureCopyWith<$Res> {
  factory _$PermissionDeniedFailureCopyWith(_PermissionDeniedFailure value,
          $Res Function(_PermissionDeniedFailure) then) =
      __$PermissionDeniedFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$PermissionDeniedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$PermissionDeniedFailureCopyWith<$Res> {
  __$PermissionDeniedFailureCopyWithImpl(_PermissionDeniedFailure _value,
      $Res Function(_PermissionDeniedFailure) _then)
      : super(_value, (v) => _then(v as _PermissionDeniedFailure));

  @override
  _PermissionDeniedFailure get _value =>
      super._value as _PermissionDeniedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PermissionDeniedFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_PermissionDeniedFailure implements _PermissionDeniedFailure {
  const _$_PermissionDeniedFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.permissionDenied(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PermissionDeniedFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PermissionDeniedFailureCopyWith<_PermissionDeniedFailure> get copyWith =>
      __$PermissionDeniedFailureCopyWithImpl<_PermissionDeniedFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) {
    return permissionDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? unhandled,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDeniedFailure implements Failure {
  const factory _PermissionDeniedFailure({String? message}) =
      _$_PermissionDeniedFailure;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PermissionDeniedFailureCopyWith<_PermissionDeniedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnhandledFailureCopyWith<$Res> {
  factory _$UnhandledFailureCopyWith(
          _UnhandledFailure value, $Res Function(_UnhandledFailure) then) =
      __$UnhandledFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$UnhandledFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnhandledFailureCopyWith<$Res> {
  __$UnhandledFailureCopyWithImpl(
      _UnhandledFailure _value, $Res Function(_UnhandledFailure) _then)
      : super(_value, (v) => _then(v as _UnhandledFailure));

  @override
  _UnhandledFailure get _value => super._value as _UnhandledFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnhandledFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_UnhandledFailure implements _UnhandledFailure {
  const _$_UnhandledFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unhandled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnhandledFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnhandledFailureCopyWith<_UnhandledFailure> get copyWith =>
      __$UnhandledFailureCopyWithImpl<_UnhandledFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) {
    return unhandled(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connection,
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connection,
    required TResult Function(_PermissionDeniedFailure value) permissionDenied,
    required TResult Function(_UnhandledFailure value) unhandled,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connection,
    TResult Function(_PermissionDeniedFailure value)? permissionDenied,
    TResult Function(_UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class _UnhandledFailure implements Failure {
  const factory _UnhandledFailure({String? message}) = _$_UnhandledFailure;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnhandledFailureCopyWith<_UnhandledFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
