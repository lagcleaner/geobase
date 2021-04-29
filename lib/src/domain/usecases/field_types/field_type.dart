import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_field_type.dart';
import 'get_field_type_name.dart';

part 'field_type.freezed.dart';
part 'field_type.g.dart';

@Freezed(unionKey: 'field_type', unionValueCase: FreezedUnionCase.pascal)
abstract class FieldType with _$FieldType, GetFieldTypeNameMixin {
  // built-in
  @With(GetFieldTypeNameMixin)
  factory FieldType.bool({@Default(false) bool nulleable}) = BoolFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.int({@Default(false) bool nulleable}) = IntFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.double({@Default(false) bool nulleable}) = DoubleFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.string({@Default(false) bool nulleable}) = BoolFieldType;

  // datetime (Unitaries, needed to build UI)
  @With(GetFieldTypeNameMixin)
  factory FieldType.year({@Default(false) bool nulleable}) = YearFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.month({@Default(false) bool nulleable}) = MonthFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.day({@Default(false) bool nulleable}) = DayFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.weekDay({@Default(false) bool nulleable}) =
      WeekDayFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.hour({@Default(false) bool nulleable}) = HourFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.minute({@Default(false) bool nulleable}) = MinuteFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.second({@Default(false) bool nulleable}) = SecondFieldType;

  // composed - category
  @With(GetFieldTypeNameMixin)
  @Implements(ICategoryFieldType)
  factory FieldType.category({
    @Default(false) bool nulleable,
    required String categoryName,
    @JsonKey(name: 'field_types') required Map<String, FieldType> fieldTypes,
  }) = CategoryFieldType;

  // location (latitude, longitude)
  @With(GetFieldTypeNameMixin)
  factory FieldType.latlong({bool nulleable = false}) => FieldType.category(
        categoryName: 'latlong',
        fieldTypes: {
          'latitud': FieldType.double(),
          'longitud': FieldType.double(),
        },
        nulleable: nulleable,
      );

  // datetime (composed)
  factory FieldType.date({bool nulleable = false}) => FieldType.category(
        categoryName: 'date',
        fieldTypes: {
          'year': FieldType.year(),
          'month': FieldType.month(),
          'day': FieldType.day(),
          'week_day': FieldType.weekDay(nulleable: true),
        },
        nulleable: nulleable,
      );

  factory FieldType.time({bool nulleable = false}) => FieldType.category(
        categoryName: 'time',
        fieldTypes: {
          'hours': FieldType.hour(),
          'minutes': FieldType.minute(),
          'seconds': FieldType.second(),
        },
        nulleable: nulleable,
      );

  factory FieldType.datetime({bool nulleable = false}) => FieldType.category(
        categoryName: 'datetime',
        fieldTypes: {
          'year': FieldType.year(),
          'month': FieldType.month(),
          'day': FieldType.day(),
          'week_day': FieldType.weekDay(nulleable: true),
          'hour': FieldType.hour(),
          'minute': FieldType.minute(),
          'second': FieldType.second(),
        },
        nulleable: nulleable,
      );

  // media
  factory FieldType.media(
          {bool nulleable = false, String categoryName = 'file'}) =>
      FieldType.category(
        categoryName: categoryName,
        fieldTypes: {
          'remote_path': FieldType.string(nulleable: true),
          'local_path': FieldType.string(nulleable: true)
        },
        nulleable: nulleable,
      );

  factory FieldType.photo({bool nulleable = false}) =>
      FieldType.media(categoryName: 'photo', nulleable: nulleable);

  factory FieldType.video({bool nulleable = false}) =>
      FieldType.media(categoryName: 'video', nulleable: nulleable);

  factory FieldType.audio({bool nulleable = false}) =>
      FieldType.media(categoryName: 'audio', nulleable: nulleable);

  // de/serialization area
  factory FieldType.fromJson(Map<String, dynamic> json) =>
      _$FieldTypeFromJson(json);
}
