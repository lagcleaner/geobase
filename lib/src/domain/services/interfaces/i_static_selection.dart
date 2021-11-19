import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeStaticSelectionService {
  Future<Either<Failure, FieldTypeStaticSelectionGetEntity>>
      loadStaticSelection(
    int fieldTypeId,
  );

  Future<Either<Failure, int>> createStaticSelection(
    FieldTypeStaticSelectionPostEntity geoData,
  );

  Future<Either<Failure, Unit>> removeStaticSelection(int fieldTypeId);
}
