// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geodata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeoDataEntityTearOff {
  const _$GeoDataEntityTearOff();

  GeoDataGetEntity get(
      {required int id,
      required CategoryEntity category,
      Color? color,
      required LatLng location,
      required Map<String, FieldValueEntity> fields,
      required Map<String, GeoDataEntity?> realtions}) {
    return GeoDataGetEntity(
      id: id,
      category: category,
      color: color,
      location: location,
      fields: fields,
      realtions: realtions,
    );
  }

  GeoDataPostEntity post(
      {required int categoryId,
      required LatLng location,
      required Map<String, FieldValueEntity> fields,
      required Map<String, String?> realtions}) {
    return GeoDataPostEntity(
      categoryId: categoryId,
      location: location,
      fields: fields,
      realtions: realtions,
    );
  }

  GeoDataPutEntity put(
      {required int id,
      required int categoryId,
      required LatLng location,
      required Map<String, FieldValueEntity> fields,
      required Map<String, String?> realtions}) {
    return GeoDataPutEntity(
      id: id,
      categoryId: categoryId,
      location: location,
      fields: fields,
      realtions: realtions,
    );
  }
}

/// @nodoc
const $GeoDataEntity = _$GeoDataEntityTearOff();

/// @nodoc
mixin _$GeoDataEntity {
  LatLng get location => throw _privateConstructorUsedError;
  Map<String, FieldValueEntity> get fields =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)
        get,
    required TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        post,
    required TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        put,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)?
        get,
    TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        post,
    TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        put,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoDataGetEntity value) get,
    required TResult Function(GeoDataPostEntity value) post,
    required TResult Function(GeoDataPutEntity value) put,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoDataGetEntity value)? get,
    TResult Function(GeoDataPostEntity value)? post,
    TResult Function(GeoDataPutEntity value)? put,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoDataEntityCopyWith<GeoDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDataEntityCopyWith<$Res> {
  factory $GeoDataEntityCopyWith(
          GeoDataEntity value, $Res Function(GeoDataEntity) then) =
      _$GeoDataEntityCopyWithImpl<$Res>;
  $Res call({LatLng location, Map<String, FieldValueEntity> fields});
}

/// @nodoc
class _$GeoDataEntityCopyWithImpl<$Res>
    implements $GeoDataEntityCopyWith<$Res> {
  _$GeoDataEntityCopyWithImpl(this._value, this._then);

  final GeoDataEntity _value;
  // ignore: unused_field
  final $Res Function(GeoDataEntity) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldValueEntity>,
    ));
  }
}

/// @nodoc
abstract class $GeoDataGetEntityCopyWith<$Res>
    implements $GeoDataEntityCopyWith<$Res> {
  factory $GeoDataGetEntityCopyWith(
          GeoDataGetEntity value, $Res Function(GeoDataGetEntity) then) =
      _$GeoDataGetEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      CategoryEntity category,
      Color? color,
      LatLng location,
      Map<String, FieldValueEntity> fields,
      Map<String, GeoDataEntity?> realtions});

  $CategoryEntityCopyWith<$Res> get category;
}

/// @nodoc
class _$GeoDataGetEntityCopyWithImpl<$Res>
    extends _$GeoDataEntityCopyWithImpl<$Res>
    implements $GeoDataGetEntityCopyWith<$Res> {
  _$GeoDataGetEntityCopyWithImpl(
      GeoDataGetEntity _value, $Res Function(GeoDataGetEntity) _then)
      : super(_value, (v) => _then(v as GeoDataGetEntity));

  @override
  GeoDataGetEntity get _value => super._value as GeoDataGetEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? location = freezed,
    Object? fields = freezed,
    Object? realtions = freezed,
  }) {
    return _then(GeoDataGetEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldValueEntity>,
      realtions: realtions == freezed
          ? _value.realtions
          : realtions // ignore: cast_nullable_to_non_nullable
              as Map<String, GeoDataEntity?>,
    ));
  }

  @override
  $CategoryEntityCopyWith<$Res> get category {
    return $CategoryEntityCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

@Implements(IMarkable)

/// @nodoc
class _$GeoDataGetEntity implements GeoDataGetEntity {
  const _$GeoDataGetEntity(
      {required this.id,
      required this.category,
      this.color,
      required this.location,
      required this.fields,
      required this.realtions});

  @override
  final int id;
  @override
  final CategoryEntity category;
  @override
  final Color? color;
  @override
  final LatLng location;
  @override
  final Map<String, FieldValueEntity> fields;
  @override
  final Map<String, GeoDataEntity?> realtions;

  @override
  String toString() {
    return 'GeoDataEntity.get(id: $id, category: $category, color: $color, location: $location, fields: $fields, realtions: $realtions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoDataGetEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.realtions, realtions) ||
                const DeepCollectionEquality()
                    .equals(other.realtions, realtions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(realtions);

  @JsonKey(ignore: true)
  @override
  $GeoDataGetEntityCopyWith<GeoDataGetEntity> get copyWith =>
      _$GeoDataGetEntityCopyWithImpl<GeoDataGetEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)
        get,
    required TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        post,
    required TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        put,
  }) {
    return get(id, category, color, location, fields, realtions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)?
        get,
    TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        post,
    TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        put,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id, category, color, location, fields, realtions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoDataGetEntity value) get,
    required TResult Function(GeoDataPostEntity value) post,
    required TResult Function(GeoDataPutEntity value) put,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoDataGetEntity value)? get,
    TResult Function(GeoDataPostEntity value)? post,
    TResult Function(GeoDataPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GeoDataGetEntity implements GeoDataEntity, IMarkable {
  const factory GeoDataGetEntity(
      {required int id,
      required CategoryEntity category,
      Color? color,
      required LatLng location,
      required Map<String, FieldValueEntity> fields,
      required Map<String, GeoDataEntity?> realtions}) = _$GeoDataGetEntity;

  int get id => throw _privateConstructorUsedError;
  CategoryEntity get category => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  @override
  LatLng get location => throw _privateConstructorUsedError;
  @override
  Map<String, FieldValueEntity> get fields =>
      throw _privateConstructorUsedError;
  Map<String, GeoDataEntity?> get realtions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoDataGetEntityCopyWith<GeoDataGetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDataPostEntityCopyWith<$Res>
    implements $GeoDataEntityCopyWith<$Res> {
  factory $GeoDataPostEntityCopyWith(
          GeoDataPostEntity value, $Res Function(GeoDataPostEntity) then) =
      _$GeoDataPostEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int categoryId,
      LatLng location,
      Map<String, FieldValueEntity> fields,
      Map<String, String?> realtions});
}

/// @nodoc
class _$GeoDataPostEntityCopyWithImpl<$Res>
    extends _$GeoDataEntityCopyWithImpl<$Res>
    implements $GeoDataPostEntityCopyWith<$Res> {
  _$GeoDataPostEntityCopyWithImpl(
      GeoDataPostEntity _value, $Res Function(GeoDataPostEntity) _then)
      : super(_value, (v) => _then(v as GeoDataPostEntity));

  @override
  GeoDataPostEntity get _value => super._value as GeoDataPostEntity;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? location = freezed,
    Object? fields = freezed,
    Object? realtions = freezed,
  }) {
    return _then(GeoDataPostEntity(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldValueEntity>,
      realtions: realtions == freezed
          ? _value.realtions
          : realtions // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
class _$GeoDataPostEntity implements GeoDataPostEntity {
  const _$GeoDataPostEntity(
      {required this.categoryId,
      required this.location,
      required this.fields,
      required this.realtions});

  @override
  final int categoryId;
  @override
  final LatLng location;
  @override
  final Map<String, FieldValueEntity> fields;
  @override
  final Map<String, String?> realtions;

  @override
  String toString() {
    return 'GeoDataEntity.post(categoryId: $categoryId, location: $location, fields: $fields, realtions: $realtions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoDataPostEntity &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.realtions, realtions) ||
                const DeepCollectionEquality()
                    .equals(other.realtions, realtions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(realtions);

  @JsonKey(ignore: true)
  @override
  $GeoDataPostEntityCopyWith<GeoDataPostEntity> get copyWith =>
      _$GeoDataPostEntityCopyWithImpl<GeoDataPostEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)
        get,
    required TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        post,
    required TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        put,
  }) {
    return post(categoryId, location, fields, realtions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)?
        get,
    TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        post,
    TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        put,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(categoryId, location, fields, realtions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoDataGetEntity value) get,
    required TResult Function(GeoDataPostEntity value) post,
    required TResult Function(GeoDataPutEntity value) put,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoDataGetEntity value)? get,
    TResult Function(GeoDataPostEntity value)? post,
    TResult Function(GeoDataPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class GeoDataPostEntity implements GeoDataEntity {
  const factory GeoDataPostEntity(
      {required int categoryId,
      required LatLng location,
      required Map<String, FieldValueEntity> fields,
      required Map<String, String?> realtions}) = _$GeoDataPostEntity;

  int get categoryId => throw _privateConstructorUsedError;
  @override
  LatLng get location => throw _privateConstructorUsedError;
  @override
  Map<String, FieldValueEntity> get fields =>
      throw _privateConstructorUsedError;
  Map<String, String?> get realtions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoDataPostEntityCopyWith<GeoDataPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDataPutEntityCopyWith<$Res>
    implements $GeoDataEntityCopyWith<$Res> {
  factory $GeoDataPutEntityCopyWith(
          GeoDataPutEntity value, $Res Function(GeoDataPutEntity) then) =
      _$GeoDataPutEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int categoryId,
      LatLng location,
      Map<String, FieldValueEntity> fields,
      Map<String, String?> realtions});
}

/// @nodoc
class _$GeoDataPutEntityCopyWithImpl<$Res>
    extends _$GeoDataEntityCopyWithImpl<$Res>
    implements $GeoDataPutEntityCopyWith<$Res> {
  _$GeoDataPutEntityCopyWithImpl(
      GeoDataPutEntity _value, $Res Function(GeoDataPutEntity) _then)
      : super(_value, (v) => _then(v as GeoDataPutEntity));

  @override
  GeoDataPutEntity get _value => super._value as GeoDataPutEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? location = freezed,
    Object? fields = freezed,
    Object? realtions = freezed,
  }) {
    return _then(GeoDataPutEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldValueEntity>,
      realtions: realtions == freezed
          ? _value.realtions
          : realtions // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
class _$GeoDataPutEntity implements GeoDataPutEntity {
  const _$GeoDataPutEntity(
      {required this.id,
      required this.categoryId,
      required this.location,
      required this.fields,
      required this.realtions});

  @override
  final int id;
  @override
  final int categoryId;
  @override
  final LatLng location;
  @override
  final Map<String, FieldValueEntity> fields;
  @override
  final Map<String, String?> realtions;

  @override
  String toString() {
    return 'GeoDataEntity.put(id: $id, categoryId: $categoryId, location: $location, fields: $fields, realtions: $realtions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoDataPutEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.fields, fields) ||
                const DeepCollectionEquality().equals(other.fields, fields)) &&
            (identical(other.realtions, realtions) ||
                const DeepCollectionEquality()
                    .equals(other.realtions, realtions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(fields) ^
      const DeepCollectionEquality().hash(realtions);

  @JsonKey(ignore: true)
  @override
  $GeoDataPutEntityCopyWith<GeoDataPutEntity> get copyWith =>
      _$GeoDataPutEntityCopyWithImpl<GeoDataPutEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)
        get,
    required TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        post,
    required TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)
        put,
  }) {
    return put(id, categoryId, location, fields, realtions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            CategoryEntity category,
            Color? color,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, GeoDataEntity?> realtions)?
        get,
    TResult Function(
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        post,
    TResult Function(
            int id,
            int categoryId,
            LatLng location,
            Map<String, FieldValueEntity> fields,
            Map<String, String?> realtions)?
        put,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(id, categoryId, location, fields, realtions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoDataGetEntity value) get,
    required TResult Function(GeoDataPostEntity value) post,
    required TResult Function(GeoDataPutEntity value) put,
  }) {
    return put(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoDataGetEntity value)? get,
    TResult Function(GeoDataPostEntity value)? post,
    TResult Function(GeoDataPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(this);
    }
    return orElse();
  }
}

abstract class GeoDataPutEntity implements GeoDataEntity {
  const factory GeoDataPutEntity(
      {required int id,
      required int categoryId,
      required LatLng location,
      required Map<String, FieldValueEntity> fields,
      required Map<String, String?> realtions}) = _$GeoDataPutEntity;

  int get id => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  @override
  LatLng get location => throw _privateConstructorUsedError;
  @override
  Map<String, FieldValueEntity> get fields =>
      throw _privateConstructorUsedError;
  Map<String, String?> get realtions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GeoDataPutEntityCopyWith<GeoDataPutEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
