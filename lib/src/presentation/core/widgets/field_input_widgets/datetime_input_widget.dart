import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';

class DateTimeInputWidget extends BaseInputWidget {
  const DateTimeInputWidget({
    Key? key,
    required String name,
    required FieldValueEntity fieldValue,
    String? errorText,
    ValueChanged? onChanged,
  }) : super(
          key: key,
          name: name,
          fieldValue: fieldValue,
          onChanged: onChanged,
          errorText: errorText,
        );

  @override
  Widget build(BuildContext context) {
    final value = fieldValue.getValueOrNull<DateTime>();
    return ListTile(
      key: key,
      title: Text(value?.toString().replaceAll('-', '/') ?? ''),
      subtitle: Text(name),
      trailing: errorText != null
          ? Icon(
              Icons.info_outline_rounded,
              color: Colors.red.withOpacity(0.5),
            )
          : null,
      onTap: () async {
        final resultDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(DateTime.now().year + 100),
          currentDate: value,
        );
        if (resultDate != null) {
          final resultTime = await showTimePicker(
            context: context,
            initialTime: value != null
                ? TimeOfDay(hour: value.hour, minute: value.minute)
                : TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.input,
          );
          if (resultTime != null) {
            final result = DateTime(
              resultDate.year,
              resultDate.month,
              resultDate.day,
              resultTime.hour,
              resultTime.minute,
            );
            onChanged?.call(result);
          }
        }
      },
    );
  }
}
