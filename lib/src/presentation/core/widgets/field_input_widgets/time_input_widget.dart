import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/time_entity.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';

class TimeInputWidget extends BaseInputWidget {
  const TimeInputWidget({
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
    final value = fieldValue.getValueOrNull<TimeEntity>();
    return ListTile(
      key: key,
      title: Text(value?.toVisualString() ?? ''),
      subtitle: Text(name),
      trailing: errorText != null
          ? Icon(
              Icons.info_outline_rounded,
              color: Colors.red.withOpacity(0.5),
            )
          : null,
      onTap: () async {
        final result = await showTimePicker(
          context: context,
          initialTime: value != null
              ? TimeOfDay(hour: value.hour, minute: value.minute)
              : TimeOfDay.now(),
          initialEntryMode: TimePickerEntryMode.input,
        );

        if (result != null) {
          final trueResult =
              TimeEntity(hour: result.hour, minute: result.minute);
          onChanged?.call(trueResult);
        }
      },
    );
  }
}
