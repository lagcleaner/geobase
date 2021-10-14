// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'relations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RelationsStateTearOff {
  const _$RelationsStateTearOff();

  _State state(
      {List<CategoryGetEntity> categories = const [],
      required String name,
      int? selected = null}) {
    return _State(
      categories: categories,
      name: name,
      selected: selected,
    );
  }
}

/// @nodoc
const $RelationsState = _$RelationsStateTearOff();

/// @nodoc
mixin _$RelationsState {
  List<CategoryGetEntity> get categories => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get selected => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryGetEntity> categories, String name, int? selected)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryGetEntity> categories, String name, int? selected)?
        state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelationsStateCopyWith<RelationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationsStateCopyWith<$Res> {
  factory $RelationsStateCopyWith(
          RelationsState value, $Res Function(RelationsState) then) =
      _$RelationsStateCopyWithImpl<$Res>;
  $Res call({List<CategoryGetEntity> categories, String name, int? selected});
}

/// @nodoc
class _$RelationsStateCopyWithImpl<$Res>
    implements $RelationsStateCopyWith<$Res> {
  _$RelationsStateCopyWithImpl(this._value, this._then);

  final RelationsState _value;
  // ignore: unused_field
  final $Res Function(RelationsState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? name = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $RelationsStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoryGetEntity> categories, String name, int? selected});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$RelationsStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? categories = freezed,
    Object? name = freezed,
    Object? selected = freezed,
  }) {
    return _then(_State(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_State implements _State {
  const _$_State(
      {this.categories = const [], required this.name, this.selected = null});

  @JsonKey(defaultValue: const [])
  @override
  final List<CategoryGetEntity> categories;
  @override
  final String name;
  @JsonKey(defaultValue: null)
  @override
  final int? selected;

  @override
  String toString() {
    return 'RelationsState.state(categories: $categories, name: $name, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _State &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(selected);

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CategoryGetEntity> categories, String name, int? selected)
        state,
  }) {
    return state(categories, name, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CategoryGetEntity> categories, String name, int? selected)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(categories, name, selected);
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

abstract class _State implements RelationsState {
  const factory _State(
      {List<CategoryGetEntity> categories,
      required String name,
      int? selected}) = _$_State;

  @override
  List<CategoryGetEntity> get categories => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int? get selected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
