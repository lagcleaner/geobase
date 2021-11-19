import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';

import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widgets_reflect.dart';

@fieldInputWidgetReflector
class DateFieldValueInputWidget extends FieldValueInputWidget {
  const DateFieldValueInputWidget({
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
        final result = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(DateTime.now().year + 100),
          currentDate: DateTime.tryParse(fieldValue.value?.toString() ?? ''),
        );
        if (result != null) onChanged.call(result.toString().split(' ')[0]);
      },
    );
  }
}