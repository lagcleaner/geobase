import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_media_repository.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';

@LazySingleton(as: IFieldTypeMediaRepository)
class FieldTypeMediaRepository extends IFieldTypeMediaRepository {
  FieldTypeMediaRepository({
    required this.provider,
  });

  final IFieldTypeMediaProvider provider;

  @override
  Future<Either<Failure, int>> addFieldTypeMedia(
    FieldTypeMediaPostEntity newMedia,
  ) async {
    try {
      final response = await provider.create(newMedia.toModel());
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, FieldTypeMediaGetEntity>> getFromFieldType(
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
  Future<Either<Failure, List<FieldTypeMediaGetEntity>>> loadMedias() async {
    try {
      final response = await provider.getAll();
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeMedia(int fieldTypeId) async {
    try {
      await provider.remove(fieldTypeId);
      return const Right(unit);
    } catch (e) {
      return catchMethod(e);
    }
  }
}
