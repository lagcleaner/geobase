import 'package:dartz/dartz.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';

export '../utils/utils.dart';

abstract class IGeodataFormBloc extends FormBloc<Unit, Failure> {
  InputBloc<int> get categoryId;
  InputBloc<String> get latitude;
  InputBloc<String> get longitude;
  Map<ColumnGetEntity, InputBloc<FieldValueEntity>> get fieldValues;

  CategoryGetEntity get category;

  @override
  List<InputBloc> get inputs => [
        categoryId,
        latitude,
        longitude,
        ...fieldValues.values,
      ];
}
