import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class StaticSelectionFieldInputWidget extends FieldInputWidget {
  const StaticSelectionFieldInputWidget({
    Key? key,
    required ColumnGetEntity column,
    required InputBloc<FieldValueEntity> inputBloc,
  }) : super(
          key: key,
          column: column,
          inputBloc: inputBloc,
        );

  @override
  Widget build(BuildContext context) {
    final List<String> items = getOptions(column.type.extradata?['options']);
    return InputBlocBuilder<FieldValueEntity>(
      bloc: inputBloc,
      builder: (context, state) {
        final value = state.value.value as String?;
        if (value != null && !items.contains(value)) {
          items.add(value);
        }
        return DropdownButtonFormField<String>(
          key: key,
          items: items
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          value: state.value.value as String?,
          icon: const SizedBox(),
          onChanged: (newValue) =>
              inputBloc.dirty(state.value.copyWithValue(newValue)),
          decoration: TextFieldDecorations.decoration(
            errorText: state.error,
            labelText: column.name,
            suffixIcon: const Icon(Icons.arrow_circle_down_rounded),
          ),
        );
      },
    );
  }
}

List<String> getOptions(dynamic jsonList) {
  List<String>? options;
  dynamic _jsonList = jsonList;

  if (_jsonList == null) return [];
  if (_jsonList is String?) {
    _jsonList = json.decode(_jsonList!);
    if (_jsonList == null) return [];
  }
  if (_jsonList is List?) {
    options = _jsonList!.map((e) => e as String).toList();
  }
  return options ?? [];
}
