// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'marker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MarkerEventTearOff {
  const _$MarkerEventTearOff();

  _MarkerStarted started([LatLng? corner1, LatLng? corner2]) {
    return _MarkerStarted(
      corner1,
      corner2,
    );
  }

  _MapMoved moved(LatLng corner1, LatLng corner2) {
    return _MapMoved(
      corner1,
      corner2,
    );
  }
}

/// @nodoc
const $MarkerEvent = _$MarkerEventTearOff();

/// @nodoc
mixin _$MarkerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? corner1, LatLng? corner2) started,
    required TResult Function(LatLng corner1, LatLng corner2) moved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? corner1, LatLng? corner2)? started,
    TResult Function(LatLng corner1, LatLng corner2)? moved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkerStarted value) started,
    required TResult Function(_MapMoved value) moved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkerStarted value)? started,
    TResult Function(_MapMoved value)? moved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerEventCopyWith<$Res> {
  factory $MarkerEventCopyWith(
          MarkerEvent value, $Res Function(MarkerEvent) then) =
      _$MarkerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarkerEventCopyWithImpl<$Res> implements $MarkerEventCopyWith<$Res> {
  _$MarkerEventCopyWithImpl(this._value, this._then);

  final MarkerEvent _value;
  // ignore: unused_field
  final $Res Function(MarkerEvent) _then;
}

/// @nodoc
abstract class _$MarkerStartedCopyWith<$Res> {
  factory _$MarkerStartedCopyWith(
          _MarkerStarted value, $Res Function(_MarkerStarted) then) =
      __$MarkerStartedCopyWithImpl<$Res>;
  $Res call({LatLng? corner1, LatLng? corner2});
}

/// @nodoc
class __$MarkerStartedCopyWithImpl<$Res> extends _$MarkerEventCopyWithImpl<$Res>
    implements _$MarkerStartedCopyWith<$Res> {
  __$MarkerStartedCopyWithImpl(
      _MarkerStarted _value, $Res Function(_MarkerStarted) _then)
      : super(_value, (v) => _then(v as _MarkerStarted));

  @override
  _MarkerStarted get _value => super._value as _MarkerStarted;

  @override
  $Res call({
    Object? corner1 = freezed,
    Object? corner2 = freezed,
  }) {
    return _then(_MarkerStarted(
      corner1 == freezed
          ? _value.corner1
          : corner1 // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      corner2 == freezed
          ? _value.corner2
          : corner2 // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc
class _$_MarkerStarted implements _MarkerStarted {
  const _$_MarkerStarted([this.corner1, this.corner2]);

  @override
  final LatLng? corner1;
  @override
  final LatLng? corner2;

  @override
  String toString() {
    return 'MarkerEvent.started(corner1: $corner1, corner2: $corner2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkerStarted &&
            (identical(other.corner1, corner1) ||
                const DeepCollectionEquality()
                    .equals(other.corner1, corner1)) &&
            (identical(other.corner2, corner2) ||
                const DeepCollectionEquality().equals(other.corner2, corner2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(corner1) ^
      const DeepCollectionEquality().hash(corner2);

  @JsonKey(ignore: true)
  @override
  _$MarkerStartedCopyWith<_MarkerStarted> get copyWith =>
      __$MarkerStartedCopyWithImpl<_MarkerStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? corner1, LatLng? corner2) started,
    required TResult Function(LatLng corner1, LatLng corner2) moved,
  }) {
    return started(corner1, corner2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? corner1, LatLng? corner2)? started,
    TResult Function(LatLng corner1, LatLng corner2)? moved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(corner1, corner2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkerStarted value) started,
    required TResult Function(_MapMoved value) moved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkerStarted value)? started,
    TResult Function(_MapMoved value)? moved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _MarkerStarted implements MarkerEvent {
  const factory _MarkerStarted([LatLng? corner1, LatLng? corner2]) =
      _$_MarkerStarted;

  LatLng? get corner1 => throw _privateConstructorUsedError;
  LatLng? get corner2 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MarkerStartedCopyWith<_MarkerStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MapMovedCopyWith<$Res> {
  factory _$MapMovedCopyWith(_MapMoved value, $Res Function(_MapMoved) then) =
      __$MapMovedCopyWithImpl<$Res>;
  $Res call({LatLng corner1, LatLng corner2});
}

/// @nodoc
class __$MapMovedCopyWithImpl<$Res> extends _$MarkerEventCopyWithImpl<$Res>
    implements _$MapMovedCopyWith<$Res> {
  __$MapMovedCopyWithImpl(_MapMoved _value, $Res Function(_MapMoved) _then)
      : super(_value, (v) => _then(v as _MapMoved));

  @override
  _MapMoved get _value => super._value as _MapMoved;

  @override
  $Res call({
    Object? corner1 = freezed,
    Object? corner2 = freezed,
  }) {
    return _then(_MapMoved(
      corner1 == freezed
          ? _value.corner1
          : corner1 // ignore: cast_nullable_to_non_nullable
              as LatLng,
      corner2 == freezed
          ? _value.corner2
          : corner2 // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
class _$_MapMoved implements _MapMoved {
  const _$_MapMoved(this.corner1, this.corner2);

  @override
  final LatLng corner1;
  @override
  final LatLng corner2;

  @override
  String toString() {
    return 'MarkerEvent.moved(corner1: $corner1, corner2: $corner2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapMoved &&
            (identical(other.corner1, corner1) ||
                const DeepCollectionEquality()
                    .equals(other.corner1, corner1)) &&
            (identical(other.corner2, corner2) ||
                const DeepCollectionEquality().equals(other.corner2, corner2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(corner1) ^
      const DeepCollectionEquality().hash(corner2);

  @JsonKey(ignore: true)
  @override
  _$MapMovedCopyWith<_MapMoved> get copyWith =>
      __$MapMovedCopyWithImpl<_MapMoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? corner1, LatLng? corner2) started,
    required TResult Function(LatLng corner1, LatLng corner2) moved,
  }) {
    return moved(corner1, corner2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? corner1, LatLng? corner2)? started,
    TResult Function(LatLng corner1, LatLng corner2)? moved,
    required TResult orElse(),
  }) {
    if (moved != null) {
      return moved(corner1, corner2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MarkerStarted value) started,
    required TResult Function(_MapMoved value) moved,
  }) {
    return moved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MarkerStarted value)? started,
    TResult Function(_MapMoved value)? moved,
    required TResult orElse(),
  }) {
    if (moved != null) {
      return moved(this);
    }
    return orElse();
  }
}

abstract class _MapMoved implements MarkerEvent {
  const factory _MapMoved(LatLng corner1, LatLng corner2) = _$_MapMoved;

  LatLng get corner1 => throw _privateConstructorUsedError;
  LatLng get corner2 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MapMovedCopyWith<_MapMoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MarkerStateTearOff {
  const _$MarkerStateTearOff();

  _InitialState initial() {
    return const _InitialState();
  }

  _MarkerState state(
      {required LatLng corner1,
      required LatLng corner2,
      required List<LatLng> markers}) {
    return _MarkerState(
      corner1: corner1,
      corner2: corner2,
      markers: markers,
    );
  }

  _FailureState failure({required String message}) {
    return _FailureState(
      message: message,
    );
  }
}

/// @nodoc
const $MarkerState = _$MarkerStateTearOff();

/// @nodoc
mixin _$MarkerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            LatLng corner1, LatLng corner2, List<LatLng> markers)
        state,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng corner1, LatLng corner2, List<LatLng> markers)?
        state,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_MarkerState value) state,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_MarkerState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerStateCopyWith<$Res> {
  factory $MarkerStateCopyWith(
          MarkerState value, $Res Function(MarkerState) then) =
      _$MarkerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarkerStateCopyWithImpl<$Res> implements $MarkerStateCopyWith<$Res> {
  _$MarkerStateCopyWithImpl(this._value, this._then);

  final MarkerState _value;
  // ignore: unused_field
  final $Res Function(MarkerState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
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
    return 'MarkerState.initial()';
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
    required TResult Function(
            LatLng corner1, LatLng corner2, List<LatLng> markers)
        state,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng corner1, LatLng corner2, List<LatLng> markers)?
        state,
    TResult Function(String message)? failure,
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
    required TResult Function(_MarkerState value) state,
    required TResult Function(_FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_MarkerState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements MarkerState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$MarkerStateCopyWith<$Res> {
  factory _$MarkerStateCopyWith(
          _MarkerState value, $Res Function(_MarkerState) then) =
      __$MarkerStateCopyWithImpl<$Res>;
  $Res call({LatLng corner1, LatLng corner2, List<LatLng> markers});
}

/// @nodoc
class __$MarkerStateCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
    implements _$MarkerStateCopyWith<$Res> {
  __$MarkerStateCopyWithImpl(
      _MarkerState _value, $Res Function(_MarkerState) _then)
      : super(_value, (v) => _then(v as _MarkerState));

  @override
  _MarkerState get _value => super._value as _MarkerState;

  @override
  $Res call({
    Object? corner1 = freezed,
    Object? corner2 = freezed,
    Object? markers = freezed,
  }) {
    return _then(_MarkerState(
      corner1: corner1 == freezed
          ? _value.corner1
          : corner1 // ignore: cast_nullable_to_non_nullable
              as LatLng,
      corner2: corner2 == freezed
          ? _value.corner2
          : corner2 // ignore: cast_nullable_to_non_nullable
              as LatLng,
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc
class _$_MarkerState implements _MarkerState {
  const _$_MarkerState(
      {required this.corner1, required this.corner2, required this.markers});

  @override
  final LatLng corner1;
  @override
  final LatLng corner2;
  @override
  final List<LatLng> markers;

  @override
  String toString() {
    return 'MarkerState.state(corner1: $corner1, corner2: $corner2, markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkerState &&
            (identical(other.corner1, corner1) ||
                const DeepCollectionEquality()
                    .equals(other.corner1, corner1)) &&
            (identical(other.corner2, corner2) ||
                const DeepCollectionEquality()
                    .equals(other.corner2, corner2)) &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality().equals(other.markers, markers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(corner1) ^
      const DeepCollectionEquality().hash(corner2) ^
      const DeepCollectionEquality().hash(markers);

  @JsonKey(ignore: true)
  @override
  _$MarkerStateCopyWith<_MarkerState> get copyWith =>
      __$MarkerStateCopyWithImpl<_MarkerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            LatLng corner1, LatLng corner2, List<LatLng> markers)
        state,
    required TResult Function(String message) failure,
  }) {
    return state(corner1, corner2, markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng corner1, LatLng corner2, List<LatLng> markers)?
        state,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(corner1, corner2, markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_MarkerState value) state,
    required TResult Function(_FailureState value) failure,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_MarkerState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _MarkerState implements MarkerState {
  const factory _MarkerState(
      {required LatLng corner1,
      required LatLng corner2,
      required List<LatLng> markers}) = _$_MarkerState;

  LatLng get corner1 => throw _privateConstructorUsedError;
  LatLng get corner2 => throw _privateConstructorUsedError;
  List<LatLng> get markers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MarkerStateCopyWith<_MarkerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureStateCopyWith<$Res> {
  factory _$FailureStateCopyWith(
          _FailureState value, $Res Function(_FailureState) then) =
      __$FailureStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureStateCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
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
              as String,
    ));
  }
}

/// @nodoc
class _$_FailureState implements _FailureState {
  const _$_FailureState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MarkerState.failure(message: $message)';
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
    required TResult Function(
            LatLng corner1, LatLng corner2, List<LatLng> markers)
        state,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng corner1, LatLng corner2, List<LatLng> markers)?
        state,
    TResult Function(String message)? failure,
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
    required TResult Function(_MarkerState value) state,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_MarkerState value)? state,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements MarkerState {
  const factory _FailureState({required String message}) = _$_FailureState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureStateCopyWith<_FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
