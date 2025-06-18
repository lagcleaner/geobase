import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/extensions/color_extension.dart';
import 'package:geobase/src/presentation/core/utils/notification_helper.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/categories_exporter/categories_exporter_cubit.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/categories_importer/categories_importer_cubit.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/categorylist/categorylist_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('Categories'),
      title: 'Categorías',
      child: CategoriesPage(),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<CategoryListBloc>()
            ..add(CategoryListEvent.fetched(query: '')),
        ),
        BlocProvider(
          create: (_) => getIt<CategoriesExporterCubit>(),
        ),
        BlocProvider(
          create: (_) => CategoriesImporterCubit(),
        ),
      ],
      child: const _CategoriesPageInternal(),
    );
  }
}

class _CategoriesPageInternal extends StatelessWidget {
  const _CategoriesPageInternal();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoryListBloc, CategoryListState>(
      listener: (context, state) {
        state.maybeMap(
          fetchSuccess: (state) => context
              .read<CategoriesExporterCubit>()
              .updateLoaded(state.categories),
          orElse: () => context
              .read<CategoriesExporterCubit>()
              .updateLoaded(<CategoryGetEntity>[]),
        );
      },
      child: WillPopScope(
        onWillPop: () async {
          context.beamToNamed('/options');
          return false;
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).canvasColor,
          appBar: GeoAppBar(
            title: const Text('Lista de Categorías'),
          ),
          body: _Body(),
          floatingActionButton: const _FloatingActionButton(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  _Body();

  final Key queryWidgetKey = const Key('queryWidgetKey');
  final queryController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoriesExporterCubit, CategoriesExporterState>(
      listener: (context, state) {
        if (state.status.isLoading)
          return;
        else if (state.status.isFailure || state.message != null) {
          NotificationHelper.showErrorSnackbar(
            context,
            message: state.message!,
          );
          return;
        } else if (state.status ==
                CategoryExporterStatus.FetchSuccessNotFound ||
            state.message != null) {
          NotificationHelper.showInfoSnackbar(context, message: state.message!);
        } else if (state.status == CategoryExporterStatus.ExportSuccess ||
            state.message != null) {
          NotificationHelper.showSuccessSnackbar(context,
              message: state.message!);
        }
      },
      child: BlocBuilder<CategoryListBloc, CategoryListState>(
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
      ),
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  const _CategoryWidget({
    required this.category,
  });

  final CategoryGetEntity category;

  @override
  Widget build(BuildContext context) {
    final color = category.color != null
        ? Color(category.color!).withOpacity(0.5)
        : Colors.white;
    final titleSmall = Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context)
              .textTheme
              .titleSmall
              ?.color
              ?.getContrastColor(color),
        );
    final bodyMedium = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.color
              ?.getContrastColor(color),
        );
    ;
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
            title: SelectableText(category.name, style: titleSmall),
            subtitle: Text(category.description ?? '', style: bodyMedium),
            onTap: () {
              context.beamToNamed('/categories/${category.id}');
              context
                  .read<CategoryListBloc>()
                  .add(const CategoryListEvent.fetched(query: ''));
            },
            leading: Icon(
              IconCodeUtils.decode(category.icon) ??
                  Icons.question_mark_rounded,
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
    super.key,
    required this.controller,
    required this.focusNode,
  });

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
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          tooltip: 'Importar categorías',
          heroTag: 'import_button',
          child: const Icon(Icons.upload_file),
          onPressed: () {
            context.read<CategoriesImporterCubit>().importFromJson();
          },
        ),
        const SizedBox(height: 16),
        FloatingActionButton(
          tooltip: 'Exportar categorías',
          heroTag: 'export_button',
          child: context.read<CategoriesExporterCubit>().state.status.isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                )
              : const Icon(Icons.download),
          onPressed: () =>
              context.read<CategoriesExporterCubit>().exportToJson(),
        ),
        const SizedBox(height: 16),
        FloatingActionButton(
          tooltip: 'Agregar Categoría',
          heroTag: 'add_button',
          child: const Icon(Icons.add),
          onPressed: () {
            context.beamToNamed('/categories/new');
            context
                .read<CategoryListBloc>()
                .add(const CategoryListEvent.fetched(query: ''));
          },
        ),
      ],
    );
  }
}
