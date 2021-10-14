// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fields_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FieldsStateTearOff {
  const _$FieldsStateTearOff();

  _State state({required String name, FieldTypeEnum? type}) {
    return _State(
      name: name,
      type: type,
    );
  }
}

/// @nodoc
const $FieldsState = _$FieldsStateTearOff();

/// @nodoc
mixin _$FieldsState {
  String get name => throw _privateConstructorUsedError;
  FieldTypeEnum? get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, FieldTypeEnum? type) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, FieldTypeEnum? type)? state,
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
  $FieldsStateCopyWith<FieldsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsStateCopyWith<$Res> {
  factory $FieldsStateCopyWith(
          FieldsState value, $Res Function(FieldsState) then) =
      _$FieldsStateCopyWithImpl<$Res>;
  $Res call({String name, FieldTypeEnum? type});
}

/// @nodoc
class _$FieldsStateCopyWithImpl<$Res> implements $FieldsStateCopyWith<$Res> {
  _$FieldsStateCopyWithImpl(this._value, this._then);

  final FieldsState _value;
  // ignore: unused_field
  final $Res Function(FieldsState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FieldTypeEnum?,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $FieldsStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({String name, FieldTypeEnum? type});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$FieldsStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_State(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FieldTypeEnum?,
    ));
  }
}

/// @nodoc
class _$_State implements _State {
  const _$_State({required this.name, this.type});

  @override
  final String name;
  @override
  final FieldTypeEnum? type;

  @override
  String toString() {
    return 'FieldsState.state(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _State &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, FieldTypeEnum? type) state,
  }) {
    return state(name, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, FieldTypeEnum? type)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(name, type);
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

abstract class _State implements FieldsState {
  const factory _State({required String name, FieldTypeEnum? type}) = _$_State;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  FieldTypeEnum? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
