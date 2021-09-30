import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';

abstract class IMapSourceConfigurationWritterService {
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  );
}
