import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_configuration_repository.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IUserPreferencesWritterService)
class UserPreferencesWritterService implements IUserPreferencesWritterService {
  UserPreferencesWritterService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferencesEntity preferences,
  ) async {
    return repository.editUserPreferences(preferences);
  }
}
