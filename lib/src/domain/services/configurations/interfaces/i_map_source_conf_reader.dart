import 'package:dartz/dartz.dart';

import '../../../entities/configurations/source_configuration.dart';
import '../../../entities/failures/failures.dart';

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
