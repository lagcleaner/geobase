import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/map/layer_utils.dart';
import 'package:geobase/src/presentation/router/locations.dart';
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
        return Stack(
          children: [
            FlutterMap(
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
                  context.read<MapCubit>().savePosition(posx);
                  context.read<MarkerCubit>().onMapLongPress(posx);
                  if (state.mapMode.categoryUsed != null) {
                    context.beamToNamed(
                      '/geodata/new?'
                      '$LAT_PARAM=${posx.latitude}&'
                      '$LNG_PARAM=${posx.longitude}&'
                      '$CATEGORY_ID_PARAM=${state.mapMode.categoryUsed}',
                      popToNamed: '/map',
                    );
                  } else {
                    context.read<SlidingUpPanelCubit>().openNewPanel(posx);
                  }
                },
              ),
              layers: [
                mapLayerOptions(context, state.mapConfiguration),
                markerLayerOptions(context),
                liveLocationLayerOptions(context)
              ],
            ),
            if (state.loadingConfigs)
              Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            if (state.failure?.maybeMap(
                  connection: (state) => true,
                  orElse: () => false,
                ) ??
                false)
              _FailureGetTilesAndRetry(
                message: state.failure!.message ?? '',
              ),
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
                .followedBy(
                  markerState.temporalMarkers.map(
                    (e) => Marker(
                      key: UniqueKey(),
                      point: e.location,
                      builder: (context) => Icon(
                        MaterialIcons.mIcons[e.icon] ?? Icons.circle,
                        color:
                            e.color != null ? Color(e.color!) : Colors.blueGrey,
                      ),
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
            enable: (enableState) {
              context.read<MapCubit>().savePosition(enableState.location);
              return MarkerLayerOptions(
                rotate: true,
                markers: [
                  Marker(
                    point: enableState.location,
                    builder: (context) => IconButton(
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black.withOpacity(.7),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              );
            },
          );
}

class _FailureGetTilesAndRetry extends StatelessWidget {
  const _FailureGetTilesAndRetry({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            'Su conexión con el servidor de mapas es inestable o inexistente.',
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          Icon(
            Icons.info_outline_rounded,
            color: Colors.orange.shade300,
            size: 30,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          MainButton(
            text: 'Reintentar',
            onPressed: () =>
                context.read<MapCubit>().initialConfigurationsRequested(),
          ),
          const SizedBox(height: 16),
          MainButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Configurar otro servidor de mapas'),
                Icon(Icons.miscellaneous_services_sharp),
              ],
            ),
            onPressed: () => context.beamToNamed(
              '/options/mapserver',
              popToNamed: '/map',
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
