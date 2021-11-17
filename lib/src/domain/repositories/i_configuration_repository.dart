import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IConfigurationRepository {
  Stream<UserPreferencesEntity> get onUserPrefChanged;

  Future<Either<Failure, MapSourceConfigurationEntity>>
      loadMapSourceConfigurations();

  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfigurationEntity configuration,
  );

  Future<Either<Failure, UserPreferencesEntity>> loadUserPreferences();

  Future<Either<Failure, Unit>> editUserPreferences(
    UserPreferencesEntity preferences,
  );
}
