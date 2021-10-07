import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/pages/home/misc/cached_tile_provider.dart';

LayerOptions mapLayerOptions(MapSourceConfiguration source) {
  if (source.mapSourceType == MapSource.Empty) return EmptyLayerOptions();
  return TileLayerOptions(
    urlTemplate: source.options.getCastedOrDefault(
      MAP_SOURCE_URL_TEMPLATE,
      defaultValue: null,
    ),
    wmsOptions: source.mapSourceType != MapSource.WMS
        ? null
        : WMSTileLayerOptions(
            baseUrl: source.options.getCastedOrCrash(
              MAP_SOURCE_WMS_BASE_URL,
            ),
            layers: source.options.getCastedOrDefault(
              MAP_SOURCE_WMS_LAYERS,
              defaultValue: const [],
            ),
            format: source.options.getCastedOrDefault(
              MAP_SOURCE_WMS_FORMAT,
              defaultValue: 'image/png',
            ),
            otherParameters: source.options.getCastedOrDefault(
              MAP_SOURCE_WMS_OTHER_PARAMS,
              defaultValue: const {},
            ),
          ),
    subdomains: source.options.getCastedOrDefault(
      MAP_SOURCE_SUBDOMAINS,
      defaultValue: const [],
    ),
    tileProvider: _getTileProvider(source),
    additionalOptions: source.options.getCastedOrDefault(
      MAP_SOURCE_ADITIONAL_OPTIONS,
      defaultValue: null,
    ),
  );
}

TileProvider _getTileProvider(MapSourceConfiguration source) {
  switch (source.mapSourceType) {
    case MapSource.Assets:
      return const AssetTileProvider();
    case MapSource.File:
      return const FileTileProvider();
    default:
      return const CachedTileProvider();
  }
}

class EmptyLayerOptions extends LayerOptions {
  EmptyLayerOptions() : super();
}
