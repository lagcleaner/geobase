import 'package:dartz/dartz.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';

export '../utils/utils.dart';

abstract class GeodataFormBloc extends LyForm<Unit, Failure> {
  GeodataFormBloc() {
    addInputs(inputs);
  }

  LyInput<int> get categoryId;
  LyInput<String> get latitude;
  LyInput<String> get longitude;
  Map<ColumnGetEntity, LyInput<FieldValueEntity>> get fieldValues;

  CategoryGetEntity get category;

  List<LyInput> get inputs => [
        categoryId,
        latitude,
        longitude,
        ...fieldValues.values,
      ];
}
