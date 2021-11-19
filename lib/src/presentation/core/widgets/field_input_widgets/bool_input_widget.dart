import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widgets_reflect.dart';

@fieldInputWidgetReflector
class BoolFieldValueInputWidget extends FieldValueInputWidget {
  const BoolFieldValueInputWidget({
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
    final value = fieldValue.value as bool?;
    return CheckboxListTile(
      key: key,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(fieldValue.column.name),
      value: value,
      onChanged: (newValue) {
        onChanged(fieldValue..value = newValue);
      },
    );
  }
}
