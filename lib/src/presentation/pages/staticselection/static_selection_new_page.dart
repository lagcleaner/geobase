import 'package:beamer/beamer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/widgets/inputs/autoremovable_input_bloc.dart';
import 'package:geobase/src/presentation/pages/staticselection/blocs/static_selection_form/static_selection_create_form_bloc.dart';

class StaticSelectionNewPage extends StatelessWidget {
  const StaticSelectionNewPage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('StaticSelectionNew'),
      title: 'Nueva Selección Estática',
      child: StaticSelectionNewPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StaticSelectionCreateFormBloc>(
      create: (context) => getIt<StaticSelectionCreateFormBloc>()..reload(),
      child: const _StaticSelectionNewInternalPage(),
    );
  }
}

class _StaticSelectionNewInternalPage extends StatelessWidget {
  const _StaticSelectionNewInternalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text('Nueva Selección'),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<StaticSelectionCreateFormBloc, Unit, String>(
      formBloc: context.read<StaticSelectionCreateFormBloc>(),
      onSuccess: (contex, state) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: Colors.green.shade900,
              content: const Text(
                'La selección estática fue correctamente creada.',
              ),
            ),
          );
        context.beamToNamed('/staticselection');
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
        child: _StaticSelectionCreateForm(),
      ),
    );
  }
}

class _StaticSelectionCreateForm extends StatelessWidget {
  const _StaticSelectionCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: _Inputs()),
        MainButton(
          onPressed: context.read<StaticSelectionCreateFormBloc>().submit,
          text: 'Añadir Selección Estática',
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
          Flexible(child: _OptionsInput()),
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
    final formBloc = context.read<StaticSelectionCreateFormBloc>();
    return TextFieldBlocBuilder(
      textFieldBloc: formBloc.name,
      // padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: TextFieldDecorations.decoration(
        labelText: 'Nombre*',
      ),
    );
  }
}

class _OptionsInput extends StatelessWidget {
  const _OptionsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<StaticSelectionCreateFormBloc>();
    return BlocBuilder<ListFieldBloc<TextFieldBloc>,
        ListFieldBlocState<TextFieldBloc>>(
      bloc: formBloc.options,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(),
            Text(
              'Opciones*',
              style: Theme.of(context).textTheme.headline6,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.fieldBlocs.length,
              itemBuilder: (context, i) {
                return AutoremovableListFieldBlocInput(
                  bloc: state.fieldBlocs[i],
                  index: i,
                  label: 'Opción #(${i + 1})*',
                );
              },
            ),
          ],
        );
      },
    );
  }
}
