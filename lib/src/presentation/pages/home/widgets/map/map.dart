import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/map/layer_utils.dart';
import 'package:icon_picker/material_icons%20all.dart';
import 'package:latlong2/latlong.dart';

export 'layer_utils.dart';

class GeoBaseMap extends StatelessWidget {
  const GeoBaseMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      bloc: context.read<MapCubit>()..initialConfigurationsRequested(),
      builder: (context, state) {
        if (state.loadingConfigs) {
          return const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }
        return FlutterMap(
          options: MapOptions(
            controller: state.mapController,
            center: LatLng(23.12, -82.30),
            //TODO: start position loaded from settings or something
            zoom: 14.0,
            maxZoom: 18.0,
            minZoom: 4.0,
            onLongPress: (posx) => null, //TODO: ADD A NEW GEODATA
          ),
          layers: [
            mapLayerOptions(context, state.mapConfiguration),
            markerLayerOptions(context),
            liveLocationLayerOptions(context)
          ],
        );
      },
    );
  }

  LayerOptions markerLayerOptions(BuildContext context) => context
      .watch<MarkerCubit>()
      .state
      .map(
        failure: (failure) => MarkerLayerOptions(),
        filteredOut: (markerState) => MarkerLayerOptions(
          // rotateAlignment: Alignment.center,
          rotate: true,
          markers: (markerState.markers)
              .map(
                (e) => Marker(
                  point: e.location,
                  builder: (context) => IconButton(
                    icon: Icon(
                      MaterialIcons.mIcons[e.icon] ??
                          Icons.blur_circular_outlined,
                      color: e.color != null ? Color(e.color!) : Colors.black54,
                    ),
                    onPressed: () {
                      context.read<MapCubit>().markerTouched(e);
                      //todo: show the view of details in a sliding panel
                    },
                  ),
                ),
              )
              .toList(),
        ),
      );

  LayerOptions liveLocationLayerOptions(BuildContext context) =>
      context.watch<LocationCubit>().state.map(
            loading: (_) => MarkerLayerOptions(),
            disable: (_) => MarkerLayerOptions(),
            enable: (enableState) => MarkerLayerOptions(
              rotate: true,
              markers: [
                Marker(
                  point: enableState.location,
                  builder: (context) => IconButton(
                    icon: const Icon(
                      Icons.location_on_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () => null,
                    //TODO: show the view to add an new interest point, in a sliding panel
                  ),
                ),
              ],
            ),
          );
}
