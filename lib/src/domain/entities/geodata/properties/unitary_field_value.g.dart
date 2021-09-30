// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unitary_field_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitaryFieldValue _$UnitaryFieldValueFromJson(Map<String, dynamic> json) {
  return UnitaryFieldValue(
    type: FieldType.fromJson(json['type'] as Map<String, dynamic>),
    value: json['value'],
  );
}

Map<String, dynamic> _$UnitaryFieldValueToJson(UnitaryFieldValue instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
