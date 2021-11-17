import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapSourceConfigurationReaderService {
  Future<Either<Failure, MapSourceConfigurationEntity>>
      loadMapSourceConfigurations();
}
