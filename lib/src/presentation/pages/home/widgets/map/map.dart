import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/blocs/sliding_up_panel/sliding_up_panel_cubit.dart';
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
          mapController: state.mapController,
          options: MapOptions(
            controller: state.mapController,
            center: LatLng(23.1255, -82.37),
            zoom: 14.0,
            maxZoom: 18.0,
            minZoom: 4.0,
            screenSize: MediaQuery.of(context).size,
            onTap: (_) {
              context.read<MarkerCubit>().clearTemporaryMarker();
              context.read<SlidingUpPanelCubit>().closePanel();
            },
            onLongPress: (posx) {
              context.read<MarkerCubit>().addTemporaryMarker(posx);
              context.read<SlidingUpPanelCubit>().openNewPanel(posx);
            },
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

  LayerOptions markerLayerOptions(BuildContext context) {
    return context.watch<MarkerCubit>().state.map(
          failure: (failure) => MarkerLayerOptions(),
          filteredOut: (markerState) => MarkerLayerOptions(
            // rotateAlignment: Alignment.center,
            rotate: true,
            markers: (markerState.markers)
                .map(
                  (e) => Marker(
                    key: e.id != null ? Key(e.id.toString()) : UniqueKey(),
                    point: e.location,
                    builder: (context) => IconButton(
                      icon: Icon(
                        MaterialIcons.mIcons[e.icon] ??
                            Icons.blur_circular_outlined,
                        color:
                            e.color != null ? Color(e.color!) : Colors.black54,
                      ),
                      onPressed: () {
                        context.read<MapCubit>().markerTouched(e);
                        context.read<SlidingUpPanelCubit>().markerTouched(e);
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        );
  }

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
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: Colors.black.withOpacity(.7),
                    ),
                    onPressed: () {
                      // context.read<SlidingUpPanelCubit>().markerTouched(
                      //       TemporalMarkerEntity(
                      //         location: enableState.location,
                      //       ),
                      //     );
                    },
                  ),
                ),
              ],
            ),
          );
}
