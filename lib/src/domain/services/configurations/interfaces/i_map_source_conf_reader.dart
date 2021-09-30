import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';

abstract class IMapSourceConfigurationLoaderService {
  Future<Either<Failure, MapSourceConfiguration>> loadMapSourceConfigurations();
}

abstract class IMapSourceConfigurationChangesListenerService {
  Stream<MapSourceConfiguration> get onSourceConfigChanged;
}

abstract class IMapSourceConfigurationReaderService
    implements
        IMapSourceConfigurationChangesListenerService,
        IMapSourceConfigurationLoaderService {}
