import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/geodata/misc/misc.dart';

class GeoDataPage extends StatelessWidget {
  const GeoDataPage({
    Key? key,
  }) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('GeoDataList'),
      title: 'Datos Georeferenciados',
      child: GeoDataPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GeodataListBloc>(),
      child: const _GeodataPageInternal(),
    );
  }
}

class _GeodataPageInternal extends StatelessWidget {
  const _GeodataPageInternal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          '$APP_NAME Datos Georeferenciados',
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      body: _Body(),
      floatingActionButton: const _FloatingActionButton(),
    );
  }
}

class _Body extends StatelessWidget {
  _Body({
    Key? key,
  }) : super(key: key);

  final Key queryWidgetKey = const Key('queryWidgetKey');
  final queryController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeodataListBloc, GeodataListState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Column(
              children: [
                _QueryInput(key: queryWidgetKey),
                const Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      'Datos geográficos guardados\nEn la caja de texto de arriba puede acceder a estas seleccionando una categoría.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchInProgress: () {
            return Column(
              children: [
                _QueryInput(key: queryWidgetKey),
                const Flexible(
                  flex: 3,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchSuccess: (geodataList) {
            return ListView(
              children: [
                _QueryInput(key: queryWidgetKey),
                for (final geodata in geodataList)
                  _GeodataWidget(geodata: geodata),
                const SizedBox(height: 80),
              ],
            );
          },
          fetchSuccessNotFound: () {
            return Column(
              children: [
                _QueryInput(key: queryWidgetKey),
                const Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      'No se encontraron datos de acuerdo '
                      'a los parámetros de búsqueda.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchFailure: (error) {
            return Column(
              children: [
                _QueryInput(key: queryWidgetKey),
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

class _GeodataWidget extends StatelessWidget {
  const _GeodataWidget({
    Key? key,
    required this.geodata,
  }) : super(key: key);

  final GeoDataGetEntity geodata;

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
            tileColor: geodata.color?.withOpacity(0.5),
            title: SelectableText(
              '${geodata.category.name}(${geodata.location.visualString()})',
            ),
            subtitle: SelectableText(
              geodata.category.fields.values.join(','),
              // overflow: TextOverflow.fade,
            ),
            trailing: IconButton(
              tooltip: 'Ver detalles del punto',
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {
                context.beamToNamed('/geodata/${geodata.id}');
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _QueryInput extends StatelessWidget {
  const _QueryInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesShower = getIt<CategoriesShowerCubit>();
    return BlocConsumer<CategoriesShowerCubit, CategoriesShowerState>(
      bloc: categoriesShower,
      listener: (context, state) {
        context
            .read<GeodataListBloc>()
            .add(GeodataListEvent.fetched(categoryId: state.selected));
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: DropdownButtonFormField<int>(
            items: state.categories.map((CategoryGetEntity categ) {
              return DropdownMenuItem(
                value: categ.id,
                child: Row(
                  children: <Widget>[
                    Text(categ.name),
                  ],
                ),
              );
            }).toList(),
            onChanged: categoriesShower.changeCategory,
            value: state.selected,
            decoration: TextFieldDecorations.decoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: categoriesShower.clear,
              ),
              prefixIcon: Icons.manage_search_rounded,
              hintText: 'Buscar por Categoría',
            ),
          ),
        );
      },
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
      tooltip: 'Agregar Punto de Interés',
      child: const Icon(Icons.add),
      onPressed: () {
        context.beamToNamed('/geodata/new');
      },
    );
  }
}
