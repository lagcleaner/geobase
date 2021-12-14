import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/blocs.dart';
import 'package:icon_picker/material_icons%20all.dart';

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
      create: (_) => getIt<CategoryViewCubit>()..fetch(categoryId),
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
        title: const Text('Detalles de la Categoría'),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
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
          fetchFailure: (failure) {
            return FailureAndRetryWidget(
              errorText: failure,
              onPressed: () =>
                  context.read<CategoryViewCubit>().fetch(categoryId),
            );
          },
        );
      },
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
                final result = showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    title: const Text('Eliminar Categoría.'),
                    content: const Text(
                      'La acción es irreversible y pueden verse afectados '
                      'los datos relacionados a esta categoría. '
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
                    context.read<CategoryViewCubit>().remove(categoryId).then(
                          (value) => context.beamToNamed('/categories'),
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

class _CategoryViewBodyFetchInProgress extends StatelessWidget {
  const _CategoryViewBodyFetchInProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: Theme.of(context).primaryColor,
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
      mainAxisSize: MainAxisSize.min,
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
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: ListTile(
                  // dense: true,
                  title: Text(category.id.toString()),
                  subtitle: const Text('Id'),
                ),
              ),
              Expanded(
                child: ListTile(
                  // dense: true,
                  title: Icon(
                    MaterialIcons.mIcons[category.icon],
                    color: category.color != null
                        ? Color(category.color!)
                        : Theme.of(context).primaryColor,
                  ),
                  subtitle: Text(
                    category.color != null
                        ? Color(category.color!).toString()
                        : 'Color No Especificado',
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(category.name),
            subtitle: Text(
              (category.description ?? '').isNotEmpty
                  ? category.description!
                  : 'Sin descripción',
            ),
          ),
          const Divider(),
          Center(
            child: Text(
              'Columnas',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ...[
            for (final field in category.columns)
              ListTile(
                title: Text(
                  '${field.name}*',
                ),
                subtitle: Text(field.type.name),
              ),
          ],
          if (category.columns.isEmpty)
            const ListTile(title: Text('Sin Columnas')),
        ],
      ),
    );
  }
}
