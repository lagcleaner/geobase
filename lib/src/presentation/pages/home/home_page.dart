// ignore_for_file: use_build_context_synchronously

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/core/widgets/commons/dropdown_field.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/widgets.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.initialLocation,
  });

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
      child: _InternalHomePage(
        initialLocation: initialLocation,
        panelHeight: MediaQuery.of(context).size.height * 0.40,
      ),
    );
  }
}

class _InternalHomePage extends StatelessWidget {
  const _InternalHomePage({
    required this.initialLocation,
    required this.panelHeight,
  });

  final LatLng? initialLocation;

  final double panelHeight;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.read<SlidingUpPanelCubit>().panelController.isAttached &&
            !context
                .read<SlidingUpPanelCubit>()
                .panelController
                .isPanelClosed) {
          await context.read<SlidingUpPanelCubit>().closePanel();
          return false;
        }
        return await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                actionsAlignment: MainAxisAlignment.center,
                title: const Text('¿Quiere salir?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('Si'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('No'),
                  )
                ],
              ),
            ) ??
            false;
      },
      child: Scaffold(
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
              minHeight: 0,
              maxHeight: panelHeight,
              backdropOpacity: 0,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              color: Colors.blueGrey.shade100,
              controller: context.read<SlidingUpPanelCubit>().panelController,
              body: MultiBlocProvider(
                providers: [
                  BlocProvider<MapCubit>(
                    create: (context) =>
                        getIt<MapCubit>(param1: initialLocation),
                  ),
                  BlocProvider<MarkerCubit>(
                    create: (context) => getIt<MarkerCubit>()..refreshMarkers(),
                  ),
                  BlocProvider<LocationCubit>(
                    create: (context) => getIt<LocationCubit>(),
                  ),
                ],
                child: const _MapScreen(),
              ),
              panel: _SlidingUpPanelWidget(panelHeight: panelHeight),
              // collapsed: const _SlidingUpCollapsedWidget(),
            );
          },
        ),
      ),
    );
  }
}

class _SlidingUpPanelWidget extends StatelessWidget {
  const _SlidingUpPanelWidget({
    required this.panelHeight,
  });

  final double panelHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: panelHeight,
      child: BlocBuilder<SlidingUpPanelCubit, SlidingUpPanelState>(
        bloc: context.read<SlidingUpPanelCubit>(),
        builder: (context, state) {
          return state.maybeMap(
            detailsPanel: (detailsPanel) => SlideUpInformationalPanel(
              key: Key('${detailsPanel.geodataId}'),
              geodataId: detailsPanel.geodataId,
              panelHeight: panelHeight,
            ),
            newPanel: (newPanel) => SlideUpAddNewPanel(
              key: Key('${newPanel.ubication}'),
              ubication: newPanel.ubication,
            ),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}

class _MapScreen extends StatelessWidget {
  const _MapScreen();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: const [
        GeoBaseMap(),
        //Right top
        Positioned(top: 110, right: 20, child: _FiltersButton()),
        //Right bottom
        Positioned(bottom: 50, right: 10, child: _GotoLocationButton()),
        //Left top
        Positioned(top: 110, left: 20, child: _GeodataListButton()),
      ],
    );
  }
}

class _GeodataListButton extends StatelessWidget {
  const _GeodataListButton();

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
  const _FiltersButton();

  @override
  Widget build(BuildContext context) {
    return _FloatingActionButtonWidget(
      onPressed: () async {
        final mapMode = await showDialog<MapModeEntity>(
          context: context,
          builder: (context) {
            return BlocBuilder<CategoriesMapSelectorCubit,
                CategoriesMapSelectorState>(
              bloc: getIt<CategoriesMapSelectorCubit>()..loadCategories(),
              builder: (context, state) {
                return SimpleDialog(
                  contentPadding: const EdgeInsets.all(16.0),
                  title: const Text(
                    'Seleccione la categoría que se mostrará y usará:',
                  ),
                  children: [
                    DropdownButtonFormFieldWidget<int>(
                      items: state.categories
                          .map(
                            (e) => DropdownMenuItem<int>(
                              value: e.id,
                              child: Text(e.name),
                            ),
                          )
                          .toList(),
                      onChanged: (newValue) => Navigator.of(context).pop(
                        MapModeEntity(categoryUsed: newValue),
                      ),
                      value: state.selected,
                      labelText: 'Categoría a Usar',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () => Navigator.of(context).pop(
                          const MapModeEntity(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              },
            );
          },
        );
        if (mapMode != null) {
          // ignore: unawaited_futures
          await context
              .read<MapCubit>()
              .setMapMode(mapMode)
              .whenComplete(() => context.read<MarkerCubit>().refreshMarkers());
        }
      },
      iconData: Icons.manage_accounts_rounded,
    );
  }
}

class _GotoLocationButton extends StatelessWidget {
  const _GotoLocationButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          heroTag: null,
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
                    context.read<MapCubit>().state.mapController.camera.zoom,
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
    required this.onPressed,
    required this.iconData,
  });

  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
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
