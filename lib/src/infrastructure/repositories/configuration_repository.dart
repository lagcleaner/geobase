import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/repositories.dart';

@Injectable(as: IConfigurationRepository)
class ConfigurationRepository implements IConfigurationRepository {
  @override
  Future<Either<Failure, MapSourceConfiguration>>
      loadMapSourceConfigurations() {
    // TODO: implement loadMapSourceConfigurations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserPreferences>> loadUserPreferences() {
    // TODO: implement loadUserPreferences
    throw UnimplementedError();
  }

  @override
  // TODO: implement onSourceConfigChanged
  Stream<MapSourceConfiguration> get onSourceConfigChanged =>
      throw UnimplementedError();

  @override
  // TODO: implement onUserPrefChanged
  Stream<UserPreferences> get onUserPrefChanged => throw UnimplementedError();

  @override
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
      MapSourceConfiguration configuration) {
    // TODO: implement setMapSourceConfigurations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> setUserPreferences(
      UserPreferences preferences) {
    // TODO: implement setUserPreferences
    throw UnimplementedError();
  }
}
