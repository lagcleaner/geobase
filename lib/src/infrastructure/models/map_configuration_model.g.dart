// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapConfigurationModel _$MapConfigurationModelFromJson(
        Map<String, dynamic> json) =>
    MapConfigurationModel(
      sourceType: $enumDecode(_$MapSourceEnumMap, json['sourceType']),
      properties: json['properties'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$MapConfigurationModelToJson(
        MapConfigurationModel instance) =>
    <String, dynamic>{
      'sourceType': _$MapSourceEnumMap[instance.sourceType],
      'properties': instance.properties,
    };

const _$MapSourceEnumMap = {
  MapSource.WMS: 'WMS',
  MapSource.TMS: 'TMS',
  MapSource.OSM: 'OSM',
  MapSource.Empty: 'Empty',
};
