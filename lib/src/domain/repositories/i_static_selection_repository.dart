import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IFieldTypeStaticSelectionRepository {
  Future<Either<Failure, List<FieldTypeStaticSelectionGetEntity>>>
      loadStaticSelections();

  Future<Either<Failure, FieldTypeStaticSelectionGetEntity>> getFromFieldType(
    int fieldTypeId,
  );

  Future<Either<Failure, int>> addFieldTypeStaticSelection(
    FieldTypeStaticSelectionPostEntity newStaticSelection,
  );

  // Future<Either<Failure, int>> editStaticSelection(
  //   FieldTypeStaticSelectionPutEntity newStaticSelection,
  // );

  Future<Either<Failure, Unit>> removeStaticSelection(int fieldTypeId);
}
