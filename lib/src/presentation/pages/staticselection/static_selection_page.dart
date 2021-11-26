import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/pages/staticselection/blocs/static_selection_list/static_selection_list_cubit.dart';

class StaticSelectionListPage extends StatelessWidget {
  const StaticSelectionListPage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('StaticSelectionList'),
      title: 'Selecciones Estáticas configuradas',
      child: StaticSelectionListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StaticSelectionListCubit>(
      create: (context) => getIt<StaticSelectionListCubit>()..fetch(),
      child: const _StaticSelectionListInternalPage(),
    );
  }
}

class _StaticSelectionListInternalPage extends StatelessWidget {
  const _StaticSelectionListInternalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.beamToNamed('/options');
        return false;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: const Text('Selecciones Estáticas'),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => context.read<StaticSelectionListCubit>().fetch(),
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: const _Body(),
        floatingActionButton: const _FloatingActionButton(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaticSelectionListCubit, StaticSelectionListState>(
      bloc: context.read<StaticSelectionListCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () {
            return Column(
              children: const [
                Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      'Listado de Selecciones estáticas configuradas.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchInProgress: () {
            return Column(
              children: const [
                Flexible(
                  flex: 3,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                ),
                Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchSuccess: (staticSelections) {
            return ListView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              children: [
                for (final staticSelection in staticSelections)
                  _StaticSelectionWidget(staticSelection: staticSelection),
                const SizedBox(height: 80),
              ],
            );
          },
          fetchSuccessNotFound: () {
            return Column(
              children: const [
                Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      'No se encontraron selecciones estáticas configuradas.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchFailure: (error) {
            return Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
        );
      },
    );
  }
}

class _StaticSelectionWidget extends StatelessWidget {
  const _StaticSelectionWidget({
    Key? key,
    required this.staticSelection,
  }) : super(key: key);

  final FieldTypeStaticSelectionGetEntity staticSelection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: SelectableText(staticSelection.name),
            subtitle: SelectableText(
              staticSelection.options.toString(),
              // maxLines: 2,
            ),
            trailing: IconButton(
              tooltip: 'Ver detalles de la Selección Estática',
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {
                context.beamToNamed('/staticselection/${staticSelection.id}');
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Agregar Selección Estática',
      heroTag: null,
      child: const Icon(Icons.add),
      onPressed: () {
        context.beamToNamed('/staticselection/new');
      },
    );
  }
}
