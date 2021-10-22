import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';

class GeodataForm extends StatelessWidget {
  const GeodataForm({
    Key? key,
    required this.submmitButtonText,
  }) : super(key: key);

  final String submmitButtonText;

  @override
  Widget build(BuildContext context) {
    final formBloc = context.watch<IGeodataFormBloc>();
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
        SubmmitButton<IGeodataFormBloc>(label: submmitButtonText),
      ],
    );
  }
}

class _LatitudeInput extends StatelessWidget {
  const _LatitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<IGeodataFormBloc>();
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
    final formBloc = context.read<IGeodataFormBloc>();
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
          .read<IGeodataFormBloc>()
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
    final form = context.watch<IGeodataFormBloc>();
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
                    .read<IGeodataFormBloc>()
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
