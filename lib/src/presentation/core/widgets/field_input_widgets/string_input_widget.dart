import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class StringFieldInputWidget extends FieldInputWidget {
  const StringFieldInputWidget({
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
      onChanged: onChanged,
      controller:
          TextEditingCustom.fromValue(fieldValue.value?.toString() ?? ''),
      errorText: errorText,
    );
  }
}
