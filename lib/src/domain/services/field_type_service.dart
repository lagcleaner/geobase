import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/failures.dart';
import 'package:geobase/src/domain/entities/field_type_get_entity.dart';
import 'package:geobase/src/domain/repositories/i_field_type_repository.dart';
import 'package:geobase/src/domain/services/interfaces/i_field_type.dart';

@LazySingleton(as: IFieldTypeService)
class FieldTypeService implements IFieldTypeService {
  const FieldTypeService({
    required this.repository,
  });

  final IFieldTypeRepository repository;

  @override
  Future<Either<Failure, List<FieldTypeGetEntity>>> loadAll() async {
    return repository.loadFieldTypes();
  }

  @override
  Future<Either<Failure, FieldTypeGetEntity>> loadFieldTypeById(
    int fieldTypeId,
  ) async {
    return repository.getFieldType(fieldTypeId);
  }
}
