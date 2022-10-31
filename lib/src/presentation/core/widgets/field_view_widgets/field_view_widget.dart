import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class FieldViewWidget extends StatelessWidget {
  const FieldViewWidget({
    super.key,
    required this.fieldValue,
  });

  final FieldValueGetEntity fieldValue;
}
