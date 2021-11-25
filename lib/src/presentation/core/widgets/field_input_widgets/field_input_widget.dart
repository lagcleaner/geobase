import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';

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
}
