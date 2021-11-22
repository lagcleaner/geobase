import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeService {
  Future<Either<Failure, FieldTypeGetEntity>> loadFieldTypeById(
    int fieldTypeId,
  );

  Future<Either<Failure, List<FieldTypeGetEntity>>> loadAll();
}
