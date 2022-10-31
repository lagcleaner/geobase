// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geodata_new_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeodataNewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories, int? selected)
        loadedCategories,
    required TResult Function(String? error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult? Function(String? error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCategories value) loadedCategories,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCategories value)? loadedCategories,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeodataNewStateCopyWith<$Res> {
  factory $GeodataNewStateCopyWith(
          GeodataNewState value, $Res Function(GeodataNewState) then) =
      _$GeodataNewStateCopyWithImpl<$Res, GeodataNewState>;
}

/// @nodoc
class _$GeodataNewStateCopyWithImpl<$Res, $Val extends GeodataNewState>
    implements $GeodataNewStateCopyWith<$Res> {
  _$GeodataNewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$GeodataNewStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GeodataNewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories, int? selected)
        loadedCategories,
    required TResult Function(String? error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult? Function(String? error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCategories value) loadedCategories,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCategories value)? loadedCategories,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GeodataNewState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCategoriesCopyWith<$Res> {
  factory _$$_LoadedCategoriesCopyWith(
          _$_LoadedCategories value, $Res Function(_$_LoadedCategories) then) =
      __$$_LoadedCategoriesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryGetEntity> categories, int? selected});
}

/// @nodoc
class __$$_LoadedCategoriesCopyWithImpl<$Res>
    extends _$GeodataNewStateCopyWithImpl<$Res, _$_LoadedCategories>
    implements _$$_LoadedCategoriesCopyWith<$Res> {
  __$$_LoadedCategoriesCopyWithImpl(
      _$_LoadedCategories _value, $Res Function(_$_LoadedCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selected = freezed,
  }) {
    return _then(_$_LoadedCategories(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LoadedCategories implements _LoadedCategories {
  const _$_LoadedCategories(final List<CategoryGetEntity> categories,
      {this.selected})
      : _categories = categories;

  final List<CategoryGetEntity> _categories;
  @override
  List<CategoryGetEntity> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final int? selected;

  @override
  String toString() {
    return 'GeodataNewState.loadedCategories(categories: $categories, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedCategories &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCategoriesCopyWith<_$_LoadedCategories> get copyWith =>
      __$$_LoadedCategoriesCopyWithImpl<_$_LoadedCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories, int? selected)
        loadedCategories,
    required TResult Function(String? error) failure,
  }) {
    return loadedCategories(categories, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult? Function(String? error)? failure,
  }) {
    return loadedCategories?.call(categories, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(categories, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCategories value) loadedCategories,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCategories value)? loadedCategories,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(this);
    }
    return orElse();
  }
}

abstract class _LoadedCategories implements GeodataNewState {
  const factory _LoadedCategories(final List<CategoryGetEntity> categories,
      {final int? selected}) = _$_LoadedCategories;

  List<CategoryGetEntity> get categories;
  int? get selected;
  @JsonKey(ignore: true)
  _$$_LoadedCategoriesCopyWith<_$_LoadedCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$GeodataNewStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'GeodataNewState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CategoryGetEntity> categories, int? selected)
        loadedCategories,
    required TResult Function(String? error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult? Function(String? error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCategories value) loadedCategories,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCategories value)? loadedCategories,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GeodataNewState {
  const factory _Failure([final String? error]) = _$_Failure;

  String? get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
