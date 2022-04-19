// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _Failure failure(Failure failure) {
    return _Failure(
      failure,
    );
  }

  _Filtered filteredOut(
      {required Set<IMarkable> markers,
      required Set<IMarkable> temporalMarkers}) {
    return _Filtered(
      markers: markers,
      temporalMarkers: temporalMarkers,
    );
  }
}

/// @nodoc
const $MarkerState = _$MarkerStateTearOff();

/// @nodoc
mixin _$MarkerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure failure) failure,
    required TResult Function(
            Set<IMarkable> markers, Set<IMarkable> temporalMarkers)
        filteredOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Failure failure)? failure,
    TResult Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
        filteredOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure failure)? failure,
    TResult Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
        filteredOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$MarkerStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MarkerState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure failure) failure,
    required TResult Function(
            Set<IMarkable> markers, Set<IMarkable> temporalMarkers)
        filteredOut,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Failure failure)? failure,
    TResult Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
        filteredOut,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure failure)? failure,
    TResult Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
        filteredOut,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
  $Res call({Set<IMarkable> markers, Set<IMarkable> temporalMarkers});
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
    Object? temporalMarkers = freezed,
  }) {
    return _then(_Filtered(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<IMarkable>,
      temporalMarkers: temporalMarkers == freezed
          ? _value.temporalMarkers
          : temporalMarkers // ignore: cast_nullable_to_non_nullable
              as Set<IMarkable>,
    ));
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered({required this.markers, required this.temporalMarkers});

  @override
  final Set<IMarkable> markers;
  @override
  final Set<IMarkable> temporalMarkers;

  @override
  String toString() {
    return 'MarkerState.filteredOut(markers: $markers, temporalMarkers: $temporalMarkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filtered &&
            const DeepCollectionEquality().equals(other.markers, markers) &&
            const DeepCollectionEquality()
                .equals(other.temporalMarkers, temporalMarkers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(markers),
      const DeepCollectionEquality().hash(temporalMarkers));

  @JsonKey(ignore: true)
  @override
  _$FilteredCopyWith<_Filtered> get copyWith =>
      __$FilteredCopyWithImpl<_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure failure) failure,
    required TResult Function(
            Set<IMarkable> markers, Set<IMarkable> temporalMarkers)
        filteredOut,
  }) {
    return filteredOut(markers, temporalMarkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Failure failure)? failure,
    TResult Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
        filteredOut,
  }) {
    return filteredOut?.call(markers, temporalMarkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure failure)? failure,
    TResult Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
        filteredOut,
    required TResult orElse(),
  }) {
    if (filteredOut != null) {
      return filteredOut(markers, temporalMarkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_Filtered value) filteredOut,
  }) {
    return filteredOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_Filtered value)? filteredOut,
  }) {
    return filteredOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _Filtered(
      {required Set<IMarkable> markers,
      required Set<IMarkable> temporalMarkers}) = _$_Filtered;

  Set<IMarkable> get markers;
  Set<IMarkable> get temporalMarkers;
  @JsonKey(ignore: true)
  _$FilteredCopyWith<_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}
