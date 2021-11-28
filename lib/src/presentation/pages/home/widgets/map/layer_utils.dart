import 'package:beamer/beamer.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/notification_helper.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/misc/cached_tile_provider.dart';
import 'package:provider/src/provider.dart';

LayerOptions mapLayerOptions(
  BuildContext context,
  MapConfigurationEntity configs,
) {
  if (configs.mapSourceType == MapSource.Empty) return MarkerLayerOptions();

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
            layers: configs.options
                .getCastedOrDefault<List>(
                  MAP_SOURCE_WMS_LAYERS,
                  defaultValue: const [],
                )
                .map((e) => e as String)
                .toList(),
            format: configs.options.getCastedOrDefault(
              MAP_SOURCE_WMS_FORMAT,
              defaultValue: 'image/png',
            ),
            otherParameters: Map.fromEntries(
              configs.options
                  .getCastedOrDefault<Map>(
                    MAP_SOURCE_WMS_OTHER_PARAMS,
                    defaultValue: const {},
                  )
                  .entries
                  .map((e) => e as MapEntry<String, String>),
            ),
          ),
    subdomains: configs.options
        .getCastedOrDefault<List>(
          MAP_SOURCE_SUBDOMAINS,
          defaultValue: const [],
        )
        .map((e) => e as String)
        .toList(),
    tileProvider: const CachedTileProvider(),
    additionalOptions: configs.options.getCastedOrDefault(
      MAP_SOURCE_ADITIONAL_OPTIONS,
      defaultValue: null,
    ),
    errorTileCallback: (tile, error) {
      context.read<MapCubit>().onErrorTile(error);
    },
  );
}
