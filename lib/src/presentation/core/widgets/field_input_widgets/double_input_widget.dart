import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class DoubleFieldValueInputWidget extends FieldInputWidget {
  const DoubleFieldValueInputWidget({
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
    return TextInputWidget(
      key: key,
      labelText: column.name,
      onChanged: (newValue) => onChanged(
        double.tryParse(newValue.trim()) ?? 0,
      ),
      controller: TextEditingCustom.fromValue(
        fieldValue.value?.toString() ?? '0.0',
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: true,
      ),
      errorText: errorText,
    );
  }
}
