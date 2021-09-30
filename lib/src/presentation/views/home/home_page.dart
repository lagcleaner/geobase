import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/views/home/blocs/location/location_cubit.dart';
import 'package:geobase/src/presentation/views/home/blocs/map/map_cubit.dart';
import 'package:geobase/src/presentation/views/home/blocs/markers/marker_cubit.dart';
import 'package:geobase/src/presentation/views/home/widgets/map/map.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

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
              //TODO: Navigate to settings
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
              create: (context) => getIt<MapCubit>(),
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
        const Positioned(top: 200, left: 20, child: _SettingsButton()),
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
              _GeoDataListButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _GeoDataListButton extends StatelessWidget {
  const _GeoDataListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () {
        //TODO: NAVIGATE TO GEODATA LIST PAGE
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
    this.enabled = true,
  }) : super(key: key);

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const Icon(Icons.my_location_rounded),
      label: const SizedBox(),
      style: TextButton.styleFrom(elevation: 0, side: const BorderSide()),
      onPressed: enabled
          ? () {
              //TODO: MOVE TO LOCATION (CENTER MAP ON CURRENT LOCATION) WHEN LOCATION IS ENABLE
            }
          : null,
    );
  }
}

class _SettingsButton extends StatelessWidget {
  const _SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () {
        //TODO: NAVIGATE TO SETTINGS
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
