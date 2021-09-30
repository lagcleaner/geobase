// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composed_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComposedProperty _$ComposedPropertyFromJson(Map<String, dynamic> json) {
  return ComposedProperty(
    type: FieldType.fromJson(json['type'] as Map<String, dynamic>),
    subProperties: json['subProperties'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ComposedPropertyToJson(ComposedProperty instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subProperties': instance.subProperties,
    };
