import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/misc/cached_tile_provider.dart';

Widget mapLayerOptions(
  BuildContext context,
  MapConfigurationEntity configs,
) {
  if (configs.mapSourceType == MapSource.Empty) return MarkerLayer(markers: []);

  return TileLayer(
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
    tileProvider: CachedTileProvider(),
    additionalOptions: configs.options.getCastedOrDefault(
      MAP_SOURCE_ADITIONAL_OPTIONS,
      defaultValue: {},
    ),
    errorTileCallback: (tile, obj, error) {
      context.read<MapCubit>().onErrorTile(error);
    },
  );
}
