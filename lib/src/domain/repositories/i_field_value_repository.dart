import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldValueRepository {
  Future<Either<Failure, List<FieldValueGetEntity>>> loadFieldValuesFromGeodata(
    int geodataId,
  );

  Future<Either<Failure, FieldValueGetEntity>> getFieldValue(int fieldValueId);

  // Future<Either<Failure, int>> addFieldValue(
  //   FieldValuePostEntity newFieldValue,
  // );

  Future<Either<Failure, int>> editFieldValue(
    FieldValuePutEntity newFieldValue,
  );

  // Future<Either<Failure, Unit>> removeFieldValue(int fieldValueId);
}
