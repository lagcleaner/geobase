import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class StaticSelectionFieldInputWidget extends FieldInputWidget {
  const StaticSelectionFieldInputWidget({
    Key? key,
    required ColumnGetEntity column,
    required FieldValueEntity fieldValue,
    String? errorText,
    required ValueChanged onChanged,
  }) : super(
          key: key,
          column: column,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );

  @override
  Widget build(BuildContext context) {
    final items = (column.type.extradata?['options'] as List?)
            ?.map((e) => e as String)
            .toList() ??
        [];
    final value = fieldValue.value as String?;
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
      icon: const SizedBox(),
      onChanged: onChanged,
      decoration: TextFieldDecorations.decoration(
        errorText: errorText,
        labelText: column.name,
        suffixIcon: const Icon(Icons.arrow_circle_down_rounded),
      ),
    );
  }
}
