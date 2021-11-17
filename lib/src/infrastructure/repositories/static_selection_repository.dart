import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_static_selection_repository.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';

@LazySingleton(as: IFieldTypeStaticSelectionRepository)
class FieldTypeRepository extends IFieldTypeStaticSelectionRepository {
  FieldTypeRepository({
    required this.provider,
  });

  final IFieldTypeStaticSelectionProvider provider;

  @override
  Future<Either<Failure, int>> addFieldTypeStaticSelection(
    FieldTypeStaticSelectionPostEntity newStaticSelection,
  ) async {
    try {
      final response = await provider.create(newStaticSelection.toModel());
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, FieldTypeStaticSelectionGetEntity>> getFromFieldType(
    int fieldTypeId,
  ) async {
    try {
      final response = await provider.getByFieldTypeId(fieldTypeId);
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<FieldTypeStaticSelectionGetEntity>>>
      loadStaticSelections() async {
    try {
      final response = await provider.getAll();
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeStaticSelection(int fieldTypeId) async {
    try {
      await provider.remove(fieldTypeId);
      return const Right(unit);
    } catch (e) {
      return catchMethod(e);
    }
  }
}
