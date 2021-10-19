import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class WeekDayInputWidget extends BaseInputWidget {
  const WeekDayInputWidget({
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
    final value = fieldValue.getValueOrNull<WeekDayEnum>();
    return DropdownButtonFormField<WeekDayEnum>(
      items: WeekDayEnum.values.map((WeekDayEnum day) {
        return DropdownMenuItem(
          value: day,
          child: Row(
            children: <Widget>[
              Text(day.visualName()),
            ],
          ),
        );
      }).toList(),
      onChanged: onChanged,
      value: value,
      decoration: TextFieldDecorations.decoration(
        errorText: errorText,
        labelText: name,
      ),
    );
  }
}
