import 'package:freezed_annotation/freezed_annotation.dart';

import 'composed_field_type.dart';
import 'i_get_field_type_name.dart';

part 'field_type.freezed.dart';
part 'field_type.g.dart';

@Freezed(unionKey: 'field_type', unionValueCase: FreezedUnionCase.pascal)
class FieldType with _$FieldType, GetFieldTypeNameMixin {
  // built-in
  @With(GetFieldTypeNameMixin)
  factory FieldType.tbool({@Default(false) bool nulleable}) = BoolFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.tint({@Default(false) bool nulleable}) = IntFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.tdouble({@Default(false) bool nulleable}) = DoubleFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.tstring({@Default(false) bool nulleable}) = StringFieldType;

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

  // composed
  @With(GetComposedTypeNameMixin)
  @Implements(IComposedFieldType)
  factory FieldType.composed({
    @Default(false) bool nulleable,
    required String composedTypeName,
    @JsonKey(name: 'field_types') required Map<String, FieldType> fieldTypes,
  }) = ComposedFieldType;

  // datetime (composed)
  factory FieldType.date({bool nulleable = false}) => FieldType.composed(
        composedTypeName: 'date',
        fieldTypes: {
          'year': FieldType.year(),
          'month': FieldType.month(),
          'day': FieldType.day(),
          'week_day': FieldType.weekDay(nulleable: true),
        },
        nulleable: nulleable,
      );

  factory FieldType.time({bool nulleable = false}) => FieldType.composed(
        composedTypeName: 'time',
        fieldTypes: {
          'hours': FieldType.hour(),
          'minutes': FieldType.minute(),
          'seconds': FieldType.second(),
        },
        nulleable: nulleable,
      );

  factory FieldType.datetime({bool nulleable = false}) => FieldType.composed(
        composedTypeName: 'datetime',
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
          {bool nulleable = false, required String composedTypeName}) =>
      FieldType.composed(
        composedTypeName: 'file.$composedTypeName',
        fieldTypes: {
          'remote_path': FieldType.tstring(nulleable: true),
          'local_path': FieldType.tstring(nulleable: true)
        },
        nulleable: nulleable,
      );

  factory FieldType.photo({bool nulleable = false}) =>
      FieldType.media(composedTypeName: 'photo', nulleable: nulleable);

  factory FieldType.video({bool nulleable = false}) =>
      FieldType.media(composedTypeName: 'video', nulleable: nulleable);

  factory FieldType.audio({bool nulleable = false}) =>
      FieldType.media(composedTypeName: 'audio', nulleable: nulleable);

  // de/serialization area
  factory FieldType.fromJson(Map<String, dynamic> json) =>
      _$FieldTypeFromJson(json);
}
