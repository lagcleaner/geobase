import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/extensions/color_extension.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/utils.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/categorylist/categorylist_bloc.dart';

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
      create: (_) => getIt<CategoryListBloc>(),
      child: const _CategoriesPageInternal(),
    );
  }
}

class _CategoriesPageInternal extends StatelessWidget {
  const _CategoriesPageInternal({Key? key}) : super(key: key);

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
          title: const Text('Lista de Categorías'),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: _Body(),
        floatingActionButton: const _FloatingActionButton(),
      ),
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
    return BlocBuilder<CategoryListBloc, CategoryListState>(
      bloc: context.read<CategoryListBloc>(),
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
                Flexible(
                  flex: 3,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                const Flexible(flex: 2, child: SizedBox.shrink()),
              ],
            );
          },
          fetchSuccess: (categories) {
            return ListView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              children: [
                _QueryInput(
                  key: queryWidgetKey,
                  controller: queryController,
                  focusNode: focusNode,
                ),
                for (final category in categories)
                  _CategoryWidget(category: category),
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
    final color = category.color != null
        ? Color(category.color!).withOpacity(0.5)
        : Colors.white;
    final subtitle2 = Theme.of(context).textTheme.subtitle2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: SelectableText(
              category.name,
              style: subtitle2?.copyWith(
                color: subtitle2.color?.getContrastColor(color),
              ),
            ),
            subtitle: SelectableText(category.description ?? ''),
            leading: Icon(
              IconCodeUtils.decode(category.icon),
            ),
            trailing: IconButton(
              tooltip: 'Ver detalles de la Categoría',
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context)
                    .colorScheme
                    .secondary
                    .getContrastColor(color),
              ),
              onPressed: () {
                context.beamToNamed('/categories/${category.id}');
                context
                    .read<CategoryListBloc>()
                    .add(const CategoryListEvent.fetched(query: ''));
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
        controller: context.watch<CategoryListBloc>().state.maybeMap(
              initial: (_) => controller..clear(),
              orElse: () => controller,
            ),
        focusNode: focusNode,
        onChanged: (text) {
          context
              .read<CategoryListBloc>()
              .add(CategoryListEvent.fetched(query: text));
          focusNode.requestFocus();
        },
        keyboardType: TextInputType.text,
        autofocus: true,
        decoration: TextFieldDecorations.decoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              controller.clear();
              context
                  .read<CategoryListBloc>()
                  .add(const CategoryListEvent.fetched(query: ''));
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
      heroTag: null,
      child: const Icon(Icons.add),
      onPressed: () {
        context.beamToNamed('/categories/new');
        context
            .read<CategoryListBloc>()
            .add(const CategoryListEvent.fetched(query: ''));
      },
    );
  }
}
