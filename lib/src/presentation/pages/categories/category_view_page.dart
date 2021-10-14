import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/blocs.dart';
import 'package:get_it/get_it.dart';

class CategoryViewPage extends StatelessWidget {
  const CategoryViewPage({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int categoryId;

  static BeamPage getPage(BuildContext context, int categoryId) {
    return BeamPage(
      key: const ValueKey('CategoryDetails'),
      title: 'Detalles de Categoría',
      child: CategoryViewPage(
        categoryId: categoryId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryViewCubit>(
      create: (_) => GetIt.I()..fetch(categoryId),
      child: _CategoryViewPageInternal(categoryId: categoryId),
    );
  }
}

class _CategoryViewPageInternal extends StatelessWidget {
  const _CategoryViewPageInternal({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          'Detalles de la Categoría',
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () =>
                context.read<CategoryViewCubit>().fetch(categoryId),
          ),
        ],
      ),
      body: _CategoryViewBody(categoryId: categoryId),
    );
  }
}

class _CategoryViewBody extends StatelessWidget {
  const _CategoryViewBody({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryViewCubit, CategoryViewState>(
      builder: (context, state) {
        return state.when(
          fetchInProgress: () {
            return const _CategoryViewBodyFetchInProgress();
          },
          fetchSuccess: (category) {
            return _CategoryViewBodyFetchSuccess(
              category: category,
            );
          },
          fetchFailure: (_) {
            return _CategoryViewBodyFetchFailure(
              categoryId: categoryId,
            );
          },
        );
      },
    );
  }
}

class _CategoryViewBodyFetchFailure extends StatelessWidget {
  const _CategoryViewBodyFetchFailure({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Ha ocurrido un error durante'
            ' la obtención de la información de la Categoría.',
          ),
          MainButton(
            text: 'Reintentar',
            onPressed: () {
              context.read<CategoryViewCubit>().fetch(categoryId);
            },
          ),
        ],
      ),
    );
  }
}

class _CategoryViewBodyFetchSucessBottom extends StatelessWidget {
  const _CategoryViewBodyFetchSucessBottom({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int categoryId;

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
                //TODO: DEFINIR SI SE PERMITIRA EDITAR CATEGORIAS
                context.beamToNamed(
                  '/categories/$categoryId/edit',
                );
              },
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MainButton(
              text: 'Eliminar',
              onPressed: () {
                //TODO: Eliminar Categoria

                // context.beamToNamed(
                //   '/categories/$categoryId/editegreso',
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryViewBodyFetchInProgress extends StatelessWidget {
  const _CategoryViewBodyFetchInProgress({
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

class _CategoryViewBodyFetchSuccess extends StatelessWidget {
  const _CategoryViewBodyFetchSuccess({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryGetEntity category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _CategoryViewBasicInfo(
            category: category,
          ),
        ),
        _CategoryViewBodyFetchSucessBottom(
          categoryId: category.id,
        ),
      ],
    );
  }
}

class _CategoryViewBasicInfo extends StatelessWidget {
  const _CategoryViewBasicInfo({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryGetEntity category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(category.id.toString()),
                subtitle: const Text('Id'),
              ),
            ),
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(category.color?.toString() ?? 'No Especificado'),
                subtitle: const Text('Color(RGB)'),
              ),
            ),
          ],
        ),
        ListTile(
          dense: true,
          title: Text(category.name),
          subtitle: const Text('Nombre'),
        ),
        const Divider(),
        const Center(child: Text('Relaciones')),
        ...[
          for (final relation in category.relations.entries)
            ListTile(
              dense: true,
              title: Text(
                relation.key,
              ),
              subtitle: Text('Categoría(${relation.value.name})'),
            ),
        ],
        if (category.relations.isEmpty)
          const ListTile(dense: true, title: Text('Sin Relaciones')),
        const Divider(),
        const Center(child: Text('Campos')),
        ...[
          for (final field in category.fields.entries)
            ListTile(
              dense: true,
              title: Text(
                '${field.key}*',
              ),
              subtitle: Text(field.value.visualName()),
            ),
        ],
        if (category.relations.isEmpty)
          const ListTile(dense: true, title: Text('Sin Campos')),
      ],
    );
  }
}
