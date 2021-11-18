import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
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
            icon: const Icon(Icons.settings_rounded),
            label: const SizedBox(),
          ),
        ],
      ),
      body: SlidingUpPanel(
        body: MultiBlocProvider(
          providers: [
            BlocProvider<MapCubit>(
              create: (context) => getIt<MapCubit>(param1: initialLocation),
              //TODO: recieve initial location as optional arg
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
          height: 8,
        ),
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
      children: [
        const GeoBaseMap(),
        //Left top
        const Positioned(top: 200, left: 20, child: _OptionsButton()),
        //Right top
        const Positioned(top: 200, right: 20, child: _FiltersButton()),
        //Right bottom
        Positioned(
          bottom: 20,
          right: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              _LocationButton(),
              SizedBox(height: 8),
              _GotoLocationButton(),
            ],
          ),
        ),
        //Left bottom
        Positioned(
          top: 200,
          left: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              _GeodataListButton(),
            ],
          ),
        ),
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
    return FloatingActionButton(
      elevation: 0,
      onPressed: () {
        context.beamToNamed('/geodata');
      },
      child: const Icon(Icons.view_list_rounded),
    );
  }
}

class _FiltersButton extends StatelessWidget {
  const _FiltersButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () {
        //TODO: SHOW DIALOG TO FILTER MAP MARKERS
      },
      child: const Icon(Icons.filter_alt_rounded),
    );
  }
}

class _GotoLocationButton extends StatelessWidget {
  const _GotoLocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const Icon(Icons.my_location_rounded),
      label: const SizedBox(),
      style: TextButton.styleFrom(elevation: 0, side: const BorderSide()),
      onPressed: context.watch<LocationCubit>().state.map(
            loading: (loading) => null,
            disable: (disable) => null,
            enable: (enable) => () {
              final controller = context.read<MapCubit>().state.mapController;
              controller.move(enable.location, controller.zoom);
            },
          ),
    );
  }
}

class _OptionsButton extends StatelessWidget {
  const _OptionsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () {
        context.beamToNamed('/options');
      },
      child: const Icon(Icons.settings),
    );
  }
}

class _LocationButton extends StatelessWidget {
  const _LocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: context.watch<LocationCubit>().state.maybeMap(
            enable: (_) => context.read<LocationCubit>().disableLocation,
            disable: (_) => context.read<LocationCubit>().enableLocation,
            orElse: () => null,
          ),
      child: context.watch<LocationCubit>().state.maybeMap(
            enable: (_) => const Icon(Icons.my_location_rounded),
            disable: (_) => const Icon(Icons.location_disabled_rounded),
            orElse: () => const CircularProgressIndicator(),
          ),
    );
  }
}
