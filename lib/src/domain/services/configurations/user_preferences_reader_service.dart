import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_configuration_repository.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserPreferencesReaderService)
class UserPreferencesReaderService implements IUserPreferencesReaderService {
  UserPreferencesReaderService(
    this.repository,
  );

  final IConfigurationRepository repository;
  @override
  Future<Either<Failure, UserPreferencesGetEntity>>
      loadUserPreferences() async {
    return repository.loadUserPreferences();
  }

  @override
  Stream<UserPreferencesGetEntity> get onUserPrefChanged =>
      repository.onUserPrefChanged;
}
