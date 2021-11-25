import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';
import 'package:icon_picker/material_icons.dart';

class GeodataViewPage extends StatelessWidget {
  const GeodataViewPage({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  static BeamPage getPage(BuildContext context, int geodataId) {
    return BeamPage(
      key: const ValueKey('GeodataDetails'),
      title: 'Detalles del Punto',
      child: GeodataViewPage(
        geodataId: geodataId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeodataViewCubit>(
      create: (_) => GetIt.I()..fetch(geodataId),
      child: _GeodataViewPageInternal(geodataId: geodataId),
    );
  }
}

class _GeodataViewPageInternal extends StatelessWidget {
  const _GeodataViewPageInternal({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text('Detalles del Punto'),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () => context.read<GeodataViewCubit>().fetch(geodataId),
          ),
        ],
      ),
      body: _GeodataViewBody(geodataId: geodataId),
    );
  }
}

class _GeodataViewBody extends StatelessWidget {
  const _GeodataViewBody({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeodataViewCubit, GeodataViewState>(
      builder: (context, state) {
        return state.when(
          fetchInProgress: () {
            return const _GeodataViewBodyFetchInProgress();
          },
          fetchSuccess: (geodata) {
            return _GeodataViewBodyFetchSuccess(geodata: geodata);
          },
          fetchFailure: (error) {
            return FailureAndRetryWidget(
              errorText: error,
              onPressed: () {
                context.read<GeodataViewCubit>().fetch(geodataId);
              },
            );
          },
        );
      },
    );
  }
}

class _GeodataViewBodyFetchSuccess extends StatelessWidget {
  const _GeodataViewBodyFetchSuccess({Key? key, required this.geodata})
      : super(key: key);

  final GeodataGetEntity geodata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _GeodataViewBasicInfo(
            geodata: geodata,
          ),
        ),
        _GeodataViewBodyFetchSucessBottom(
          geodataId: geodata.id,
        ),
      ],
    );
  }
}

class _GeodataViewBodyFetchInProgress extends StatelessWidget {
  const _GeodataViewBodyFetchInProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 2,
      ),
    );
  }
}

class _GeodataViewBasicInfo extends StatelessWidget {
  const _GeodataViewBasicInfo({Key? key, required this.geodata})
      : super(key: key);

  final GeodataGetEntity geodata;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Flexible(
                child: ListTile(
                  title: Text(geodata.category.name),
                  subtitle: const Text('Categoría'),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Text(
                      'Latitud: ${geodata.latitude}\nLongitud: ${geodata.longitude}'),
                  subtitle: const Text('Ubicación'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: ListTile(
                  title: Text(geodata.id.toString()),
                  subtitle: const Text('Id'),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Icon(
                    MaterialIcons.mIcons[geodata.icon],
                    color: geodata.color != null
                        ? Color(geodata.color!)
                        : Theme.of(context).primaryColor,
                  ),
                  subtitle: Text(
                    geodata.color != null
                        ? Color(geodata.color!).toString()
                        : 'Color No Especificado',
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          if (geodata.fields.isEmpty)
            ListTile(
              title: Text(
                'Sin Campos',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          if (geodata.fields.isNotEmpty)
            Center(
              child: Text(
                'Campos',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ...[
            for (final field in geodata.fields)
              FieldRenderResolver.getViewWidget(field)
          ],
        ],
      ),
    );
  }
}

class _GeodataViewBodyFetchSucessBottom extends StatelessWidget {
  const _GeodataViewBodyFetchSucessBottom({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: MainButton(
              text: 'Editar',
              onPressed: () {
                context.beamToNamed(
                  '/geodata/$geodataId/edit',
                );
              },
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MainButton(
              text: 'Eliminar',
              onPressed: () {
                final result = showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    title: const Text('Eliminar datos.'),
                    content:
                        const Text('La acción es irreversible ¿Está seguro?'),
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
                );
                result.then((value) {
                  if (value ?? false) {
                    context.read<GeodataViewCubit>().remove(geodataId).then(
                          (value) => context.beamToNamed('/geodata'),
                        );
                  }
                });
              },
              color: Colors.red.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
