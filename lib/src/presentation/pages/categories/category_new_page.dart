import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/blocs.dart';
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
    return BlocProvider<ICategoryCreateFormBloc>(
      create: getIt(),
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
          title: Text(
            'Nueva Categoría',
            style: Theme.of(context).textTheme.headline6,
          ),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: FormBlocListener<ICategoryCreateFormBloc, void, Failure>(
          bloc: context.read(),
          onSuccess: (_) {
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
          onError: (error) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: Colors.red.shade900,
                content: Text(
                  error.message ?? 'Ha ocurrido un error, vuelve a intentarlo.',
                ),
              ),
            ),
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: _CategoryCreateForm(),
            ),
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
      children: const [
        SizedBox(height: 10),
        Flexible(child: _NameInput()),
        SizedBox(height: 15),
        Flexible(child: _ColorInput()),
        SizedBox(height: 15),
        Flexible(child: _FieldsInput()),
        SizedBox(height: 15),
        Flexible(child: _RelationsInput()),
        SizedBox(height: 16),
        SubmmitButton<ICategoryCreateFormBloc>(
          label: 'Añadir Categoría',
        ),
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<ICategoryCreateFormBloc>();
    return InputBlocBuilder<String>(
      bloc: form.name,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value),
        labelText: 'Nombre*',
        errorText: state.error,
        onChanged: (value) => form.name.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _ColorInput extends StatelessWidget {
  const _ColorInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<ICategoryCreateFormBloc>();
    return InputBlocBuilder<Color?>(
      bloc: form.color,
      builder: (context, state) => TextButton(
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            titlePadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            content: SingleChildScrollView(
              child: ColorPicker(
                pickerColor: state.value ?? Colors.yellow,
                onColorChanged: form.color.dirty,
                pickerAreaHeightPercent: 0.7,
                displayThumbColor: true,
                pickerAreaBorderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Color'),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: state.value,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _FieldsInput extends StatelessWidget {
  const _FieldsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<ICategoryCreateFormBloc>();
    return InputBlocBuilder<Map<String, FieldTypeEnum>>(
      bloc: form.fields,
      builder: (context, state) => ColumnsInputWidget(
        fields: state.value,
        errorText: state.error,
        onAdd: (name, type) =>
            form.fields.dirty(Map.from(state.value)..[name] = type),
        onRemoveWithName: (name) =>
            form.fields.dirty(Map.from(state.value)..remove(name)),
        onClear: () => form.fields.dirty({}),
      ),
    );
  }
}

class _RelationsInput extends StatelessWidget {
  const _RelationsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<ICategoryCreateFormBloc>();
    return InputBlocBuilder<Map<String, int>>(
      bloc: form.relations,
      builder: (context, state) => RelationsInputWidget(
        relations: state.value,
        errorText: state.error,
        onAdd: (name, id) =>
            form.relations.dirty(Map.from(state.value)..[name] = id),
        onRemoveWithName: (name) =>
            form.relations.dirty(Map.from(state.value)..remove(name)),
        onClear: () => form.relations.dirty({}),
      ),
    );
  }
}
