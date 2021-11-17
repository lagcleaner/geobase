import 'package:flutter/material.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class FieldListTile extends StatelessWidget {
  const FieldListTile({
    Key? key,
    required this.name,
    required this.fieldValue,
  }) : super(key: key);

  factory FieldListTile.widget(String name, FieldValueGetEntity fieldValue) {
    //TODO: APPLIES REFLECTABLE HERE
    switch (fieldValue.column.type) {
      // case FieldTypeEnum.BoolFieldType:
      // case FieldTypeEnum.IntFieldType:
      // case FieldTypeEnum.DoubleFieldType:
      // case FieldTypeEnum.StringFieldType:
      // case FieldTypeEnum.DateFieldType:
      // case FieldTypeEnum.DateTimeFieldType:
      // case FieldTypeEnum.TimeFieldType:
      // case FieldTypeEnum.DayFieldType:
      // case FieldTypeEnum.MonthFieldType:
      // case FieldTypeEnum.YearFieldType:
      // case FieldTypeEnum.WeekDayFieldType:
      // // case FieldTypeEnum.LocalAudioFieldType:
      // // case FieldTypeEnum.LocalFileFieldType:
      // // case FieldTypeEnum.LocalPhotoFieldType:
      // case FieldTypeEnum.RemoteUrlFieldType:
      default:
        return TextValueFieldListTile(name: name, fieldValue: fieldValue);
    }
  }

  final String name;
  final FieldValueGetEntity fieldValue;

  @override
  Widget build(BuildContext context);
}

class TextValueFieldListTile extends FieldListTile {
  const TextValueFieldListTile({
    Key? key,
    required String name,
    required FieldValueGetEntity fieldValue,
  }) : super(
          key: key,
          name: name,
          fieldValue: fieldValue,
        );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(fieldValue.value?.toString() ?? ''),
      subtitle: Text(
          '$name (${fieldValue.column.type.metaType}.${fieldValue.column.type.name})'),
    );
  }
}
