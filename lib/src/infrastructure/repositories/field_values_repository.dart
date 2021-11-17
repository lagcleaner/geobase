import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/entities/field_value_get_entity.dart';
import 'package:geobase/src/domain/entities/field_value_put_entity.dart';
import 'package:geobase/src/domain/repositories/i_field_value_repository.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';

@LazySingleton(as: IFieldValueRepository)
class FieldValueRepository extends IFieldValueRepository {
  FieldValueRepository({
    required this.provider,
  });

  final IFieldValueProvider provider;

  @override
  Future<Either<Failure, int>> editFieldValue(
    FieldValuePutEntity fieldValue,
  ) async {
    try {
      final result = await provider.edit(fieldValue.toModel());
      return Right(result);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, FieldValueGetEntity>> getFieldValue(
      int fieldValueId) async {
    try {
      final result = await provider.getById(fieldValueId);
      return Right(result.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<FieldValueGetEntity>>> loadFieldValuesFromGeodata(
    int geodataId,
  ) async {
    try {
      final result = await provider.getAllFromGeodata(geodataId);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }
}
