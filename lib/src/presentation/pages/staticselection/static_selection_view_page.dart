import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/staticselection/blocs/static_selection_view/static_selection_view_cubit.dart';

class StaticSelectionViewPage extends StatelessWidget {
  const StaticSelectionViewPage({
    Key? key,
    required this.fieldTypeId,
  }) : super(key: key);

  final int fieldTypeId;

  static BeamPage getPage(BuildContext context, int fieldTypeId) {
    return BeamPage(
      key: const ValueKey('StaticSelectionView'),
      title: 'Detalles de Selección Stática',
      child: StaticSelectionViewPage(
        fieldTypeId: fieldTypeId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StaticSelectionViewCubit>(
      create: (context) =>
          getIt<StaticSelectionViewCubit>()..fetch(fieldTypeId),
      child: _StaticSelectioViewInternalPage(fieldTypeId: fieldTypeId),
    );
  }
}

class _StaticSelectioViewInternalPage extends StatelessWidget {
  const _StaticSelectioViewInternalPage({
    Key? key,
    required this.fieldTypeId,
  }) : super(key: key);

  final int fieldTypeId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text('Detalles de la Selección Estática'),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () =>
                context.read<StaticSelectionViewCubit>().fetch(fieldTypeId),
          ),
        ],
      ),
      body: _Body(fieldTypeId: fieldTypeId),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.fieldTypeId,
  }) : super(key: key);

  final int fieldTypeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaticSelectionViewCubit, StaticSelectionViewState>(
      builder: (context, state) {
        return state.when(
          fetchInProgress: () {
            return const _StaticSelectionViewBodyFetchInProgress();
          },
          fetchSuccess: (staticSelection) {
            return _StaticSelectionViewBodyFetchSuccess(
              staticSelection: staticSelection,
            );
          },
          fetchFailure: (_) {
            return _StaticSelectionViewBodyFetchFailure(
              fieldTypeId: fieldTypeId,
            );
          },
        );
      },
    );
  }
}

class _StaticSelectionViewBodyFetchFailure extends StatelessWidget {
  const _StaticSelectionViewBodyFetchFailure({
    Key? key,
    required this.fieldTypeId,
  }) : super(key: key);

  final int fieldTypeId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Ha ocurrido un error durante'
            ' la obtención de la información de la Selección Estática.',
          ),
          MainButton(
            text: 'Reintentar',
            onPressed: () {
              context.read<StaticSelectionViewCubit>().fetch(fieldTypeId);
            },
          ),
        ],
      ),
    );
  }
}

class _StaticSelectionViewBodyFetchSucessBottom extends StatelessWidget {
  const _StaticSelectionViewBodyFetchSucessBottom({
    Key? key,
    required this.fieldTypeId,
  }) : super(key: key);

  final int fieldTypeId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          // Expanded(
          //   child: MainButton(
          //     text: 'Editar',
          //     onPressed: () {
          //       //TODO: DEFINIR SI SE PERMITIRA EDITAR static selections

          //       // context.beamToNamed(
          //       //   '/staticselection/$fieldTypeId/edit',
          //       // );
          //     },
          //   ),
          // ),
          // const SizedBox(width: 10),
          Expanded(
            child: MainButton(
              text: 'Eliminar',
              onPressed: () {
                final result = showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    title: const Text('Eliminar Selección Estática'),
                    content: const Text(
                      'Esta acción es irreversible, se eliminarán '
                      'los datos relacionados a este tipo de selección. '
                      '¿Está seguro?',
                    ),
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
                    context
                        .read<StaticSelectionViewCubit>()
                        .remove(fieldTypeId)
                        .then(
                          (value) => context.beamToNamed('/staticselection'),
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

class _StaticSelectionViewBodyFetchInProgress extends StatelessWidget {
  const _StaticSelectionViewBodyFetchInProgress({
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

class _StaticSelectionViewBodyFetchSuccess extends StatelessWidget {
  const _StaticSelectionViewBodyFetchSuccess({
    Key? key,
    required this.staticSelection,
  }) : super(key: key);

  final FieldTypeStaticSelectionGetEntity staticSelection;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _StaticSelectionViewBasicInfo(
            staticSelection: staticSelection,
          ),
        ),
        _StaticSelectionViewBodyFetchSucessBottom(
          fieldTypeId: staticSelection.id,
        ),
      ],
    );
  }
}

class _StaticSelectionViewBasicInfo extends StatelessWidget {
  const _StaticSelectionViewBasicInfo({
    Key? key,
    required this.staticSelection,
  }) : super(key: key);

  final FieldTypeStaticSelectionGetEntity staticSelection;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(staticSelection.id.toString()),
                  subtitle: const Text('Id'),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(staticSelection.name),
                  subtitle: Text(staticSelection.metaType),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Elementos'),
            children: staticSelection.options
                .map(
                  (e) => ListTile(
                    dense: true,
                    title: Text(e),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
