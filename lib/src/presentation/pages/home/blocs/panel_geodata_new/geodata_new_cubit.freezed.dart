// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geodata_new_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeodataNewStateTearOff {
  const _$GeodataNewStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _LoadedCategories loadedCategories(List<CategoryGetEntity> categories,
      {int? selected}) {
    return _LoadedCategories(
      categories,
      selected: selected,
    );
  }

  _Failure failure([String? error]) {
    return _Failure(
      error,
    );
  }
}

/// @nodoc
const $GeodataNewState = _$GeodataNewStateTearOff();

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
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
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
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
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
      _$GeodataNewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeodataNewStateCopyWithImpl<$Res>
    implements $GeodataNewStateCopyWith<$Res> {
  _$GeodataNewStateCopyWithImpl(this._value, this._then);

  final GeodataNewState _value;
  // ignore: unused_field
  final $Res Function(GeodataNewState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$GeodataNewStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
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
        (other.runtimeType == runtimeType && other is _Loading);
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
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
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
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
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
abstract class _$LoadedCategoriesCopyWith<$Res> {
  factory _$LoadedCategoriesCopyWith(
          _LoadedCategories value, $Res Function(_LoadedCategories) then) =
      __$LoadedCategoriesCopyWithImpl<$Res>;
  $Res call({List<CategoryGetEntity> categories, int? selected});
}

/// @nodoc
class __$LoadedCategoriesCopyWithImpl<$Res>
    extends _$GeodataNewStateCopyWithImpl<$Res>
    implements _$LoadedCategoriesCopyWith<$Res> {
  __$LoadedCategoriesCopyWithImpl(
      _LoadedCategories _value, $Res Function(_LoadedCategories) _then)
      : super(_value, (v) => _then(v as _LoadedCategories));

  @override
  _LoadedCategories get _value => super._value as _LoadedCategories;

  @override
  $Res call({
    Object? categories = freezed,
    Object? selected = freezed,
  }) {
    return _then(_LoadedCategories(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LoadedCategories implements _LoadedCategories {
  const _$_LoadedCategories(this.categories, {this.selected});

  @override
  final List<CategoryGetEntity> categories;
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
            other is _LoadedCategories &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$LoadedCategoriesCopyWith<_LoadedCategories> get copyWith =>
      __$LoadedCategoriesCopyWithImpl<_LoadedCategories>(this, _$identity);

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
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
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
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
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
  const factory _LoadedCategories(List<CategoryGetEntity> categories,
      {int? selected}) = _$_LoadedCategories;

  List<CategoryGetEntity> get categories;
  int? get selected;
  @JsonKey(ignore: true)
  _$LoadedCategoriesCopyWith<_LoadedCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$GeodataNewStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Failure(
      error == freezed
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
            other is _Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

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
    TResult Function()? loading,
    TResult Function(List<CategoryGetEntity> categories, int? selected)?
        loadedCategories,
    TResult Function(String? error)? failure,
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
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCategories value)? loadedCategories,
    TResult Function(_Failure value)? failure,
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
  const factory _Failure([String? error]) = _$_Failure;

  String? get error;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
