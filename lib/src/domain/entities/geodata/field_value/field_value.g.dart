// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldValueEntity _$FieldValueEntityFromJson(Map<String, dynamic> json) {
  return FieldValueEntity(
    type: FieldType.fromJson(json['type'] as Map<String, dynamic>),
    value: json['value'],
  );
}

Map<String, dynamic> _$FieldValueEntityToJson(FieldValueEntity instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
