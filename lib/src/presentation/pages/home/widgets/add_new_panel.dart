import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/panel_geodata_new/geodata_new_cubit.dart';
import 'package:geobase/src/presentation/router/locations.dart';
import 'package:latlong2/latlong.dart';

class SlideUpAddNewPanel extends StatelessWidget {
  const SlideUpAddNewPanel({
    super.key,
    required this.ubication,
  });

  final LatLng ubication;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeodataNewCubit>(
      create: (context) => getIt<GeodataNewCubit>()..loadCategories(),
      child: _InternalPanel(ubication: ubication),
    );
  }
}

class _InternalPanel extends StatelessWidget {
  const _InternalPanel({
    required this.ubication,
  });

  final LatLng ubication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        children: [
          Column(
            children: [
              const Icon(Icons.maximize_rounded),
              Text(
                'Nuevo Punto',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                '(${ubication.latitude.toStringAsFixed(6)}, ${ubication.longitude.toStringAsFixed(6)})',
                style: Theme.of(context).textTheme.subtitle2,
                textScaleFactor: 0.95,
              ),
            ],
          ),
          const SizedBox(height: 20),
          BlocBuilder<GeodataNewCubit, GeodataNewState>(
            builder: (context, state) {
              return state.maybeMap(
                loadedCategories: (state) {
                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Seleccione una categoría para el nuevo punto.',
                          style: Theme.of(context).textTheme.subtitle2,
                          textScaleFactor: 0.95,
                        ),
                        DropdownButtonFormFieldWidget<int>(
                          labelText: 'Seleccione una Categoría',
                          items: state.categories
                              .map(
                                (e) => DropdownMenuItem<int>(
                                  value: e.id,
                                  child: Text(e.name),
                                ),
                              )
                              .toList(),
                          value: state.selected,
                          onChanged: (selected) => context
                              .read<GeodataNewCubit>()
                              .selectCategory(state.categories, selected!),
                        ),
                        MainButton(
                          text: 'Añadir',
                          onPressed: state.selected != null
                              ? () => context.beamToNamed(
                                    '/geodata/new?'
                                    '$LAT_PARAM=${ubication.latitude}&'
                                    '$LNG_PARAM=${ubication.longitude}&'
                                    '$CATEGORY_ID_PARAM=${state.selected}',
                                    popToNamed: '/map',
                                  )
                              : null,
                        ),
                      ],
                    ),
                  );
                },
                failure: (failure) => FailureAndRetryWidget(
                  errorText: failure.error ?? '',
                  onPressed: () =>
                      context.read<GeodataNewCubit>().loadCategories(),
                ),
                orElse: () {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
