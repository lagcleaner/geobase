import 'package:dartz/dartz.dart';

import '../../../entities/configurations/source_configuration.dart';
import '../../../entities/failures/failures.dart';

abstract class IMapSourceConfigurationWritterService {
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  );
}
