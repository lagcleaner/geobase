// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoolFieldType _$_$BoolFieldTypeFromJson(Map<String, dynamic> json) {
  return _$BoolFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$BoolFieldTypeToJson(_$BoolFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$IntFieldType _$_$IntFieldTypeFromJson(Map<String, dynamic> json) {
  return _$IntFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$IntFieldTypeToJson(_$IntFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$DoubleFieldType _$_$DoubleFieldTypeFromJson(Map<String, dynamic> json) {
  return _$DoubleFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$DoubleFieldTypeToJson(_$DoubleFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$YearFieldType _$_$YearFieldTypeFromJson(Map<String, dynamic> json) {
  return _$YearFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$YearFieldTypeToJson(_$YearFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$MonthFieldType _$_$MonthFieldTypeFromJson(Map<String, dynamic> json) {
  return _$MonthFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$MonthFieldTypeToJson(_$MonthFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$DayFieldType _$_$DayFieldTypeFromJson(Map<String, dynamic> json) {
  return _$DayFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$DayFieldTypeToJson(_$DayFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$WeekDayFieldType _$_$WeekDayFieldTypeFromJson(Map<String, dynamic> json) {
  return _$WeekDayFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$WeekDayFieldTypeToJson(_$WeekDayFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$HourFieldType _$_$HourFieldTypeFromJson(Map<String, dynamic> json) {
  return _$HourFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$HourFieldTypeToJson(_$HourFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$MinuteFieldType _$_$MinuteFieldTypeFromJson(Map<String, dynamic> json) {
  return _$MinuteFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$MinuteFieldTypeToJson(_$MinuteFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$SecondFieldType _$_$SecondFieldTypeFromJson(Map<String, dynamic> json) {
  return _$SecondFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$SecondFieldTypeToJson(_$SecondFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
    };

_$CategoryFieldType _$_$CategoryFieldTypeFromJson(Map<String, dynamic> json) {
  return _$CategoryFieldType(
    nulleable: json['nulleable'] as bool? ?? false,
    categoryName: json['categoryName'] as String,
    fieldTypes: (json['field_types'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, FieldType.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$CategoryFieldTypeToJson(
        _$CategoryFieldType instance) =>
    <String, dynamic>{
      'nulleable': instance.nulleable,
      'categoryName': instance.categoryName,
      'field_types': instance.fieldTypes,
    };
