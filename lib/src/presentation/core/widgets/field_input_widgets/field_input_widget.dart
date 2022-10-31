import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class FieldInputWidget extends StatelessWidget {
  const FieldInputWidget({
    super. key,
    required this.column,
    required this.inputBloc,
  });

  final ColumnGetEntity column;
  final LyInput<FieldValueEntity> inputBloc;

  @override
  Widget build(BuildContext context);
}
