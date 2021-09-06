// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'marker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MarkerStateTearOff {
  const _$MarkerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Filtering filtering() {
    return const _Filtering();
  }

  _Failure failure() {
    return const _Failure();
  }

  _Filtered filteredOut({required Set<MarkerMeta> markers}) {
    return _Filtered(
      markers: markers,
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
    required TResult Function() filtering,
    required TResult Function() failure,
    required TResult Function(Set<MarkerMeta> markers) filteredOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function()? failure,
    TResult Function(Set<MarkerMeta> markers)? filteredOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MarkerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function() failure,
    required TResult Function(Set<MarkerMeta> markers) filteredOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function()? failure,
    TResult Function(Set<MarkerMeta> markers)? filteredOut,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MarkerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FilteringCopyWith<$Res> {
  factory _$FilteringCopyWith(
          _Filtering value, $Res Function(_Filtering) then) =
      __$FilteringCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilteringCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
    implements _$FilteringCopyWith<$Res> {
  __$FilteringCopyWithImpl(_Filtering _value, $Res Function(_Filtering) _then)
      : super(_value, (v) => _then(v as _Filtering));

  @override
  _Filtering get _value => super._value as _Filtering;
}

/// @nodoc
class _$_Filtering implements _Filtering {
  const _$_Filtering();

  @override
  String toString() {
    return 'MarkerState.filtering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Filtering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function() failure,
    required TResult Function(Set<MarkerMeta> markers) filteredOut,
  }) {
    return filtering();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function()? failure,
    TResult Function(Set<MarkerMeta> markers)? filteredOut,
    required TResult orElse(),
  }) {
    if (filtering != null) {
      return filtering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) {
    return filtering(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
    required TResult orElse(),
  }) {
    if (filtering != null) {
      return filtering(this);
    }
    return orElse();
  }
}

abstract class _Filtering implements MarkerState {
  const factory _Filtering() = _$_Filtering;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'MarkerState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function() failure,
    required TResult Function(Set<MarkerMeta> markers) filteredOut,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function()? failure,
    TResult Function(Set<MarkerMeta> markers)? filteredOut,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements MarkerState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
  $Res call({Set<MarkerMeta> markers});
}

/// @nodoc
class __$FilteredCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
    implements _$FilteredCopyWith<$Res> {
  __$FilteredCopyWithImpl(_Filtered _value, $Res Function(_Filtered) _then)
      : super(_value, (v) => _then(v as _Filtered));

  @override
  _Filtered get _value => super._value as _Filtered;

  @override
  $Res call({
    Object? markers = freezed,
  }) {
    return _then(_Filtered(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<MarkerMeta>,
    ));
  }
}

/// @nodoc
class _$_Filtered implements _Filtered {
  const _$_Filtered({required this.markers});

  @override
  final Set<MarkerMeta> markers;

  @override
  String toString() {
    return 'MarkerState.filteredOut(markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Filtered &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality().equals(other.markers, markers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(markers);

  @JsonKey(ignore: true)
  @override
  _$FilteredCopyWith<_Filtered> get copyWith =>
      __$FilteredCopyWithImpl<_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function() failure,
    required TResult Function(Set<MarkerMeta> markers) filteredOut,
  }) {
    return filteredOut(markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function()? failure,
    TResult Function(Set<MarkerMeta> markers)? filteredOut,
    required TResult orElse(),
  }) {
    if (filteredOut != null) {
      return filteredOut(markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) {
    return filteredOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
    required TResult orElse(),
  }) {
    if (filteredOut != null) {
      return filteredOut(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements MarkerState {
  const factory _Filtered({required Set<MarkerMeta> markers}) = _$_Filtered;

  Set<MarkerMeta> get markers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FilteredCopyWith<_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}
