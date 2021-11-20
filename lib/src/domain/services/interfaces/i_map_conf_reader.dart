import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapConfigurationReaderService {
  Future<Either<Failure, MapConfigurationEntity>> loadMapConfigurations();
}
