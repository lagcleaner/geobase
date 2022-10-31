// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? unhandled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connection,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(UnhandledFailure value)? unhandled,
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

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionFailureCopyWith(
          _$ConnectionFailure value, $Res Function(_$ConnectionFailure) then) =
      __$$ConnectionFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailure>
    implements _$$ConnectionFailureCopyWith<$Res> {
  __$$ConnectionFailureCopyWithImpl(
      _$ConnectionFailure _value, $Res Function(_$ConnectionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConnectionFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionFailure implements ConnectionFailure {
  const _$ConnectionFailure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.connection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureCopyWith<_$ConnectionFailure> get copyWith =>
      __$$ConnectionFailureCopyWithImpl<_$ConnectionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) {
    return connection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? unhandled,
  }) {
    return connection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connection,
    TResult Function(String? message)? permissionDenied,
    TResult Function(String? message)? unhandled,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(message);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(UnhandledFailure value)? unhandled,
  }) {
    return connection?.call(this);
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
  const factory ConnectionFailure({final String? message}) =
      _$ConnectionFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionFailureCopyWith<_$ConnectionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionDeniedFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PermissionDeniedFailureCopyWith(_$PermissionDeniedFailure value,
          $Res Function(_$PermissionDeniedFailure) then) =
      __$$PermissionDeniedFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PermissionDeniedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionDeniedFailure>
    implements _$$PermissionDeniedFailureCopyWith<$Res> {
  __$$PermissionDeniedFailureCopyWithImpl(_$PermissionDeniedFailure _value,
      $Res Function(_$PermissionDeniedFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PermissionDeniedFailure(
      message: freezed == message
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
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionDeniedFailureCopyWith<_$PermissionDeniedFailure> get copyWith =>
      __$$PermissionDeniedFailureCopyWithImpl<_$PermissionDeniedFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) {
    return permissionDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? unhandled,
  }) {
    return permissionDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connection,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(UnhandledFailure value)? unhandled,
  }) {
    return permissionDenied?.call(this);
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
  const factory PermissionDeniedFailure({final String? message}) =
      _$PermissionDeniedFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PermissionDeniedFailureCopyWith<_$PermissionDeniedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnhandledFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnhandledFailureCopyWith(
          _$UnhandledFailure value, $Res Function(_$UnhandledFailure) then) =
      __$$UnhandledFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnhandledFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnhandledFailure>
    implements _$$UnhandledFailureCopyWith<$Res> {
  __$$UnhandledFailureCopyWithImpl(
      _$UnhandledFailure _value, $Res Function(_$UnhandledFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnhandledFailure(
      message: freezed == message
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
        (other.runtimeType == runtimeType &&
            other is _$UnhandledFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnhandledFailureCopyWith<_$UnhandledFailure> get copyWith =>
      __$$UnhandledFailureCopyWithImpl<_$UnhandledFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connection,
    required TResult Function(String? message) permissionDenied,
    required TResult Function(String? message) unhandled,
  }) {
    return unhandled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? permissionDenied,
    TResult? Function(String? message)? unhandled,
  }) {
    return unhandled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connection,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(PermissionDeniedFailure value)? permissionDenied,
    TResult? Function(UnhandledFailure value)? unhandled,
  }) {
    return unhandled?.call(this);
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
  const factory UnhandledFailure({final String? message}) = _$UnhandledFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnhandledFailureCopyWith<_$UnhandledFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
