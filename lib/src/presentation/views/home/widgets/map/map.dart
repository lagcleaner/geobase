import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../domain/entities/entities.dart';
import '../../blocs/blocs.dart';
import '../../misc/cached_tile_provider.dart';

class GeoBaseMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocBuilder<MapCubit, MapState>(
        bloc: context.read<MapCubit>()..initialConfigurationsRequested(),
        builder: (context, state) {
          return FlutterMap(
              options: MapOptions(
                controller: state.mapController,
                center: LatLng(51.5, -0.09),
                zoom: 5.0,
              ),
              layers: [
                tileLayerOptions(state),
                markerLayerOptions(context),
                liveLocationLayerOptions(context)
              ]);
        },
      ),
    );
  }

  LayerOptions tileLayerOptions(MapState state) =>
      state.sourceConfiguration.map(
        wms: (wms) => TileLayerOptions(
          wmsOptions: WMSTileLayerOptions(
            baseUrl: wms.baseUrl,
            layers: wms.layers,
          ),
          subdomains: wms.subdomains,
          tileProvider: const CachedTileProvider(),
        ),
        tms: (tms) => TileLayerOptions(
          urlTemplate: tms.templateUrl,
          tms: true, //todo: test this configuration..
          tileProvider: const CachedTileProvider(),
        ),
        assets: (assets) => TileLayerOptions(
          urlTemplate: assets.templateUrl,
          tileProvider: const AssetTileProvider(),
        ),
        file: (file) => TileLayerOptions(
          urlTemplate: file.templateUrl,
          tileProvider: const FileTileProvider(),
        ),
        custom: (custom) => TileLayerOptions(
          urlTemplate: custom.templateUrl,
          subdomains: custom.subdomains ?? [],
          // TODO: change to have a better name
          tileProvider: const CachedTileProvider(),
        ),
        empty: (_) => EmptyLayerOptions(),
      );

  LayerOptions markerLayerOptions(BuildContext context) =>
      context.watch<MarkerCubit>().state.map(
            failure: (failure) => EmptyLayerOptions(),
            filteredOut: (markerState) => MarkerLayerOptions(
                // rotateAlignment: Alignment.center,
                rotate: true,
                markers: (markerState.markers as Iterable<IMarkable>)
                    .map((e) => Marker(
                          point: e.point,
                          builder: (context) => IconButton(
                              icon: Icon(
                                Icons.blur_circular_outlined,
                                color: e.color ?? Colors.black54,
                              ),
                              onPressed: () {
                                context.read<MapCubit>().markerTouched(e);
                                //todo: shwo the view of details in a sliding panel
                              }),
                        ))
                    .toList()),
          );

  LayerOptions liveLocationLayerOptions(BuildContext context) =>
      context.watch<LocationCubit>().state.map(
            loading: (_) => EmptyLayerOptions(),
            disable: (_) => EmptyLayerOptions(),
            enable: (enableState) => MarkerLayerOptions(rotate: true, markers: [
              Marker(
                point: enableState.location,
                builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () => null,
                  //todo: show the view to add an new interest point, in a sliding panel
                ),
              ),
            ]),
          );
}

class EmptyLayerOptions extends LayerOptions {
  EmptyLayerOptions() : super();
}
