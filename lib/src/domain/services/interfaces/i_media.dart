import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeMediaService {
  Future<Either<Failure, FieldTypeMediaGetEntity>> loadMedia(
    int fieldTypeId,
  );

  Future<Either<Failure, int>> createMedia(
    FieldTypeMediaPostEntity media,
  );

  Future<Either<Failure, Unit>> removeMedia(int fieldTypeId);
}
