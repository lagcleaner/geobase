import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapSourceConfigurationWritterService {
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfigurationEntity configuration,
  );
}
