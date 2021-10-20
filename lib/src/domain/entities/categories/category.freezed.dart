// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryEntityTearOff {
  const _$CategoryEntityTearOff();

  CategoryMinimalEntity minimal({required int id, required String name}) {
    return CategoryMinimalEntity(
      id: id,
      name: name,
    );
  }

  CategoryGetEntity get(
      {required int id,
      required String name,
      Color? color,
      required Map<String, FieldTypeEnum> fields,
      required Map<String, CategoryMinimalEntity> relations}) {
    return CategoryGetEntity(
      id: id,
      name: name,
      color: color,
      fields: fields,
      relations: relations,
    );
  }

  CategoryPostEntity post(
      {required String name,
      Color? color,
      required Map<String, FieldTypeEnum> fields,
      required Map<String, int> relations}) {
    return CategoryPostEntity(
      name: name,
      color: color,
      fields: fields,
      relations: relations,
    );
  }
}

/// @nodoc
const $CategoryEntity = _$CategoryEntityTearOff();

/// @nodoc
mixin _$CategoryEntity {
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name) minimal,
    required TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)
        get,
    required TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)
        post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name)? minimal,
    TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)?
        get,
    TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)?
        post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryMinimalEntity value) minimal,
    required TResult Function(CategoryGetEntity value) get,
    required TResult Function(CategoryPostEntity value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryMinimalEntity value)? minimal,
    TResult Function(CategoryGetEntity value)? get,
    TResult Function(CategoryPostEntity value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  final CategoryEntity _value;
  // ignore: unused_field
  final $Res Function(CategoryEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $CategoryMinimalEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory $CategoryMinimalEntityCopyWith(CategoryMinimalEntity value,
          $Res Function(CategoryMinimalEntity) then) =
      _$CategoryMinimalEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryMinimalEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryMinimalEntityCopyWith<$Res> {
  _$CategoryMinimalEntityCopyWithImpl(
      CategoryMinimalEntity _value, $Res Function(CategoryMinimalEntity) _then)
      : super(_value, (v) => _then(v as CategoryMinimalEntity));

  @override
  CategoryMinimalEntity get _value => super._value as CategoryMinimalEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(CategoryMinimalEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$CategoryMinimalEntity implements CategoryMinimalEntity {
  const _$CategoryMinimalEntity({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryEntity.minimal(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryMinimalEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $CategoryMinimalEntityCopyWith<CategoryMinimalEntity> get copyWith =>
      _$CategoryMinimalEntityCopyWithImpl<CategoryMinimalEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name) minimal,
    required TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)
        get,
    required TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)
        post,
  }) {
    return minimal(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name)? minimal,
    TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)?
        get,
    TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)?
        post,
    required TResult orElse(),
  }) {
    if (minimal != null) {
      return minimal(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryMinimalEntity value) minimal,
    required TResult Function(CategoryGetEntity value) get,
    required TResult Function(CategoryPostEntity value) post,
  }) {
    return minimal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryMinimalEntity value)? minimal,
    TResult Function(CategoryGetEntity value)? get,
    TResult Function(CategoryPostEntity value)? post,
    required TResult orElse(),
  }) {
    if (minimal != null) {
      return minimal(this);
    }
    return orElse();
  }
}

abstract class CategoryMinimalEntity implements CategoryEntity {
  const factory CategoryMinimalEntity({required int id, required String name}) =
      _$CategoryMinimalEntity;

  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoryMinimalEntityCopyWith<CategoryMinimalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryGetEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory $CategoryGetEntityCopyWith(
          CategoryGetEntity value, $Res Function(CategoryGetEntity) then) =
      _$CategoryGetEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      Color? color,
      Map<String, FieldTypeEnum> fields,
      Map<String, CategoryMinimalEntity> relations});
}

/// @nodoc
class _$CategoryGetEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryGetEntityCopyWith<$Res> {
  _$CategoryGetEntityCopyWithImpl(
      CategoryGetEntity _value, $Res Function(CategoryGetEntity) _then)
      : super(_value, (v) => _then(v as CategoryGetEntity));

  @override
  CategoryGetEntity get _value => super._value as CategoryGetEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? fields = freezed,
    Object? relations = freezed,
  }) {
    return _then(CategoryGetEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldTypeEnum>,
      relations: relations == freezed
          ? _value.relations
          : relations // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryMinimalEntity>,
    ));
  }
}

/// @nodoc
class _$CategoryGetEntity implements CategoryGetEntity {
  const _$CategoryGetEntity(
      {required this.id,
      required this.name,
      this.color,
      required this.fields,
      required this.relations});

  @override
  final int id;
  @override
  final String name;
  @override
  final Color? color;
  @override // "name": FieldType
  final Map<String, FieldTypeEnum> fields;
  @override // "name": "CategoryId"
  final Map<String, CategoryMinimalEntity> relations;

  @override
  String toString() {
    return 'CategoryEntity.get(id: $id, name: $name, color: $color, fields: $fields, relations: $relations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryGetEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.relations, relations) ||
                const DeepCollectionEquality()
                    .equals(other.relations, relations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(relations);

  @JsonKey(ignore: true)
  @override
  $CategoryGetEntityCopyWith<CategoryGetEntity> get copyWith =>
      _$CategoryGetEntityCopyWithImpl<CategoryGetEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name) minimal,
    required TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)
        get,
    required TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)
        post,
  }) {
    return get(id, name, color, fields, relations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name)? minimal,
    TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)?
        get,
    TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)?
        post,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id, name, color, fields, relations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryMinimalEntity value) minimal,
    required TResult Function(CategoryGetEntity value) get,
    required TResult Function(CategoryPostEntity value) post,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryMinimalEntity value)? minimal,
    TResult Function(CategoryGetEntity value)? get,
    TResult Function(CategoryPostEntity value)? post,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class CategoryGetEntity implements CategoryEntity {
  const factory CategoryGetEntity(
          {required int id,
          required String name,
          Color? color,
          required Map<String, FieldTypeEnum> fields,
          required Map<String, CategoryMinimalEntity> relations}) =
      _$CategoryGetEntity;

  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError; // "name": FieldType
  Map<String, FieldTypeEnum> get fields =>
      throw _privateConstructorUsedError; // "name": "CategoryId"
  Map<String, CategoryMinimalEntity> get relations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoryGetEntityCopyWith<CategoryGetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPostEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory $CategoryPostEntityCopyWith(
          CategoryPostEntity value, $Res Function(CategoryPostEntity) then) =
      _$CategoryPostEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      Color? color,
      Map<String, FieldTypeEnum> fields,
      Map<String, int> relations});
}

/// @nodoc
class _$CategoryPostEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryPostEntityCopyWith<$Res> {
  _$CategoryPostEntityCopyWithImpl(
      CategoryPostEntity _value, $Res Function(CategoryPostEntity) _then)
      : super(_value, (v) => _then(v as CategoryPostEntity));

  @override
  CategoryPostEntity get _value => super._value as CategoryPostEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? fields = freezed,
    Object? relations = freezed,
  }) {
    return _then(CategoryPostEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldTypeEnum>,
      relations: relations == freezed
          ? _value.relations
          : relations // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
class _$CategoryPostEntity implements CategoryPostEntity {
  const _$CategoryPostEntity(
      {required this.name,
      this.color,
      required this.fields,
      required this.relations});

  @override
  final String name;
  @override
  final Color? color;
  @override // "name": FieldType
  final Map<String, FieldTypeEnum> fields;
  @override // "name": "CategoryId"
  final Map<String, int> relations;

  @override
  String toString() {
    return 'CategoryEntity.post(name: $name, color: $color, fields: $fields, relations: $relations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryPostEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.relations, relations) ||
                const DeepCollectionEquality()
                    .equals(other.relations, relations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(relations);

  @JsonKey(ignore: true)
  @override
  $CategoryPostEntityCopyWith<CategoryPostEntity> get copyWith =>
      _$CategoryPostEntityCopyWithImpl<CategoryPostEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name) minimal,
    required TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)
        get,
    required TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)
        post,
  }) {
    return post(name, color, fields, relations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name)? minimal,
    TResult Function(
            int id,
            String name,
            Color? color,
            Map<String, FieldTypeEnum> fields,
            Map<String, CategoryMinimalEntity> relations)?
        get,
    TResult Function(String name, Color? color,
            Map<String, FieldTypeEnum> fields, Map<String, int> relations)?
        post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(name, color, fields, relations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryMinimalEntity value) minimal,
    required TResult Function(CategoryGetEntity value) get,
    required TResult Function(CategoryPostEntity value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryMinimalEntity value)? minimal,
    TResult Function(CategoryGetEntity value)? get,
    TResult Function(CategoryPostEntity value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class CategoryPostEntity implements CategoryEntity {
  const factory CategoryPostEntity(
      {required String name,
      Color? color,
      required Map<String, FieldTypeEnum> fields,
      required Map<String, int> relations}) = _$CategoryPostEntity;

  @override
  String get name => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError; // "name": FieldType
  Map<String, FieldTypeEnum> get fields =>
      throw _privateConstructorUsedError; // "name": "CategoryId"
  Map<String, int> get relations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoryPostEntityCopyWith<CategoryPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
