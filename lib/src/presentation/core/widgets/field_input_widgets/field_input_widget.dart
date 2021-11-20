import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reflectable/reflectable.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';
import 'package:geobase/src/presentation/core/extensions/reflectable_extensions.dart';

abstract class FieldInputWidget extends StatelessWidget {
  const FieldInputWidget({
    Key? key,
    required this.column,
    this.errorText,
    required this.onChanged,
    required this.fieldValue,
  }) : super(key: key);

  final ColumnGetEntity column;

  final String? errorText;

  final ValueChanged onChanged;

  final FieldValueEntity fieldValue;

  @override
  Widget build(BuildContext context);

  static Widget getFieldValueInputWidget({
    required FieldValueGetEntity fieldValue,
    String? errorText,
    required ValueChanged onChanged,
  }) {
    return const SizedBox();
    // try {
    //   final classMirror = fieldInputWidgetReflector.getClassMirrorWhere(
    //     nameSuffix: 'InputWidget',
    //     aditionalCondition: (cm) {
    //       if (cm.isAbstract) return false;
    //       if (!cm.superinterfaces
    //           .any((e) => e.simpleName == 'FieldValueInputWidget')) {
    //         return false;
    //       }
    //       //FieldType name or metaType
    //       if (fieldValue.column.type.metaType == BASE_METATYPE_NAME) {
    //         return cm.simpleName.startsWith(fieldValue.column.type.name);
    //       }
    //       return cm.simpleName.startsWith(fieldValue.column.type.metaType);
    //     },
    //   );
    //   if (classMirror == null) throw UnimplementedError();
    //   final field = classMirror.newInstance('', [], {
    //     const Symbol('key'): Key('input_${fieldValue.id}'),
    //     const Symbol('name'): fieldValue.column.name,
    //     const Symbol('errorText'): errorText,
    //     const Symbol('onChanged'): (newValue) {
    //       onChanged(fieldValue..value = newValue);
    //     },
    //   });
    //   return field as Widget;
    // } catch (e) {
    //   log(e.toString());
    //   return ListTile(
    //     dense: true,
    //     title: Text(
    //       'No implementado para: ${fieldValue.column.type.metaType}.${fieldValue.column.type.name}.',
    //     ),
    //     subtitle: Text(
    //       '${fieldValue.column.name} (${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
    //     ),
    //   );
    // }
  }
}