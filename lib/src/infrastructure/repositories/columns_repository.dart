import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_column_repository.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';

@LazySingleton(as: IColumnRepository)
class ColumnRepository extends IColumnRepository {
  ColumnRepository({
    required this.provider,
  });

  final IColumnsProvider provider;

  @override
  Future<Either<Failure, int>> addColumn(ColumnPostEntity newColumn) async {
    try {
      final result = await provider.create(newColumn.toModel());
      return Right(result);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, int>> editColumn(ColumnPutEntity column) async {
    try {
      final result = await provider.edit(column.toModel());
      return Right(result);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, ColumnGetEntity>> getColumn(int columnId) async {
    try {
      final result = await provider.getById(columnId);
      return Right(result.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<ColumnGetEntity>>> loadColumnsFromCategory(
    int categoryId,
  ) async {
    try {
      final result = await provider.getAllFromCategory(categoryId);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeColumn(int columnId) async {
    try {
      await provider.remove(columnId);
      return const Right(unit);
    } catch (e) {
      return catchMethod(e);
    }
  }
}
