import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/map_source_enum.dart';

class MapConfigurationEntity {
  const MapConfigurationEntity({
    MapSource? sourceType,
    Map<String, dynamic>? sourceProperties,
  })  : options = sourceProperties ?? const {},
        mapSourceType = sourceType ?? MapSource.Empty;

  factory MapConfigurationEntity.wms({
    required String baseUrl,
    required List<String> layers,
    required List<String> subdomains,
    String format = 'image/png',
    Map<String, dynamic>? otherParameters,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapConfigurationEntity(
        sourceType: MapSource.WMS,
        sourceProperties: {
          MAP_SOURCE_SUBDOMAINS: subdomains,
          MAP_SOURCE_WMS_BASE_URL: baseUrl,
          MAP_SOURCE_WMS_LAYERS: layers,
          MAP_SOURCE_WMS_FORMAT: format,
          MAP_SOURCE_WMS_OTHER_PARAMS: otherParameters,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapConfigurationEntity.tms({
    required String urlTemplate,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapConfigurationEntity(
        sourceType: MapSource.TMS,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapConfigurationEntity.osm({
    required String urlTemplate,
    List<String>? subdomains,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapConfigurationEntity(
        sourceType: MapSource.OSM,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate,
          MAP_SOURCE_SUBDOMAINS: subdomains,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapConfigurationEntity.empty() => const MapConfigurationEntity();

  final MapSource mapSourceType;
  final Map<String, dynamic> options;
}
