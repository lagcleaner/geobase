import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeMediaRepository {
  Future<Either<Failure, List<FieldTypeMediaGetEntity>>> loadMedias();

  Future<Either<Failure, FieldTypeMediaGetEntity>> getFromFieldType(
    int fieldTypeId,
  );

  Future<Either<Failure, int>> addFieldTypeMedia(
    FieldTypeMediaPostEntity newMedia,
  );

  Future<Either<Failure, Unit>> removeMedia(int fieldTypeId);
}
