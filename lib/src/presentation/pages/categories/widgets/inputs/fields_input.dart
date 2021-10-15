import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/src/domain/core/enums/field_type_enum.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/input_widget.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/field/fields_cubit.dart';
import 'package:get_it/get_it.dart';

class FieldsInputWidget extends StatefulWidget {
  const FieldsInputWidget({
    Key? key,
    this.onAdd,
    this.onRemoveWithName,
    this.onClear,
    this.fields = const {},
    this.errorText,
  }) : super(key: key);

  final Function(String, FieldTypeEnum)? onAdd;
  final Function(String)? onRemoveWithName;
  final Function()? onClear;

  //
  final Map<String, FieldTypeEnum> fields;

  final String? errorText;
  //TODO: SHOW THIS ERROR TEXT SOME WHERE

  @override
  State<FieldsInputWidget> createState() => _FieldsInputWidgetState();
}

class _FieldsInputWidgetState extends State<FieldsInputWidget> {
  @override
  Widget build(BuildContext context) {
    final fieldsCubit = GetIt.I<FieldsCubit>();
    return BlocBuilder<FieldsCubit, FieldsState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Campos'),
            const SizedBox(height: 10),
            // field name Input
            TextInputWidget(
              controller: TextEditingCustom.fromValue(state.name),
              onChanged: fieldsCubit.changeName,
              labelText: 'Nombre del campo*',
            ),
            const SizedBox(height: 10),
            // field type Input
            _FieldTypeInput(
              value: state.type,
              onChanged: fieldsCubit.changeType,
            ),
            const SizedBox(height: 10),
            // Add Button
            ElevatedButton(
              onPressed: state.type != null &&
                      state.name != '' &&
                      widget.fields[state.name] == null
                  ? () {
                      widget.onAdd?.call(state.name, state.type!);
                      fieldsCubit.clear();
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 3,
              children: widget.fields.entries
                  .map(
                    (e) => Chip(
                      padding: const EdgeInsets.all(3),
                      label: Text(e.key),
                      onDeleted: () => widget.onRemoveWithName?.call(e.key),
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}

class _FieldTypeInput extends StatelessWidget {
  const _FieldTypeInput({Key? key, this.value, required this.onChanged})
      : super(key: key);

  final FieldTypeEnum? value;
  final void Function(FieldTypeEnum? type) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<FieldTypeEnum>(
      items: FieldTypeEnum.values.map((FieldTypeEnum type) {
        return DropdownMenuItem(
          value: value,
          child: Row(
            children: <Widget>[
              Text(type.visualName()),
            ],
          ),
        );
      }).toList(),
      onChanged: onChanged,
      value: value,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Tipo de Dato*',
      ),
    );
  }
}
