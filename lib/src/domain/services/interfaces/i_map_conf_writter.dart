import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapConfigurationWritterService {
  Future<Either<Failure, Unit>> setMapConfigurations(
    MapConfigurationEntity configuration,
  );
}
