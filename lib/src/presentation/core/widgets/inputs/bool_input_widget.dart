import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';

class BoolInputWidget extends BaseInputWidget {
  const BoolInputWidget({
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
    final value = fieldValue.getValueOrNull<bool>();
    return CheckboxListTile(
      key: key,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(name),
      value: value,
      onChanged: onChanged,
      // errorText: errorText,
    );
  }
}
