import 'package:beamer/beamer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/notification_helper.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/column/column_field_bloc.dart';
import 'package:geobase/src/presentation/pages/categories/widgets/category_form_widget.dart';
import 'package:geobase/src/presentation/pages/categories/widgets/inputs/color_field_bloc_builder.dart';
import 'package:geobase/src/presentation/pages/categories/widgets/widgets.dart';

class CategoryNewPage extends StatelessWidget {
  const CategoryNewPage({
    Key? key,
  }) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('CategoryNew'),
      title: 'Nueva Categoría',
      child: CategoryNewPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCreateFormBloc>(
      create: (_) => getIt<CategoryCreateFormBloc>(),
      child: const _CategoryCreatePageInternal(),
    );
  }
}

class _CategoryCreatePageInternal extends StatelessWidget {
  const _CategoryCreatePageInternal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: const Text('Nueva Categoría'),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: FormBlocListener<CategoryCreateFormBloc, Unit, String>(
          formBloc: context.read<CategoryCreateFormBloc>(),
          onSuccess: (contex, state) => NotificationHelper.showSuccessSnackbar(
            context,
            message: 'La Categoría fue correctamente creada.',
            onShow: () => context.beamToNamed('/categories'),
          ),
          onFailure: (context, state) => NotificationHelper.showErrorSnackbar(
            context,
            message: state.failureResponse ??
                'Ha ocurrido un error, vuelva a intentarlo.',
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CategoryCreateForm<CategoryCreateFormBloc>(
              submitButtonText: 'Añadir Categoría',
            ),
          ),
        ),
      ),
    );
  }
}
