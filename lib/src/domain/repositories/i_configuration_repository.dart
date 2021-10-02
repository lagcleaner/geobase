import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IConfigurationRepository {
  Stream<MapSourceConfiguration> get onSourceConfigChanged;

  Stream<UserPreferencesGetEntity> get onUserPrefChanged;

  Future<Either<Failure, MapSourceConfiguration>> loadMapSourceConfigurations();

  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  );

  Future<Either<Failure, UserPreferencesGetEntity>> loadUserPreferences();

  Future<Either<Failure, Unit>> editUserPreferences(
    UserPreferencesUpdateEntity preferences,
  );
}
