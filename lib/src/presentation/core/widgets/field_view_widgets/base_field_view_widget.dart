import 'package:flutter/material.dart';
import 'package:geobase/src/presentation/core/widgets/field_view_widgets/field_view_widget.dart';

class BaseFieldView extends FieldViewWidget {
  const BaseFieldView({
    super.key,
    required super.fieldValue,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(fieldValue.value?.toString() ?? ''),
      subtitle: Text(
        '${fieldValue.column.name} '
        '(${fieldValue.column.type.metaType} - ${fieldValue.column.type.name})',
      ),
    );
  }
}
