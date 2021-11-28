import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IConfigurationRepository {
  Future<Either<Failure, MapConfigurationEntity>> loadMapConfigurations();

  Future<Either<Failure, Unit>> setMapConfigurations(
    MapConfigurationEntity configuration,
  );

  Future<Either<Failure, UserPreferencesEntity>> loadUserPreferences();

  Future<Either<Failure, Unit>> editUserPreferences(
    UserPreferencesEntity preferences,
  );
}
