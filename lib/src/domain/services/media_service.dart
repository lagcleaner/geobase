import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_media_repository.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@Injectable(as: IFieldTypeMediaService)
class FieldTypeMediaService implements IFieldTypeMediaService {
  FieldTypeMediaService({
    required this.repository,
  });

  final IFieldTypeMediaRepository repository;

  @override
  Future<Either<Failure, int>> createMedia(
    FieldTypeMediaPostEntity media,
  ) async {
    return repository.addFieldTypeMedia(media);
  }

  @override
  Future<Either<Failure, FieldTypeMediaGetEntity>> loadMedia(
    int fieldTypeId,
  ) async {
    return repository.getFromFieldType(fieldTypeId);
  }

  @override
  Future<Either<Failure, Unit>> removeMedia(int fieldTypeId) async {
    return repository.removeMedia(fieldTypeId);
  }
}
