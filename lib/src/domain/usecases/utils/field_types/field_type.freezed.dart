// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'field_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FieldType _$FieldTypeFromJson(Map<String, dynamic> json) {
  switch (json['field_type'] as String) {
    case 'Bool':
      return BoolFieldType.fromJson(json);
    case 'Int':
      return IntFieldType.fromJson(json);
    case 'Double':
      return DoubleFieldType.fromJson(json);
    case 'String':
      return BoolFieldType.fromJson(json);
    case 'Year':
      return YearFieldType.fromJson(json);
    case 'Month':
      return MonthFieldType.fromJson(json);
    case 'Day':
      return DayFieldType.fromJson(json);
    case 'WeekDay':
      return WeekDayFieldType.fromJson(json);
    case 'Hour':
      return HourFieldType.fromJson(json);
    case 'Minute':
      return MinuteFieldType.fromJson(json);
    case 'Second':
      return SecondFieldType.fromJson(json);
    case 'Composed':
      return CategoryFieldType.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$FieldTypeTearOff {
  const _$FieldTypeTearOff();

  BoolFieldType bool({bool nulleable = false}) {
    return BoolFieldType(
      nulleable: nulleable,
    );
  }

  IntFieldType int({bool nulleable = false}) {
    return IntFieldType(
      nulleable: nulleable,
    );
  }

  DoubleFieldType double({bool nulleable = false}) {
    return DoubleFieldType(
      nulleable: nulleable,
    );
  }

  BoolFieldType string({bool nulleable = false}) {
    return BoolFieldType(
      nulleable: nulleable,
    );
  }

  YearFieldType year({bool nulleable = false}) {
    return YearFieldType(
      nulleable: nulleable,
    );
  }

  MonthFieldType month({bool nulleable = false}) {
    return MonthFieldType(
      nulleable: nulleable,
    );
  }

  DayFieldType day({bool nulleable = false}) {
    return DayFieldType(
      nulleable: nulleable,
    );
  }

  WeekDayFieldType weekDay({bool nulleable = false}) {
    return WeekDayFieldType(
      nulleable: nulleable,
    );
  }

  HourFieldType hour({bool nulleable = false}) {
    return HourFieldType(
      nulleable: nulleable,
    );
  }

  MinuteFieldType minute({bool nulleable = false}) {
    return MinuteFieldType(
      nulleable: nulleable,
    );
  }

  SecondFieldType second({bool nulleable = false}) {
    return SecondFieldType(
      nulleable: nulleable,
    );
  }

  CategoryFieldType composed(
      {bool nulleable = false,
      required String categoryName,
      @JsonKey(name: 'field_types')
          required Map<String, FieldType> fieldTypes}) {
    return CategoryFieldType(
      nulleable: nulleable,
      categoryName: categoryName,
      fieldTypes: fieldTypes,
    );
  }

  FieldType fromJson(Map<String, Object> json) {
    return FieldType.fromJson(json);
  }
}

/// @nodoc
const $FieldType = _$FieldTypeTearOff();

/// @nodoc
mixin _$FieldType {
  bool get nulleable => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldTypeCopyWith<FieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldTypeCopyWith<$Res> {
  factory $FieldTypeCopyWith(FieldType value, $Res Function(FieldType) then) =
      _$FieldTypeCopyWithImpl<$Res>;
  $Res call({bool nulleable});
}

/// @nodoc
class _$FieldTypeCopyWithImpl<$Res> implements $FieldTypeCopyWith<$Res> {
  _$FieldTypeCopyWithImpl(this._value, this._then);

  final FieldType _value;
  // ignore: unused_field
  final $Res Function(FieldType) _then;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(_value.copyWith(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $BoolFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $BoolFieldTypeCopyWith(
          BoolFieldType value, $Res Function(BoolFieldType) then) =
      _$BoolFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$BoolFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $BoolFieldTypeCopyWith<$Res> {
  _$BoolFieldTypeCopyWithImpl(
      BoolFieldType _value, $Res Function(BoolFieldType) _then)
      : super(_value, (v) => _then(v as BoolFieldType));

  @override
  BoolFieldType get _value => super._value as BoolFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(BoolFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$BoolFieldType with GetFieldTypeNameMixin implements BoolFieldType {
  _$BoolFieldType({this.nulleable = false});

  factory _$BoolFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$BoolFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.bool(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BoolFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $BoolFieldTypeCopyWith<BoolFieldType> get copyWith =>
      _$BoolFieldTypeCopyWithImpl<BoolFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return bool(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return bool(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BoolFieldTypeToJson(this)..['field_type'] = 'Bool';
  }
}

abstract class BoolFieldType implements FieldType, GetFieldTypeNameMixin {
  factory BoolFieldType({bool nulleable}) = _$BoolFieldType;

  factory BoolFieldType.fromJson(Map<String, dynamic> json) =
      _$BoolFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BoolFieldTypeCopyWith<BoolFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntFieldTypeCopyWith<$Res> implements $FieldTypeCopyWith<$Res> {
  factory $IntFieldTypeCopyWith(
          IntFieldType value, $Res Function(IntFieldType) then) =
      _$IntFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$IntFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $IntFieldTypeCopyWith<$Res> {
  _$IntFieldTypeCopyWithImpl(
      IntFieldType _value, $Res Function(IntFieldType) _then)
      : super(_value, (v) => _then(v as IntFieldType));

  @override
  IntFieldType get _value => super._value as IntFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(IntFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$IntFieldType with GetFieldTypeNameMixin implements IntFieldType {
  _$IntFieldType({this.nulleable = false});

  factory _$IntFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$IntFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.int(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IntFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $IntFieldTypeCopyWith<IntFieldType> get copyWith =>
      _$IntFieldTypeCopyWithImpl<IntFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return int(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return int(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IntFieldTypeToJson(this)..['field_type'] = 'Int';
  }
}

abstract class IntFieldType implements FieldType, GetFieldTypeNameMixin {
  factory IntFieldType({bool nulleable}) = _$IntFieldType;

  factory IntFieldType.fromJson(Map<String, dynamic> json) =
      _$IntFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $IntFieldTypeCopyWith<IntFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $DoubleFieldTypeCopyWith(
          DoubleFieldType value, $Res Function(DoubleFieldType) then) =
      _$DoubleFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$DoubleFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $DoubleFieldTypeCopyWith<$Res> {
  _$DoubleFieldTypeCopyWithImpl(
      DoubleFieldType _value, $Res Function(DoubleFieldType) _then)
      : super(_value, (v) => _then(v as DoubleFieldType));

  @override
  DoubleFieldType get _value => super._value as DoubleFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(DoubleFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$DoubleFieldType with GetFieldTypeNameMixin implements DoubleFieldType {
  _$DoubleFieldType({this.nulleable = false});

  factory _$DoubleFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$DoubleFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.double(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DoubleFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $DoubleFieldTypeCopyWith<DoubleFieldType> get copyWith =>
      _$DoubleFieldTypeCopyWithImpl<DoubleFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return double(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return double(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DoubleFieldTypeToJson(this)..['field_type'] = 'Double';
  }
}

abstract class DoubleFieldType implements FieldType, GetFieldTypeNameMixin {
  factory DoubleFieldType({bool nulleable}) = _$DoubleFieldType;

  factory DoubleFieldType.fromJson(Map<String, dynamic> json) =
      _$DoubleFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DoubleFieldTypeCopyWith<DoubleFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoolFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $BoolFieldTypeCopyWith(
          BoolFieldType value, $Res Function(BoolFieldType) then) =
      _$BoolFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$BoolFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $BoolFieldTypeCopyWith<$Res> {
  _$BoolFieldTypeCopyWithImpl(
      BoolFieldType _value, $Res Function(BoolFieldType) _then)
      : super(_value, (v) => _then(v as BoolFieldType));

  @override
  BoolFieldType get _value => super._value as BoolFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(BoolFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$BoolFieldType with GetFieldTypeNameMixin implements BoolFieldType {
  _$BoolFieldType({this.nulleable = false});

  factory _$BoolFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$BoolFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.string(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BoolFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $BoolFieldTypeCopyWith<BoolFieldType> get copyWith =>
      _$BoolFieldTypeCopyWithImpl<BoolFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return string(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BoolFieldTypeToJson(this)..['field_type'] = 'String';
  }
}

abstract class BoolFieldType implements FieldType, GetFieldTypeNameMixin {
  factory BoolFieldType({bool nulleable}) = _$BoolFieldType;

  factory BoolFieldType.fromJson(Map<String, dynamic> json) =
      _$BoolFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BoolFieldTypeCopyWith<BoolFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $YearFieldTypeCopyWith(
          YearFieldType value, $Res Function(YearFieldType) then) =
      _$YearFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$YearFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $YearFieldTypeCopyWith<$Res> {
  _$YearFieldTypeCopyWithImpl(
      YearFieldType _value, $Res Function(YearFieldType) _then)
      : super(_value, (v) => _then(v as YearFieldType));

  @override
  YearFieldType get _value => super._value as YearFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(YearFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$YearFieldType with GetFieldTypeNameMixin implements YearFieldType {
  _$YearFieldType({this.nulleable = false});

  factory _$YearFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$YearFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.year(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is YearFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $YearFieldTypeCopyWith<YearFieldType> get copyWith =>
      _$YearFieldTypeCopyWithImpl<YearFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return year(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (year != null) {
      return year(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return year(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (year != null) {
      return year(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$YearFieldTypeToJson(this)..['field_type'] = 'Year';
  }
}

abstract class YearFieldType implements FieldType, GetFieldTypeNameMixin {
  factory YearFieldType({bool nulleable}) = _$YearFieldType;

  factory YearFieldType.fromJson(Map<String, dynamic> json) =
      _$YearFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $YearFieldTypeCopyWith<YearFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $MonthFieldTypeCopyWith(
          MonthFieldType value, $Res Function(MonthFieldType) then) =
      _$MonthFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$MonthFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $MonthFieldTypeCopyWith<$Res> {
  _$MonthFieldTypeCopyWithImpl(
      MonthFieldType _value, $Res Function(MonthFieldType) _then)
      : super(_value, (v) => _then(v as MonthFieldType));

  @override
  MonthFieldType get _value => super._value as MonthFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(MonthFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$MonthFieldType with GetFieldTypeNameMixin implements MonthFieldType {
  _$MonthFieldType({this.nulleable = false});

  factory _$MonthFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$MonthFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.month(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $MonthFieldTypeCopyWith<MonthFieldType> get copyWith =>
      _$MonthFieldTypeCopyWithImpl<MonthFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return month(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (month != null) {
      return month(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return month(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (month != null) {
      return month(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MonthFieldTypeToJson(this)..['field_type'] = 'Month';
  }
}

abstract class MonthFieldType implements FieldType, GetFieldTypeNameMixin {
  factory MonthFieldType({bool nulleable}) = _$MonthFieldType;

  factory MonthFieldType.fromJson(Map<String, dynamic> json) =
      _$MonthFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MonthFieldTypeCopyWith<MonthFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayFieldTypeCopyWith<$Res> implements $FieldTypeCopyWith<$Res> {
  factory $DayFieldTypeCopyWith(
          DayFieldType value, $Res Function(DayFieldType) then) =
      _$DayFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$DayFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $DayFieldTypeCopyWith<$Res> {
  _$DayFieldTypeCopyWithImpl(
      DayFieldType _value, $Res Function(DayFieldType) _then)
      : super(_value, (v) => _then(v as DayFieldType));

  @override
  DayFieldType get _value => super._value as DayFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(DayFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$DayFieldType with GetFieldTypeNameMixin implements DayFieldType {
  _$DayFieldType({this.nulleable = false});

  factory _$DayFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$DayFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.day(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $DayFieldTypeCopyWith<DayFieldType> get copyWith =>
      _$DayFieldTypeCopyWithImpl<DayFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return day(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (day != null) {
      return day(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return day(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (day != null) {
      return day(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DayFieldTypeToJson(this)..['field_type'] = 'Day';
  }
}

abstract class DayFieldType implements FieldType, GetFieldTypeNameMixin {
  factory DayFieldType({bool nulleable}) = _$DayFieldType;

  factory DayFieldType.fromJson(Map<String, dynamic> json) =
      _$DayFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DayFieldTypeCopyWith<DayFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDayFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $WeekDayFieldTypeCopyWith(
          WeekDayFieldType value, $Res Function(WeekDayFieldType) then) =
      _$WeekDayFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$WeekDayFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $WeekDayFieldTypeCopyWith<$Res> {
  _$WeekDayFieldTypeCopyWithImpl(
      WeekDayFieldType _value, $Res Function(WeekDayFieldType) _then)
      : super(_value, (v) => _then(v as WeekDayFieldType));

  @override
  WeekDayFieldType get _value => super._value as WeekDayFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(WeekDayFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$WeekDayFieldType
    with GetFieldTypeNameMixin
    implements WeekDayFieldType {
  _$WeekDayFieldType({this.nulleable = false});

  factory _$WeekDayFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$WeekDayFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.weekDay(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeekDayFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $WeekDayFieldTypeCopyWith<WeekDayFieldType> get copyWith =>
      _$WeekDayFieldTypeCopyWithImpl<WeekDayFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return weekDay(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (weekDay != null) {
      return weekDay(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return weekDay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (weekDay != null) {
      return weekDay(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeekDayFieldTypeToJson(this)..['field_type'] = 'WeekDay';
  }
}

abstract class WeekDayFieldType implements FieldType, GetFieldTypeNameMixin {
  factory WeekDayFieldType({bool nulleable}) = _$WeekDayFieldType;

  factory WeekDayFieldType.fromJson(Map<String, dynamic> json) =
      _$WeekDayFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $WeekDayFieldTypeCopyWith<WeekDayFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $HourFieldTypeCopyWith(
          HourFieldType value, $Res Function(HourFieldType) then) =
      _$HourFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$HourFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $HourFieldTypeCopyWith<$Res> {
  _$HourFieldTypeCopyWithImpl(
      HourFieldType _value, $Res Function(HourFieldType) _then)
      : super(_value, (v) => _then(v as HourFieldType));

  @override
  HourFieldType get _value => super._value as HourFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(HourFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$HourFieldType with GetFieldTypeNameMixin implements HourFieldType {
  _$HourFieldType({this.nulleable = false});

  factory _$HourFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$HourFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.hour(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HourFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $HourFieldTypeCopyWith<HourFieldType> get copyWith =>
      _$HourFieldTypeCopyWithImpl<HourFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return hour(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (hour != null) {
      return hour(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return hour(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (hour != null) {
      return hour(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$HourFieldTypeToJson(this)..['field_type'] = 'Hour';
  }
}

abstract class HourFieldType implements FieldType, GetFieldTypeNameMixin {
  factory HourFieldType({bool nulleable}) = _$HourFieldType;

  factory HourFieldType.fromJson(Map<String, dynamic> json) =
      _$HourFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HourFieldTypeCopyWith<HourFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinuteFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $MinuteFieldTypeCopyWith(
          MinuteFieldType value, $Res Function(MinuteFieldType) then) =
      _$MinuteFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$MinuteFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $MinuteFieldTypeCopyWith<$Res> {
  _$MinuteFieldTypeCopyWithImpl(
      MinuteFieldType _value, $Res Function(MinuteFieldType) _then)
      : super(_value, (v) => _then(v as MinuteFieldType));

  @override
  MinuteFieldType get _value => super._value as MinuteFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(MinuteFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$MinuteFieldType with GetFieldTypeNameMixin implements MinuteFieldType {
  _$MinuteFieldType({this.nulleable = false});

  factory _$MinuteFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$MinuteFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.minute(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MinuteFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $MinuteFieldTypeCopyWith<MinuteFieldType> get copyWith =>
      _$MinuteFieldTypeCopyWithImpl<MinuteFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return minute(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (minute != null) {
      return minute(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return minute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (minute != null) {
      return minute(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MinuteFieldTypeToJson(this)..['field_type'] = 'Minute';
  }
}

abstract class MinuteFieldType implements FieldType, GetFieldTypeNameMixin {
  factory MinuteFieldType({bool nulleable}) = _$MinuteFieldType;

  factory MinuteFieldType.fromJson(Map<String, dynamic> json) =
      _$MinuteFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MinuteFieldTypeCopyWith<MinuteFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $SecondFieldTypeCopyWith(
          SecondFieldType value, $Res Function(SecondFieldType) then) =
      _$SecondFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call({bool nulleable});
}

/// @nodoc
class _$SecondFieldTypeCopyWithImpl<$Res> extends _$FieldTypeCopyWithImpl<$Res>
    implements $SecondFieldTypeCopyWith<$Res> {
  _$SecondFieldTypeCopyWithImpl(
      SecondFieldType _value, $Res Function(SecondFieldType) _then)
      : super(_value, (v) => _then(v as SecondFieldType));

  @override
  SecondFieldType get _value => super._value as SecondFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
  }) {
    return _then(SecondFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)

/// @nodoc
class _$SecondFieldType with GetFieldTypeNameMixin implements SecondFieldType {
  _$SecondFieldType({this.nulleable = false});

  factory _$SecondFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$SecondFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;

  @override
  String toString() {
    return 'FieldType.second(nulleable: $nulleable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecondFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nulleable);

  @JsonKey(ignore: true)
  @override
  $SecondFieldTypeCopyWith<SecondFieldType> get copyWith =>
      _$SecondFieldTypeCopyWithImpl<SecondFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return second(nulleable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(nulleable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SecondFieldTypeToJson(this)..['field_type'] = 'Second';
  }
}

abstract class SecondFieldType implements FieldType, GetFieldTypeNameMixin {
  factory SecondFieldType({bool nulleable}) = _$SecondFieldType;

  factory SecondFieldType.fromJson(Map<String, dynamic> json) =
      _$SecondFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SecondFieldTypeCopyWith<SecondFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFieldTypeCopyWith<$Res>
    implements $FieldTypeCopyWith<$Res> {
  factory $CategoryFieldTypeCopyWith(
          CategoryFieldType value, $Res Function(CategoryFieldType) then) =
      _$CategoryFieldTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool nulleable,
      String categoryName,
      @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes});
}

/// @nodoc
class _$CategoryFieldTypeCopyWithImpl<$Res>
    extends _$FieldTypeCopyWithImpl<$Res>
    implements $CategoryFieldTypeCopyWith<$Res> {
  _$CategoryFieldTypeCopyWithImpl(
      CategoryFieldType _value, $Res Function(CategoryFieldType) _then)
      : super(_value, (v) => _then(v as CategoryFieldType));

  @override
  CategoryFieldType get _value => super._value as CategoryFieldType;

  @override
  $Res call({
    Object? nulleable = freezed,
    Object? categoryName = freezed,
    Object? fieldTypes = freezed,
  }) {
    return _then(CategoryFieldType(
      nulleable: nulleable == freezed
          ? _value.nulleable
          : nulleable // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      fieldTypes: fieldTypes == freezed
          ? _value.fieldTypes
          : fieldTypes // ignore: cast_nullable_to_non_nullable
              as Map<String, FieldType>,
    ));
  }
}

@JsonSerializable()
@With(GetFieldTypeNameMixin)
@Implements(ICategoryFieldType)

/// @nodoc
class _$CategoryFieldType
    with GetFieldTypeNameMixin
    implements CategoryFieldType {
  _$CategoryFieldType(
      {this.nulleable = false,
      required this.categoryName,
      @JsonKey(name: 'field_types') required this.fieldTypes});

  factory _$CategoryFieldType.fromJson(Map<String, dynamic> json) =>
      _$_$CategoryFieldTypeFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool nulleable;
  @override
  final String categoryName;
  @override
  @JsonKey(name: 'field_types')
  final Map<String, FieldType> fieldTypes;

  @override
  String toString() {
    return 'FieldType.composed(nulleable: $nulleable, categoryName: $categoryName, fieldTypes: $fieldTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryFieldType &&
            (identical(other.nulleable, nulleable) ||
                const DeepCollectionEquality()
                    .equals(other.nulleable, nulleable)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.fieldTypes, fieldTypes) ||
                const DeepCollectionEquality()
                    .equals(other.fieldTypes, fieldTypes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nulleable) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(fieldTypes);

  @JsonKey(ignore: true)
  @override
  $CategoryFieldTypeCopyWith<CategoryFieldType> get copyWith =>
      _$CategoryFieldTypeCopyWithImpl<CategoryFieldType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool nulleable) bool,
    required TResult Function(bool nulleable) int,
    required TResult Function(bool nulleable) double,
    required TResult Function(bool nulleable) string,
    required TResult Function(bool nulleable) year,
    required TResult Function(bool nulleable) month,
    required TResult Function(bool nulleable) day,
    required TResult Function(bool nulleable) weekDay,
    required TResult Function(bool nulleable) hour,
    required TResult Function(bool nulleable) minute,
    required TResult Function(bool nulleable) second,
    required TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)
        composed,
  }) {
    return composed(nulleable, categoryName, fieldTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool nulleable)? bool,
    TResult Function(bool nulleable)? int,
    TResult Function(bool nulleable)? double,
    TResult Function(bool nulleable)? string,
    TResult Function(bool nulleable)? year,
    TResult Function(bool nulleable)? month,
    TResult Function(bool nulleable)? day,
    TResult Function(bool nulleable)? weekDay,
    TResult Function(bool nulleable)? hour,
    TResult Function(bool nulleable)? minute,
    TResult Function(bool nulleable)? second,
    TResult Function(bool nulleable, String categoryName,
            @JsonKey(name: 'field_types') Map<String, FieldType> fieldTypes)?
        composed,
    required TResult orElse(),
  }) {
    if (composed != null) {
      return composed(nulleable, categoryName, fieldTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoolFieldType value) bool,
    required TResult Function(IntFieldType value) int,
    required TResult Function(DoubleFieldType value) double,
    required TResult Function(BoolFieldType value) string,
    required TResult Function(YearFieldType value) year,
    required TResult Function(MonthFieldType value) month,
    required TResult Function(DayFieldType value) day,
    required TResult Function(WeekDayFieldType value) weekDay,
    required TResult Function(HourFieldType value) hour,
    required TResult Function(MinuteFieldType value) minute,
    required TResult Function(SecondFieldType value) second,
    required TResult Function(CategoryFieldType value) composed,
  }) {
    return composed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoolFieldType value)? bool,
    TResult Function(IntFieldType value)? int,
    TResult Function(DoubleFieldType value)? double,
    TResult Function(BoolFieldType value)? string,
    TResult Function(YearFieldType value)? year,
    TResult Function(MonthFieldType value)? month,
    TResult Function(DayFieldType value)? day,
    TResult Function(WeekDayFieldType value)? weekDay,
    TResult Function(HourFieldType value)? hour,
    TResult Function(MinuteFieldType value)? minute,
    TResult Function(SecondFieldType value)? second,
    TResult Function(CategoryFieldType value)? composed,
    required TResult orElse(),
  }) {
    if (composed != null) {
      return composed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CategoryFieldTypeToJson(this)..['field_type'] = 'Composed';
  }
}

abstract class CategoryFieldType
    implements FieldType, ICategoryFieldType, GetFieldTypeNameMixin {
  factory CategoryFieldType(
      {bool nulleable,
      required String categoryName,
      @JsonKey(name: 'field_types')
          required Map<String, FieldType> fieldTypes}) = _$CategoryFieldType;

  factory CategoryFieldType.fromJson(Map<String, dynamic> json) =
      _$CategoryFieldType.fromJson;

  @override
  bool get nulleable => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_types')
  Map<String, FieldType> get fieldTypes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CategoryFieldTypeCopyWith<CategoryFieldType> get copyWith =>
      throw _privateConstructorUsedError;
}
