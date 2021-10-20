import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_shower/cubit/geodata_shower_cubit.dart';
import 'package:latlong2/latlong.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/widgets/inputs/fields_input.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart';

import 'blocs/geodata_create_form/geodatacreate_form_bloc.dart';

class GeoDataNewPage extends StatelessWidget {
  const GeoDataNewPage({
    Key? key,
    this.ubication,
  }) : super(key: key);

  final LatLng? ubication;

  static BeamPage getPage(
    BuildContext context,
    LatLng? latLng,
  ) {
    // navigate from map with latLng, or from geodata list to manually enter the latLng
    return BeamPage(
      key: const ValueKey('GeoDataNew'),
      title: 'Nuevo punto georeferenciado',
      child: GeoDataNewPage(
        ubication: latLng,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeodataCreateCubit>(
      create: (_) => getIt()..loadCategories(),
      child: _GeodataCreatePageInternal(
        location: ubication,
      ),
    );
  }
}

class _GeodataCreatePageInternal extends StatelessWidget {
  const _GeodataCreatePageInternal({
    Key? key,
    this.location,
  }) : super(key: key);

  final LatLng? location;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: Text(
            'Nuevo Punto de Interés',
            style: Theme.of(context).textTheme.headline6,
          ),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: BlocBuilder<GeodataCreateCubit, GeodataCreateState>(
          bloc: context.read(),
          builder: (context, state) {
            return state.maybeMap(
              categorySelection: (categorySelection) =>
                  _GeodataCategorySelectionBody(
                categories: categorySelection.categories,
                onSelectedCategory: (categoryId) => context
                    .read<GeodataCreateCubit>()
                    .loadTemplate(categoryId, location),
              ),
              inputData: (inputData) => _GeodataCreateFormBody(
                category: inputData.fetchData.category,
                location: location ?? inputData.fetchData.location,
              ),
              failure: (failureState) => _GeodataFailureBody(
                errorText: failureState.failure.message?.toString() ?? '',
                onPressed: () =>
                    context.read<GeodataCreateCubit>().loadCategories(),
              ),
              orElse: () => Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  strokeWidth: 2.0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _GeodataCategorySelectionBody extends StatelessWidget {
  const _GeodataCategorySelectionBody({
    Key? key,
    required this.categories,
    required this.onSelectedCategory,
  }) : super(key: key);

  final Function(int categoryId) onSelectedCategory;
  final List<CategoryGetEntity> categories;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField<int>(
        items: categories.map((CategoryGetEntity categ) {
          return DropdownMenuItem(
            value: categ.id,
            child: Row(
              children: <Widget>[
                Text(categ.name),
              ],
            ),
          );
        }).toList(),
        onChanged: (selected) =>
            selected != null ? onSelectedCategory(selected) : null,
        decoration: TextFieldDecorations.decoration(
          suffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined),
          prefixIcon: Icons.category,
          labelText: 'Categoría',
        ),
      ),
    );
  }
}

class _GeodataFailureBody extends StatelessWidget {
  const _GeodataFailureBody({
    Key? key,
    required this.errorText,
    required this.onPressed,
  }) : super(key: key);

  final String errorText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          const Text("Ha ocurrido un error :'("),
          Text(errorText),
          const SizedBox(height: 16),
          MainButton(
            text: 'Reintentar',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class _GeodataCreateFormBody extends StatelessWidget {
  const _GeodataCreateFormBody({
    Key? key,
    required this.category,
    this.location,
  }) : super(key: key);

  final CategoryGetEntity category;
  final LatLng? location;

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<IGeodataCreateFormBloc, void, Failure>(
      bloc: context.read(),
      onSuccess: (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: Colors.green.shade900,
              content: const Text('El punto fue correctamente añadido.'),
            ),
          );
        context.beamToNamed('/geodata');
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
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: _GeodataCreateForm(
            category: category,
            location: location,
          ),
        ),
      ),
    );
  }
}

class _GeodataCreateForm extends StatelessWidget {
  const _GeodataCreateForm({
    Key? key,
    required this.category,
    this.location,
  }) : super(key: key);

  final CategoryGetEntity category;
  final LatLng? location;

  @override
  Widget build(BuildContext context) {
    final formBloc = context.watch<IGeodataCreateFormBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Row(
          children: const [
            Flexible(child: _LatitudeInput()),
            SizedBox(width: 8),
            Flexible(child: _LongitudeInput()),
          ],
        ),
        const Divider(height: 10),
        ...formBloc.fieldInputBlocs.entries
            .map(
              (e) => [
                Flexible(
                  child: _FieldInputWidget(
                    name: e.key,
                    type: formBloc.category.fields[e.key] ??
                        FieldTypeEnum.StringFieldType,
                    value: e.value,
                    errorText: formBloc.fieldInputBlocs[e.key]!.state.error,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            )
            .reduce((value, element) => value..addAll(element)),
        const Divider(height: 10),
        ...formBloc.relationInputBlocs.entries
            .map(
              (e) => [
                Flexible(
                  child: _RelationInputWidget(
                    key: Key(e.key),
                    name: e.key,
                    categoryRelationId: formBloc.category.relations[e.key]!.id,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            )
            .reduce((value, element) => value..addAll(element)),
        const SizedBox(height: 8),
        const SubmmitButton<IGeodataCreateFormBloc>(label: 'Añadir Punto'),
      ],
    );
  }
}

class _LatitudeInput extends StatelessWidget {
  const _LatitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<IGeodataCreateFormBloc>();
    return InputBlocBuilder<String>(
      bloc: formBloc.latitude,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value),
        labelText: 'Latitud',
        errorText: state.error,
        onChanged: (value) => formBloc.latitude.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _LongitudeInput extends StatelessWidget {
  const _LongitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<IGeodataCreateFormBloc>();
    return InputBlocBuilder<String>(
      bloc: formBloc.longitude,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value),
        labelText: 'Longitud',
        errorText: state.error,
        onChanged: (value) => formBloc.longitude.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _FieldInputWidget extends StatelessWidget {
  const _FieldInputWidget({
    Key? key,
    required this.name,
    required this.value,
    required this.type,
    this.errorText,
  }) : super(key: key);

  final String name;
  final dynamic value;
  final FieldTypeEnum type;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return BaseInputWidget.widget(
      name: name,
      fieldValue: FieldValueEntity(
        type: type,
        value: value,
      ),
      errorText: errorText,
      onChanged: (newValue) => context
          .read<IGeodataCreateFormBloc>()
          .fieldInputBlocs[name]!
          .dirty(newValue),
    );
  }
}

class _RelationInputWidget extends StatelessWidget {
  const _RelationInputWidget({
    Key? key,
    required this.name,
    this.value,
    required this.categoryRelationId,
  }) : super(key: key);

  final String name;
  final int? value;
  final int categoryRelationId;

  @override
  Widget build(BuildContext context) {
    final geodataShower = getIt<GeodataShowerCubit>();
    final form = context.watch<IGeodataCreateFormBloc>();
    // value: formBloc.relationInputBlocs[e.key]!.state.value,
    // errorText: formBloc.relationInputBlocs[e.key]!.state.error,
    return BlocBuilder<GeodataShowerCubit, GeodataShowerState>(
      bloc: geodataShower..loadGeodata(categoryRelationId),
      builder: (context, state) {
        return state.maybeMap(
          state: (state) => InputBlocBuilder<int?>(
            bloc: form.relationInputBlocs[name]!,
            builder: (context, inputState) {
              return DropdownButtonFormField<int>(
                items: state.geodataList
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.id,
                        child: Row(
                          children: [
                            Text('${e.location.toString()} - id: ${e.id}'),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                value: inputState.value,
                onChanged: (newValue) => context
                    .read<IGeodataCreateFormBloc>()
                    .relationInputBlocs[name]!
                    .dirty(newValue),
                decoration: TextFieldDecorations.decoration(
                  errorText: inputState.error,
                  labelText: name,
                ),
              );
            },
          ),
          orElse: () {
            if (state.maybeMap(failure: (_) => true, orElse: () => false)) {
              Future.delayed(
                const Duration(seconds: 3),
                () => geodataShower.loadGeodata(categoryRelationId),
              );
            }
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Theme.of(context).primaryColor,
              ),
            );
          },
        );
      },
    );
  }
}
