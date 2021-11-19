import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/field_view_widgets/field_view_widgets_reflect.dart';

@fieldViewWidgetReflector
abstract class BaseFieldValueListTile extends StatelessWidget
    implements IFieldValueListTile {
  const BaseFieldValueListTile({
    Key? key,
    required this.fieldValue,
  }) : super(key: key);

  @override
  final FieldValueGetEntity fieldValue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(fieldValue.value?.toString() ?? ''),
      subtitle: Text(
        '${fieldValue.column.name} '
        '(${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
      ),
    );
  }
}
