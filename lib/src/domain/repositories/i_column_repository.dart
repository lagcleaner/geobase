import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IColumnRepository {
  Future<Either<Failure, List<ColumnGetEntity>>> loadColumnsFromCategory(
    int categoryId,
  );

  Future<Either<Failure, ColumnGetEntity>> getColumn(int columnId);

  Future<Either<Failure, int>> addColumn(
    ColumnPostEntity newColumn,
  );

  Future<Either<Failure, int>> editColumn(
    ColumnPutEntity newColumn,
  );

  Future<Either<Failure, Unit>> removeColumn(int columnId);
}
