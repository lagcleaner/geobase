import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/failures.dart';
import 'package:geobase/src/domain/entities/field_type_get_entity.dart';
import 'package:geobase/src/domain/repositories/i_field_type_repository.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';

@LazySingleton(as: IFieldTypeRepository)
class FieldTypeRepository extends IFieldTypeRepository {
  FieldTypeRepository({
    required this.provider,
  });

  final IFieldTypeProvider provider;

  @override
  Future<Either<Failure, FieldTypeGetEntity>> getFieldType(
    int fieldTypeId,
  ) async {
    try {
      final response = await provider.getById(fieldTypeId);
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<FieldTypeGetEntity>>> loadFieldTypes() async {
    try {
      final response = await provider.getAll();
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }
}
