// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoDataPropertyEntity _$GeoDataPropertyEntityFromJson(
    Map<String, dynamic> json) {
  return GeoDataPropertyEntity(
    type: FieldType.fromJson(json['type'] as Map<String, dynamic>),
    value: json['value'],
  );
}

Map<String, dynamic> _$GeoDataPropertyEntityToJson(
        GeoDataPropertyEntity instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
