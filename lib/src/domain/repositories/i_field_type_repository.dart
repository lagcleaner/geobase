import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeRepository {
  Future<Either<Failure, List<FieldTypeGetEntity>>> loadFieldTypes();

  Future<Either<Failure, FieldTypeGetEntity>> getFieldType(int fieldTypeId);

  // Future<Either<Failure, int>> addFieldType(
  //   FieldTypePostEntity newFieldType,
  // );

  // Future<Either<Failure, Unit>> editFieldType(
  //   FieldTypePutEntity newFieldType,
  // );

  // Future<Either<Failure, Unit>> removeFieldType(int fieldTypeId);
}
