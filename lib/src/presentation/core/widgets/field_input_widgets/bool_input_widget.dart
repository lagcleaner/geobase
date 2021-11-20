import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class BoolFieldInputWidget extends FieldInputWidget {
  const BoolFieldInputWidget({
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
    return CheckboxListTile(
      key: key,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(column.name),
      value: (fieldValue.value as bool?) ?? false,
      onChanged: onChanged,
    );
  }
}
