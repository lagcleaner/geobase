import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/blocs/sliding_up_panel/sliding_up_panel_cubit.dart';
import 'package:geobase/src/presentation/pages/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    this.initialLocation,
  }) : super(key: key);

  final LatLng? initialLocation;

  static BeamPage getPage(BuildContext context, {LatLng? initialLocation}) {
    return BeamPage(
      key: const ValueKey('Map'),
      title: 'Inicio',
      child: HomePage(
        initialLocation: initialLocation,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SlidingUpPanelCubit>(
      create: (context) => getIt<SlidingUpPanelCubit>(),
      child: _InternalHomePage(initialLocation: initialLocation),
    );
  }
}

class _InternalHomePage extends StatelessWidget {
  const _InternalHomePage({
    Key? key,
    required this.initialLocation,
  }) : super(key: key);

  final LatLng? initialLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0x33000000),
        title: const Text(APP_NAME),
        actions: [
          TextButton.icon(
            onPressed: () {
              context.beamToNamed('/options');
            },
            icon: const Icon(
              Icons.settings_rounded,
              color: Colors.white,
            ),
            label: const SizedBox(),
          ),
        ],
      ),
      body: BlocBuilder<SlidingUpPanelCubit, SlidingUpPanelState>(
        bloc: context.read<SlidingUpPanelCubit>(),
        builder: (context, state) {
          return SlidingUpPanel(
            minHeight: 50,
            maxHeight: MediaQuery.of(context).size.height * 0.30,
            backdropOpacity: 0,
            isDraggable: false,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            color: Colors.transparent,
            controller: context.read<SlidingUpPanelCubit>().panelController,
            body: MultiBlocProvider(
              providers: [
                BlocProvider<MapCubit>(
                  create: (context) => getIt<MapCubit>(param1: initialLocation),
                ),
                BlocProvider<MarkerCubit>(
                  create: (context) => getIt<MarkerCubit>(),
                ),
                BlocProvider<LocationCubit>(
                  create: (context) => getIt<LocationCubit>(),
                ),
              ],
              child: const _MapScreen(),
            ),
            panel: const SizedBox(
                // height: 8,

                ),
            collapsed: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey.withOpacity(.5),
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MapScreen extends StatelessWidget {
  const _MapScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: const [
        GeoBaseMap(),
        //Right top
        Positioned(top: 110, right: 20, child: _FiltersButton()),
        //Right bottom
        Positioned(bottom: 80, right: 20, child: _GotoLocationButton()),
        //Left top
        Positioned(top: 110, left: 20, child: _GeodataListButton()),
      ],
    );
  }
}

class _GeodataListButton extends StatelessWidget {
  const _GeodataListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _FloatingActionButtonWidget(
      onPressed: () {
        context.beamToNamed('/geodata');
      },
      iconData: Icons.view_list_rounded,
    );
  }
}

class _FiltersButton extends StatelessWidget {
  const _FiltersButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _FloatingActionButtonWidget(
      onPressed: () {
        //TODO: SHOW DIALOG TO FILTER MAP MARKERS
      },
      iconData: Icons.filter_alt_rounded,
    );
  }
}

class _GotoLocationButton extends StatelessWidget {
  const _GotoLocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          heroTag: false,
          icon: state.maybeMap(
            enable: (_) => const Icon(Icons.navigation_rounded),
            disable: (_) => const Icon(Icons.navigation_outlined),
            orElse: () => const
                // SizedBox(),
                CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            ),
          ),
          onPressed: state.map(
            loading: (loading) => null,
            disable: (disable) => context.read<LocationCubit>().enableLocation,
            enable: (enable) => () {
              context.read<MapCubit>().state.mapController.move(
                    enable.location,
                    context.read<MapCubit>().state.mapController.zoom,
                  );
            },
          ),
          elevation: 0,
          backgroundColor: Colors.blueGrey.withOpacity(0.5),
          shape: StadiumBorder(
            side: BorderSide(color: Colors.blue.withOpacity(.3), width: 2),
          ),
          label: const Text('Ir a mi ubicación'),
        );
      },
    );
  }
}

class _FloatingActionButtonWidget extends StatelessWidget {
  const _FloatingActionButtonWidget({
    Key? key,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 0,
      backgroundColor: Colors.blueGrey.withOpacity(0.5),
      splashColor: Colors.black,
      onPressed: onPressed,
      shape: const StadiumBorder(
        side: BorderSide(color: Colors.white, width: 2),
      ),
      elevation: 0,
      child: Icon(iconData),
    );
  }
}
