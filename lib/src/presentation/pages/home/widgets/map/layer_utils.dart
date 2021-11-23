import 'package:beamer/beamer.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/pages/home/misc/cached_tile_provider.dart';

LayerOptions mapLayerOptions(
  BuildContext context,
  MapConfigurationEntity configs,
) {
  if (configs.mapSourceType == MapSource.Empty) return EmptyLayerOptions();

  return TileLayerOptions(
    urlTemplate: configs.options.getCastedOrDefault(
      MAP_SOURCE_URL_TEMPLATE,
      defaultValue: null,
    ),
    tms: configs.mapSourceType == MapSource.TMS,
    wmsOptions: configs.mapSourceType != MapSource.WMS
        ? null
        : WMSTileLayerOptions(
            baseUrl: configs.options.getCastedOrCrash(
              MAP_SOURCE_WMS_BASE_URL,
            ),
            layers: configs.options.getCastedOrDefault(
              MAP_SOURCE_WMS_LAYERS,
              defaultValue: const [],
            ),
            format: configs.options.getCastedOrDefault(
              MAP_SOURCE_WMS_FORMAT,
              defaultValue: 'image/png',
            ),
            otherParameters: configs.options.getCastedOrDefault(
              MAP_SOURCE_WMS_OTHER_PARAMS,
              defaultValue: const {},
            ),
          ),
    subdomains: configs.options.getCastedOrDefault(
      MAP_SOURCE_SUBDOMAINS,
      defaultValue: const [],
    ),
    tileProvider: const CachedTileProvider(),
    additionalOptions: configs.options.getCastedOrDefault(
      MAP_SOURCE_ADITIONAL_OPTIONS,
      defaultValue: null,
    ),
    errorTileCallback: (tile, error) {
      //TODO: SOME VISUAL ALERT
      context.beamToNamed('/options');
    },
  );
}

class EmptyLayerOptions extends LayerOptions {
  EmptyLayerOptions() : super();
}
