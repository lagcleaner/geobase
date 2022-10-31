// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'marker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(Failure failure)? failure,
    TResult? Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
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
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Filtered value)? filteredOut,
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
      _$MarkerStateCopyWithImpl<$Res, MarkerState>;
}

/// @nodoc
class _$MarkerStateCopyWithImpl<$Res, $Val extends MarkerState>
    implements $MarkerStateCopyWith<$Res> {
  _$MarkerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$MarkerStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

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
    TResult? Function(Failure failure)? failure,
    TResult? Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
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
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Filtered value)? filteredOut,
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
  const factory _Failure(final Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilteredCopyWith<$Res> {
  factory _$$_FilteredCopyWith(
          _$_Filtered value, $Res Function(_$_Filtered) then) =
      __$$_FilteredCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<IMarkable> markers, Set<IMarkable> temporalMarkers});
}

/// @nodoc
class __$$_FilteredCopyWithImpl<$Res>
    extends _$MarkerStateCopyWithImpl<$Res, _$_Filtered>
    implements _$$_FilteredCopyWith<$Res> {
  __$$_FilteredCopyWithImpl(
      _$_Filtered _value, $Res Function(_$_Filtered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markers = null,
    Object? temporalMarkers = null,
  }) {
    return _then(_$_Filtered(
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<IMarkable>,
      temporalMarkers: null == temporalMarkers
          ? _value._temporalMarkers
          : temporalMarkers // ignore: cast_nullable_to_non_nullable
              as Set<IMarkable>,
    ));
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered(
      {required final Set<IMarkable> markers,
      required final Set<IMarkable> temporalMarkers})
      : _markers = markers,
        _temporalMarkers = temporalMarkers;

  final Set<IMarkable> _markers;
  @override
  Set<IMarkable> get markers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  final Set<IMarkable> _temporalMarkers;
  @override
  Set<IMarkable> get temporalMarkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_temporalMarkers);
  }

  @override
  String toString() {
    return 'MarkerState.filteredOut(markers: $markers, temporalMarkers: $temporalMarkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filtered &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality()
                .equals(other._temporalMarkers, _temporalMarkers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_markers),
      const DeepCollectionEquality().hash(_temporalMarkers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilteredCopyWith<_$_Filtered> get copyWith =>
      __$$_FilteredCopyWithImpl<_$_Filtered>(this, _$identity);

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
    TResult? Function(Failure failure)? failure,
    TResult? Function(Set<IMarkable> markers, Set<IMarkable> temporalMarkers)?
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
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Filtered value)? filteredOut,
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
      {required final Set<IMarkable> markers,
      required final Set<IMarkable> temporalMarkers}) = _$_Filtered;

  Set<IMarkable> get markers;
  Set<IMarkable> get temporalMarkers;
  @JsonKey(ignore: true)
  _$$_FilteredCopyWith<_$_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}
