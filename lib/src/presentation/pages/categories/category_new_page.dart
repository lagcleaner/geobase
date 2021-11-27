import 'package:beamer/beamer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/column/column_field_bloc.dart';
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
        // floatingActionButton: FloatingActionButton.extended(
        //   icon: const Icon(Icons.send_rounded),
        //   onPressed: context.read<CategoryCreateFormBloc>().submit,
        //   label: const Text('Añadir Categoría'),
        // ),
        body: FormBlocListener<CategoryCreateFormBloc, Unit, String>(
          formBloc: context.read<CategoryCreateFormBloc>(),
          onSuccess: (contex, state) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green.shade900,
                  content: const Text('La Categoría fue correctamente creada.'),
                ),
              );
            context.beamToNamed('/categories');
          },
          onFailure: (context, state) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: Colors.red.shade900,
                content: Text(
                  state.failureResponse ??
                      'Ha ocurrido un error, vuelva a intentarlo.',
                ),
              ),
            ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: _CategoryCreateForm(),
          ),
        ),
      ),
    );
  }
}

class _CategoryCreateForm extends StatelessWidget {
  const _CategoryCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Expanded(child: _Inputs()),
        MainButton(
          onPressed: context.read<CategoryCreateFormBloc>().submit,
          text: 'Añadir Categoría',
        )
      ],
    );
  }
}

class _Inputs extends StatelessWidget {
  const _Inputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(height: 10),
          Flexible(child: _NameInput()),
          SizedBox(height: 15),
          Flexible(child: _DescriptionInput()),
          SizedBox(height: 15),
          Flexible(child: _ColorInput()),
          SizedBox(height: 15),
          Flexible(child: _IconInput()),
          SizedBox(height: 15),
          Flexible(child: _FieldsInput()),
          SizedBox(height: 75),
        ],
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<CategoryCreateFormBloc>();
    return TextFieldBlocBuilder(
      textFieldBloc: formBloc.name,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Nombre*',
        prefixIcon: Icons.text_fields_outlined,
      ),
    );
  }
}

class _DescriptionInput extends StatelessWidget {
  const _DescriptionInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<CategoryCreateFormBloc>();
    return TextFieldBlocBuilder(
      textFieldBloc: formBloc.description,
      maxLines: 3,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Descripción*',
        prefixIcon: Icons.text_fields_outlined,
      ),
    );
  }
}

class _ColorInput extends StatelessWidget {
  const _ColorInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<CategoryCreateFormBloc>();
    return ColorFieldBlocBuilder(
      colorFieldBloc: formBloc.color,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Color',
      ),
    );
  }
}

class _IconInput extends StatelessWidget {
  const _IconInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<CategoryCreateFormBloc>();
    return IconFieldBlocBuilder(
      iconFieldBloc: formBloc.icon,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Icono*',
      ),
    );
  }
}

class _FieldsInput extends StatelessWidget {
  const _FieldsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<CategoryCreateFormBloc>();
    return BlocBuilder<ListFieldBloc<ColumnFieldBloc>,
        ListFieldBlocState<ColumnFieldBloc>>(
      bloc: formBloc.columns,
      builder: (context, state) {
        return Column(
          children: [
            if (state.fieldBlocs.isNotEmpty) ...[
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.fieldBlocs.length,
                itemBuilder: (context, i) {
                  return _ColumnCardInput(
                    columnIndex: i,
                    columnField: state.fieldBlocs[i],
                    onRemoveMember: () => formBloc.removeColumn(i),
                  );
                },
              ),
            ],
            TextButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Añadir Columna'),
              onPressed: () {
                formBloc.addNewColumn();
              },
            ),
          ],
        );
      },
    );
  }
}

class _ColumnCardInput extends StatelessWidget {
  const _ColumnCardInput({
    Key? key,
    required this.columnIndex,
    required this.columnField,
    required this.onRemoveMember,
  }) : super(key: key);

  final int columnIndex;

  final ColumnFieldBloc columnField;

  final VoidCallback onRemoveMember;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Columna #${columnIndex + 1}',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: columnField.columnName,
              decoration: TextFieldDecorations.decoration(
                labelText: 'Nombre*',
              ),
            ),
            DropdownFieldBlocBuilder(
              selectFieldBloc: columnField.type,
              decoration: TextFieldDecorations.decoration(
                labelText: 'Tipo de Datos*',
              ),
              itemBuilder: (context, FieldTypeGetEntity value) =>
                  '${value.metaType} - ${value.name}',
            ),
            IconButton(
              icon: const Icon(Icons.highlight_remove_rounded),
              onPressed: onRemoveMember,
            ),
          ],
        ),
      ),
    );
  }
}
