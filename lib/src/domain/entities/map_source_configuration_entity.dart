import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/map_source_enum.dart';

class MapSourceConfigurationEntity {
  const MapSourceConfigurationEntity({
    MapSource? sourceType,
    Map<String, dynamic>? sourceProperties,
  })  : options = sourceProperties ?? const {},
        mapSourceType = sourceType ?? MapSource.Empty;

  factory MapSourceConfigurationEntity.wms({
    required String baseUrl,
    required List<String> layers,
    required List<String> subdomains,
    String format = 'image/png',
    Map<String, dynamic>? otherParameters,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapSourceConfigurationEntity(
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

  factory MapSourceConfigurationEntity.tms({
    required String urlTemplate,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapSourceConfigurationEntity(
        sourceType: MapSource.TMS,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapSourceConfigurationEntity.assets({
    required String urlTemplate,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapSourceConfigurationEntity(
        sourceType: MapSource.Assets,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapSourceConfigurationEntity.file({
    required String urlTemplate,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapSourceConfigurationEntity(
        sourceType: MapSource.File,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapSourceConfigurationEntity.customRemote({
    required String urlTemplate,
    List<String>? subdomains,
    Map<String, dynamic>? aditionalOptions,
  }) =>
      MapSourceConfigurationEntity(
        sourceType: MapSource.CustomRemote,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate,
          MAP_SOURCE_SUBDOMAINS: subdomains,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions
        },
      );

  factory MapSourceConfigurationEntity.empty() =>
      const MapSourceConfigurationEntity();

  final MapSource mapSourceType;
  final Map<String, dynamic> options;
}
