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

  ConnectionFailure connection() {
    return const ConnectionFailure();
  }

  PermissionDeniedFailure permissionDenied({String? message}) {
    return PermissionDeniedFailure(
      message: message,
    );
  }

  UnhandledFailure unhandled({String? message}) {
    return UnhandledFailure(
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
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(PermissionDeniedFailure value) permissionDenied,
    required TResult Function(UnhandledFailure value) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(PermissionDeniedFailure value)? permissionDenied,
    TResult Function(UnhandledFailure value)? unhandled,
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
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(
      ConnectionFailure _value, $Res Function(ConnectionFailure) _then)
      : super(_value, (v) => _then(v as ConnectionFailure));

  @override
  ConnectionFailure get _value => super._value as ConnectionFailure;
}

/// @nodoc
class _$ConnectionFailure implements ConnectionFailure {
  const _$ConnectionFailure();

  @override
  String toString() {
    return 'Failure.connection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionFailure);
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
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(PermissionDeniedFailure value) permissionDenied,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(PermissionDeniedFailure value)? permissionDenied,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements Failure {
  const factory ConnectionFailure() = _$ConnectionFailure;
}

/// @nodoc
abstract class $PermissionDeniedFailureCopyWith<$Res> {
  factory $PermissionDeniedFailureCopyWith(PermissionDeniedFailure value,
          $Res Function(PermissionDeniedFailure) then) =
      _$PermissionDeniedFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$PermissionDeniedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $PermissionDeniedFailureCopyWith<$Res> {
  _$PermissionDeniedFailureCopyWithImpl(PermissionDeniedFailure _value,
      $Res Function(PermissionDeniedFailure) _then)
      : super(_value, (v) => _then(v as PermissionDeniedFailure));

  @override
  PermissionDeniedFailure get _value => super._value as PermissionDeniedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PermissionDeniedFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$PermissionDeniedFailure implements PermissionDeniedFailure {
  const _$PermissionDeniedFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.permissionDenied(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PermissionDeniedFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $PermissionDeniedFailureCopyWith<PermissionDeniedFailure> get copyWith =>
      _$PermissionDeniedFailureCopyWithImpl<PermissionDeniedFailure>(
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
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(PermissionDeniedFailure value) permissionDenied,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(PermissionDeniedFailure value)? permissionDenied,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDeniedFailure implements Failure {
  const factory PermissionDeniedFailure({String? message}) =
      _$PermissionDeniedFailure;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionDeniedFailureCopyWith<PermissionDeniedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnhandledFailureCopyWith<$Res> {
  factory $UnhandledFailureCopyWith(
          UnhandledFailure value, $Res Function(UnhandledFailure) then) =
      _$UnhandledFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$UnhandledFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $UnhandledFailureCopyWith<$Res> {
  _$UnhandledFailureCopyWithImpl(
      UnhandledFailure _value, $Res Function(UnhandledFailure) _then)
      : super(_value, (v) => _then(v as UnhandledFailure));

  @override
  UnhandledFailure get _value => super._value as UnhandledFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnhandledFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$UnhandledFailure implements UnhandledFailure {
  const _$UnhandledFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.unhandled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnhandledFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UnhandledFailureCopyWith<UnhandledFailure> get copyWith =>
      _$UnhandledFailureCopyWithImpl<UnhandledFailure>(this, _$identity);

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
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(PermissionDeniedFailure value) permissionDenied,
    required TResult Function(UnhandledFailure value) unhandled,
  }) {
    return unhandled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(PermissionDeniedFailure value)? permissionDenied,
    TResult Function(UnhandledFailure value)? unhandled,
    required TResult orElse(),
  }) {
    if (unhandled != null) {
      return unhandled(this);
    }
    return orElse();
  }
}

abstract class UnhandledFailure implements Failure {
  const factory UnhandledFailure({String? message}) = _$UnhandledFailure;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnhandledFailureCopyWith<UnhandledFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
