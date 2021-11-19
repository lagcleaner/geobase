// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geodata_shower_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeodataShowerStateTearOff {
  const _$GeodataShowerStateTearOff();

  _InitialState initial() {
    return const _InitialState();
  }

  _SuccessState state({List<GeodataGetEntity> geodataList = const []}) {
    return _SuccessState(
      geodataList: geodataList,
    );
  }

  _FailureState failure({String? message}) {
    return _FailureState(
      message: message,
    );
  }
}

/// @nodoc
const $GeodataShowerState = _$GeodataShowerStateTearOff();

/// @nodoc
mixin _$GeodataShowerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<GeodataGetEntity> geodataList) state,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<GeodataGetEntity> geodataList)? state,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SuccessState value) state,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SuccessState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeodataShowerStateCopyWith<$Res> {
  factory $GeodataShowerStateCopyWith(
          GeodataShowerState value, $Res Function(GeodataShowerState) then) =
      _$GeodataShowerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeodataShowerStateCopyWithImpl<$Res>
    implements $GeodataShowerStateCopyWith<$Res> {
  _$GeodataShowerStateCopyWithImpl(this._value, this._then);

  final GeodataShowerState _value;
  // ignore: unused_field
  final $Res Function(GeodataShowerState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$GeodataShowerStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

/// @nodoc
class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'GeodataShowerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<GeodataGetEntity> geodataList) state,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<GeodataGetEntity> geodataList)? state,
    TResult Function(String? message)? failure,
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
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SuccessState value) state,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SuccessState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements GeodataShowerState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$SuccessStateCopyWith<$Res> {
  factory _$SuccessStateCopyWith(
          _SuccessState value, $Res Function(_SuccessState) then) =
      __$SuccessStateCopyWithImpl<$Res>;
  $Res call({List<GeodataGetEntity> geodataList});
}

/// @nodoc
class __$SuccessStateCopyWithImpl<$Res>
    extends _$GeodataShowerStateCopyWithImpl<$Res>
    implements _$SuccessStateCopyWith<$Res> {
  __$SuccessStateCopyWithImpl(
      _SuccessState _value, $Res Function(_SuccessState) _then)
      : super(_value, (v) => _then(v as _SuccessState));

  @override
  _SuccessState get _value => super._value as _SuccessState;

  @override
  $Res call({
    Object? geodataList = freezed,
  }) {
    return _then(_SuccessState(
      geodataList: geodataList == freezed
          ? _value.geodataList
          : geodataList // ignore: cast_nullable_to_non_nullable
              as List<GeodataGetEntity>,
    ));
  }
}

/// @nodoc
class _$_SuccessState implements _SuccessState {
  const _$_SuccessState({this.geodataList = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<GeodataGetEntity> geodataList;

  @override
  String toString() {
    return 'GeodataShowerState.state(geodataList: $geodataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessState &&
            (identical(other.geodataList, geodataList) ||
                const DeepCollectionEquality()
                    .equals(other.geodataList, geodataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(geodataList);

  @JsonKey(ignore: true)
  @override
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      __$SuccessStateCopyWithImpl<_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<GeodataGetEntity> geodataList) state,
    required TResult Function(String? message) failure,
  }) {
    return state(geodataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<GeodataGetEntity> geodataList)? state,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(geodataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SuccessState value) state,
    required TResult Function(_FailureState value) failure,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SuccessState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements GeodataShowerState {
  const factory _SuccessState({List<GeodataGetEntity> geodataList}) =
      _$_SuccessState;

  List<GeodataGetEntity> get geodataList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureStateCopyWith<$Res> {
  factory _$FailureStateCopyWith(
          _FailureState value, $Res Function(_FailureState) then) =
      __$FailureStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$FailureStateCopyWithImpl<$Res>
    extends _$GeodataShowerStateCopyWithImpl<$Res>
    implements _$FailureStateCopyWith<$Res> {
  __$FailureStateCopyWithImpl(
      _FailureState _value, $Res Function(_FailureState) _then)
      : super(_value, (v) => _then(v as _FailureState));

  @override
  _FailureState get _value => super._value as _FailureState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FailureState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_FailureState implements _FailureState {
  const _$_FailureState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'GeodataShowerState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureStateCopyWith<_FailureState> get copyWith =>
      __$FailureStateCopyWithImpl<_FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<GeodataGetEntity> geodataList) state,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<GeodataGetEntity> geodataList)? state,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_SuccessState value) state,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_SuccessState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements GeodataShowerState {
  const factory _FailureState({String? message}) = _$_FailureState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureStateCopyWith<_FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
