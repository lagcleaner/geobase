import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';

import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widgets_reflect.dart';

@fieldInputWidgetReflector
class DateTimeFieldValueInputWidget extends FieldValueInputWidget {
  const DateTimeFieldValueInputWidget({
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
    return ListTile(
      key: key,
      title: Text(fieldValue.value?.toString() ?? ''),
      subtitle: Text(fieldValue.column.name),
      trailing: errorText != null
          ? Icon(
              Icons.info_outline_rounded,
              color: Colors.red.withOpacity(0.5),
            )
          : null,
      onTap: () async {
        final initialValue =
            DateTime.tryParse(fieldValue.value?.toString() ?? '');
        final resultDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(DateTime.now().year + 100),
          currentDate: initialValue,
        );
        if (resultDate != null) {
          final resultTime = await showTimePicker(
            context: context,
            initialTime: initialValue != null
                ? TimeOfDay(
                    hour: initialValue.hour, minute: initialValue.minute)
                : TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.input,
          );
          if (resultTime != null) {
            onChanged(
              DateTime(
                resultDate.year,
                resultDate.month,
                resultDate.day,
                resultTime.hour,
                resultTime.minute,
              ).toString(),
            );
          }
        }
      },
    );
  }
}
