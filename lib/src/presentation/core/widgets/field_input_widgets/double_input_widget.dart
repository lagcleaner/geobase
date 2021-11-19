import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widgets_reflect.dart';

@fieldInputWidgetReflector
class DoubleFieldValueInputWidget extends FieldValueInputWidget {
  const DoubleFieldValueInputWidget({
    Key? key,
    required FieldValueGetEntity fieldValue,
    String? errorText,
    required ValueChanged onChanged,
  }) : super(
          key: key,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );

  @override
  Widget build(BuildContext context) {
    return TextInputWidget(
      key: key,
      labelText: fieldValue.column.name,
      onChanged: (newValue) => onChanged(
        double.tryParse(
          newValue.trim(),
        ),
      ),
      controller: TextEditingCustom.fromValue(
        fieldValue.value?.toString() ?? '0.0',
      ),
      keyboardType:
          const TextInputType.numberWithOptions(decimal: true, signed: true),
      errorText: errorText,
    );
  }
}
