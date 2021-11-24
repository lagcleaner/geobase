import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeStaticSelectionService {
  Future<Either<Failure, FieldTypeStaticSelectionGetEntity>> loadById(
    int fieldTypeId,
  );

  Future<Either<Failure, List<FieldTypeStaticSelectionGetEntity>>> loadAll();

  Future<Either<Failure, int>> createStaticSelection(
    FieldTypeStaticSelectionPostEntity staticSelection,
  );

  Future<Either<Failure, Unit>> removeStaticSelection(int fieldTypeId);
}
