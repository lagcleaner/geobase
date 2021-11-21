import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class FieldViewWidget extends StatelessWidget {
  const FieldViewWidget({
    Key? key,
    required this.fieldValue,
  }) : super(key: key);

  final FieldValueGetEntity fieldValue;
}
