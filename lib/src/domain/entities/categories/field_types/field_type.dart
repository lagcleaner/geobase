import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/entities/categories/field_types/i_get_field_type_name.dart';

export 'i_get_field_type_name.dart';

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
  @With(GetFieldTypeNameMixin)
  factory FieldType.date({@Default(false) bool nulleable}) = DateFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.time({@Default(false) bool nulleable}) = TimeFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.datetime({@Default(false) bool nulleable}) =
      DateTimeFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.localPhoto({@Default(false) bool nulleable}) =
      LocalPhotoFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.localFile({@Default(false) bool nulleable}) =
      LocalFileFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.localAudio({@Default(false) bool nulleable}) =
      LocalAudioFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.remotePhoto({@Default(false) bool nulleable}) =
      RemotePhotoFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.remoteFile({@Default(false) bool nulleable}) =
      RemoteFileFieldType;
  @With(GetFieldTypeNameMixin)
  factory FieldType.remoteAudio({@Default(false) bool nulleable}) =
      RemoteAudioFieldType;

  // de/serialization area
  factory FieldType.fromJson(Map<String, dynamic> json) =>
      _$FieldTypeFromJson(json);
}
