import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/map/layer_utils.dart';
import 'package:geobase/src/presentation/router/locations.dart';
import 'package:latlong2/latlong.dart';

export 'layer_utils.dart';

class GeoBaseMap extends StatelessWidget {
  const GeoBaseMap({super.key});

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
                center: LatLng(23.1255, -82.37),
                zoom: 14.0,
                maxZoom: 18.0,
                minZoom: 4.0,
                screenSize: MediaQuery.of(context).size,
                onTap: (_, __) {
                  context.read<MarkerCubit>().clearTemporaryMarker();
                  context.read<SlidingUpPanelCubit>().closePanel();
                },
                onLongPress: (_, posx) {
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

              children: [
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

  Widget markerLayerOptions(BuildContext context) {
    return context.watch<MarkerCubit>().state.map(
          failure: (failure) => MarkerLayer(),
          filteredOut: (markerState) => MarkerLayer(
            // rotateAlignment: Alignment.center,
            rotate: true,
            markers: (markerState.markers)
                .map(
                  (e) => Marker(
                    key: e.id != null ? Key(e.id.toString()) : UniqueKey(),
                    point: e.location,
                    builder: (context) => IconButton(
                      icon: Icon(
                        e.icon != null
                            ? IconCodeUtils.decode(e.icon)
                            : Icons.blur_circular_outlined,
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
                        e.icon != null
                            ? IconCodeUtils.decode(e.icon)
                            : Icons.circle,
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

  Widget liveLocationLayerOptions(BuildContext context) =>
      context.watch<LocationCubit>().state.map(
            loading: (_) => MarkerLayer(),
            disable: (_) => MarkerLayer(),
            enable: (enableState) {
              context.read<MapCubit>().savePosition(enableState.location);
              return MarkerLayer(
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
    required this.message,
  });

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
