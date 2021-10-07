import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/categories/category.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/utils.dart';
import 'package:geobase/src/presentation/pages/categories/blocS/categories/categories_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('Categories'),
      title: 'Categorías',
      child: CategoriesPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoriesBloc>()
        ..add(const CategoriesEvent.fetched(query: '')),
      child: const _CategoriesPageInternal(),
    );
  }
}

class _CategoriesPageInternal extends StatelessWidget {
  const _CategoriesPageInternal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          '$APP_NAME Categorías',
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
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Column(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                const Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      'Plantillas o Categorías disponibles\nEn la caja de texto de arriba puede buscarlas por nombre.',
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
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
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
          fetchSuccess: (patients) {
            return ListView(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                for (final patient in patients)
                  _CategoryWidget(category: patient),
                const SizedBox(height: 80),
              ],
            );
          },
          fetchSuccessNotFound: () {
            return Column(
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                const Flexible(
                  flex: 3,
                  child: Center(
                    child: SelectableText(
                      'No se encontraron categorías.',
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
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
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

class _CategoryWidget extends StatelessWidget {
  const _CategoryWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryGetEntity category;

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
            tileColor: category.color?.withOpacity(0.5),
            title: SelectableText(category.name),
            subtitle: SelectableText(category.id.toString()),
            trailing: IconButton(
              tooltip: 'Ver detalles de la Categoría',
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {
                context.beamToNamed('/categories/${category.id}');
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
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: (text) {
          context
              .read<CategoriesBloc>()
              .add(CategoriesEvent.fetched(query: text));
          focusNode.requestFocus();
        },
        keyboardType: TextInputType.text,
        autofocus: true,
        decoration: TextFieldDecorations.decoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              controller.text = '';
              context
                  .read<CategoriesBloc>()
                  .add(const CategoriesEvent.fetched(query: ''));
              focusNode.requestFocus();
            },
          ),
          prefixIcon: Icons.search,
          hintText: 'Buscar por Nombre',
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
      tooltip: 'Agregar Categoría',
      child: const Icon(Icons.add),
      onPressed: () {
        context.beamToNamed('/categories/new');
      },
    );
  }
}
