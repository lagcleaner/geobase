import 'package:dartz/dartz.dart';

import '../entities/entities.dart';

abstract class IConfigurationRepository {
  Future<Either<Failure, MapSourceConfiguration>> loadMapSourceConfigurations();

  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  );

  Stream<MapSourceConfiguration> get onSourceConfigChanged;

  Future<Either<Failure, UserPreferences>> loadUserPreferences();

  Stream<UserPreferences> get onUserPrefChanged;

  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferences preferences,
  );
}
