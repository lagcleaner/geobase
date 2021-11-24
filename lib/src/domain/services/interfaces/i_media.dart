import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeMediaService {
  Future<Either<Failure, FieldTypeMediaGetEntity>> loadById(
    int fieldTypeId,
  );

  Future<Either<Failure, List<FieldTypeMediaGetEntity>>> loadAll();

  Future<Either<Failure, int>> createMedia(
    FieldTypeMediaPostEntity media,
  );

  Future<Either<Failure, Unit>> removeMedia(int fieldTypeId);
}
