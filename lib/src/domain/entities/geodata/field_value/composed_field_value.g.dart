// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composed_field_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComposedFieldValue _$ComposedFieldValueFromJson(Map<String, dynamic> json) {
  return ComposedFieldValue(
    type: FieldType.fromJson(json['type'] as Map<String, dynamic>),
    properties: json['properties'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ComposedFieldValueToJson(ComposedFieldValue instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
    };
