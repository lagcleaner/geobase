import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/extensions/reflectable_extensions.dart';
import 'package:reflectable/reflectable.dart';

class FieldViewWidgetReflector extends Reflectable {
  const FieldViewWidgetReflector()
      : super(
          typeCapability,
          typeRelationsCapability,
          newInstanceCapability,
        );
}

const fieldViewWidgetReflector = FieldViewWidgetReflector();

@fieldViewWidgetReflector
abstract class IFieldValueListTile {
  FieldValueGetEntity get fieldValue;
}

Widget getListTileByFieldValue(FieldValueGetEntity fieldValue) {
  try {
    final classMirror = fieldViewWidgetReflector.getClassMirrorWhere(
      namePrefix: fieldValue.column.type.metaType,
      nameSuffix: 'ListTile',
    );
    if (classMirror == null) throw UnimplementedError();
    final listTile = classMirror.newInstance(
      '',
      [],
      {const Symbol('fieldValue'): fieldValue},
    );
    return listTile as StatelessWidget;
  } catch (e) {
    log(e.toString());
    return ListTile(
      dense: true,
      title: Text(
        'No implementado para: ${fieldValue.column.type.metaType}.${fieldValue.column.type.name}.',
      ),
      subtitle: Text(
        '${fieldValue.column.name} (${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
      ),
    );
  }
}
