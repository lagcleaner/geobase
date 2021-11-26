import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class FieldInputWidget extends StatelessWidget {
  const FieldInputWidget({
    Key? key,
    required this.column,
    required this.inputBloc,
  }) : super(key: key);

  final ColumnGetEntity column;
  final InputBloc<FieldValueEntity> inputBloc;

  @override
  Widget build(BuildContext context);
}
