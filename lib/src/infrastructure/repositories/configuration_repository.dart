import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/changes_notifier_streamcontroller.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IConfigurationRepository)
class ConfigurationRepository implements IConfigurationRepository {
  ConfigurationRepository() {
    _changesSourceNotifier = ObjectChangeNotifier<MapSourceConfiguration>();
    _changesUserPreferencesNotifier =
        ObjectChangeNotifier<UserPreferencesGetEntity>();
  }
  late final ObjectChangeNotifier<MapSourceConfiguration>
      _changesSourceNotifier;
  late final ObjectChangeNotifier<UserPreferencesGetEntity>
      _changesUserPreferencesNotifier;

  @override
  Stream<MapSourceConfiguration> get onSourceConfigChanged =>
      _changesSourceNotifier.stream;

  @override
  Stream<UserPreferencesGetEntity> get onUserPrefChanged =>
      _changesUserPreferencesNotifier.stream;

  @override
  Future<Either<Failure, MapSourceConfiguration>>
      loadMapSourceConfigurations() {
    // TODO: implement loadMapSourceConfigurations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserPreferencesGetEntity>> loadUserPreferences() {
    // TODO: implement loadUserPreferences
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  ) {
    // TODO: implement setMapSourceConfigurations
    _changesSourceNotifier.add(configuration);
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editUserPreferences(
    UserPreferencesUpdateEntity preferences,
  ) {
    // TODO: implement setUserPreferences
    _changesUserPreferencesNotifier.add(
      UserPreferencesGetEntity(
        showLocation: preferences.showLocation ?? true,
        updateInterval: preferences.updateInterval ??
            const Duration(seconds: 3), //TODO: notify real editted entity
      ),
    );
    throw UnimplementedError();
  }
}
