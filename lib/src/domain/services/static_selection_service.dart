import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_static_selection_repository.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@Injectable(as: IFieldTypeStaticSelectionService)
class FieldTypeStaticSelectionService
    implements IFieldTypeStaticSelectionService {
  const FieldTypeStaticSelectionService({
    required this.repository,
  });

  final IFieldTypeStaticSelectionRepository repository;

  @override
  Future<Either<Failure, int>> createStaticSelection(
    FieldTypeStaticSelectionPostEntity media,
  ) async {
    return repository.addFieldTypeStaticSelection(media);
  }

  @override
  Future<Either<Failure, FieldTypeStaticSelectionGetEntity>>
      loadStaticSelection(int fieldTypeId) async {
    return repository.getFromFieldType(fieldTypeId);
  }

  @override
  Future<Either<Failure, Unit>> removeStaticSelection(int fieldTypeId) async {
    return repository.removeStaticSelection(fieldTypeId);
  }
}
