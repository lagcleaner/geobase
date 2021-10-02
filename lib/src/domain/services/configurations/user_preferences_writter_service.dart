import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_configuration_repository.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: IUserPreferencesWritterService)
class UserPreferencesWritterService implements IUserPreferencesWritterService {
  UserPreferencesWritterService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferencesUpdateEntity preferences,
  ) async {
    return repository.editUserPreferences(preferences);
  }

  @override
  Future<Either<Failure, Unit>> changeRefreshInterval(
    Duration refreshInterval,
  ) async {
    return repository.editUserPreferences(
      UserPreferencesUpdateEntity(updateInterval: refreshInterval),
    );
  }
}
