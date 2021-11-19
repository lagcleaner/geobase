import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';

class RemoteUrlInputWidget extends BaseInputWidget {
  const RemoteUrlInputWidget({
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
    final value = fieldValue.getValueOrNull<String>();
    return TextInputWidget(
      key: key,
      labelText: name,
      onChanged: onChanged,
      controller: value != null ? TextEditingCustom.fromValue(value) : null,
      errorText: errorText,
    );
  }
}