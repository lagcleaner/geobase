import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class MonthInputWidget extends BaseInputWidget {
  const MonthInputWidget({
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
    final value = fieldValue.getValueOrNull<MonthEnum>();
    return DropdownButtonFormField<MonthEnum>(
      items: MonthEnum.values.map((MonthEnum month) {
        return DropdownMenuItem(
          value: month,
          child: Row(
            children: <Widget>[
              Text(month.visualName()),
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
