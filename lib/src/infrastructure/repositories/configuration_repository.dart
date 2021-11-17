import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/changes_notifier_streamcontroller.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_local_preferences_provider.dart';

@Injectable(as: IConfigurationRepository)
class ConfigurationRepository implements IConfigurationRepository {
  ConfigurationRepository(
    this.provider,
  ) {
    _changesUserPreferencesNotifier =
        ObjectChangeNotifier<UserPreferencesEntity>();
  }

  late final ObjectChangeNotifier<UserPreferencesEntity>
      _changesUserPreferencesNotifier;

  final ILocalPreferencesProvider provider;

  @override
  Stream<UserPreferencesEntity> get onUserPrefChanged =>
      _changesUserPreferencesNotifier.stream;

  @override
  Future<Either<Failure, MapSourceConfigurationEntity>>
      loadMapSourceConfigurations() async {
    // TODO: implement loadMapSourceConfigurations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserPreferencesEntity>> loadUserPreferences() async {
    // TODO: implement loadUserPreferences
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfigurationEntity configuration,
  ) async {
    // TODO: implement setMapSourceConfigurations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editUserPreferences(
    UserPreferencesEntity preferences,
  ) async {
    // TODO: implement setUserPreferences
    _changesUserPreferencesNotifier.add(
      UserPreferencesEntity(
        showLocation: preferences.showLocation,
      ),
    );
    return const Right(unit);
  }
}
