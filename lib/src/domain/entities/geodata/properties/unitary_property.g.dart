// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unitary_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitaryProperty _$UnitaryPropertyFromJson(Map<String, dynamic> json) {
  return UnitaryProperty(
    type: FieldType.fromJson(json['type'] as Map<String, dynamic>),
    value: json['value'],
  );
}

Map<String, dynamic> _$UnitaryPropertyToJson(UnitaryProperty instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
