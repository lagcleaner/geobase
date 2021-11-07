// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceConfigurationModel _$SourceConfigurationModelFromJson(
    Map<String, dynamic> json) {
  return SourceConfigurationModel(
    _$enumDecode(_$MapSourceEnumMap, json['type']),
    json['properties'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SourceConfigurationModelToJson(
        SourceConfigurationModel instance) =>
    <String, dynamic>{
      'type': _$MapSourceEnumMap[instance.type],
      'properties': instance.properties,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$MapSourceEnumMap = {
  MapSource.WMS: 'WMS',
  MapSource.TMS: 'TMS',
  MapSource.Assets: 'Assets',
  MapSource.File: 'File',
  MapSource.CustomRemote: 'CustomRemote',
  MapSource.Empty: 'Empty',
};
