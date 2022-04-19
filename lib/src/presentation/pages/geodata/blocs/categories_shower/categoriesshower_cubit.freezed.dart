// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categoriesshower_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesShowerStateTearOff {
  const _$CategoriesShowerStateTearOff();

  _State state(
      {List<CategoryGetEntity> categories = const [], int? selected = null}) {
    return _State(
      categories: categories,
      selected: selected,
    );
  }
}

/// @nodoc
const $CategoriesShowerState = _$CategoriesShowerStateTearOff();

/// @nodoc
mixin _$CategoriesShowerState {
  List<CategoryGetEntity> get categories => throw _privateConstructorUsedError;
  int? get selected => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryGetEntity> categories, int? selected)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CategoryGetEntity> categories, int? selected)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryGetEntity> categories, int? selected)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesShowerStateCopyWith<CategoriesShowerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesShowerStateCopyWith<$Res> {
  factory $CategoriesShowerStateCopyWith(CategoriesShowerState value,
          $Res Function(CategoriesShowerState) then) =
      _$CategoriesShowerStateCopyWithImpl<$Res>;
  $Res call({List<CategoryGetEntity> categories, int? selected});
}

/// @nodoc
class _$CategoriesShowerStateCopyWithImpl<$Res>
    implements $CategoriesShowerStateCopyWith<$Res> {
  _$CategoriesShowerStateCopyWithImpl(this._value, this._then);

  final CategoriesShowerState _value;
  // ignore: unused_field
  final $Res Function(CategoriesShowerState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
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
abstract class _$StateCopyWith<$Res>
    implements $CategoriesShowerStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoryGetEntity> categories, int? selected});
}

/// @nodoc
class __$StateCopyWithImpl<$Res>
    extends _$CategoriesShowerStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? categories = freezed,
    Object? selected = freezed,
  }) {
    return _then(_State(
      categories: categories == freezed
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

class _$_State implements _State {
  const _$_State({this.categories = const [], this.selected = null});

  @JsonKey()
  @override
  final List<CategoryGetEntity> categories;
  @JsonKey()
  @override
  final int? selected;

  @override
  String toString() {
    return 'CategoriesShowerState.state(categories: $categories, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
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
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoryGetEntity> categories, int? selected)
        state,
  }) {
    return state(categories, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CategoryGetEntity> categories, int? selected)? state,
  }) {
    return state?.call(categories, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoryGetEntity> categories, int? selected)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(categories, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements CategoriesShowerState {
  const factory _State({List<CategoryGetEntity> categories, int? selected}) =
      _$_State;

  @override
  List<CategoryGetEntity> get categories;
  @override
  int? get selected;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
