
import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../entities/configurations/source_configuration.dart';
import '../../entities/configurations/user_preferences.dart';
import '../../entities/failures/failures.dart';
import 'interfaces/i_map_source_conf_reader.dart';
import 'interfaces/i_map_source_conf_writter.dart';
import 'interfaces/i_user_preferences_reader.dart';
import 'interfaces/i_user_preferences_writter.dart';

@LazySingleton(as: IMapSourceConfigurationChangesListenerService)
@LazySingleton(as: IMapSourceConfigurationLoaderService)
@LazySingleton(as: IMapSourceConfigurationReaderService)
@LazySingleton(as: IMapSourceConfigurationWritterService)
@LazySingleton(as: IUserPreferencesChangesListenerService)
@LazySingleton(as: IUserPreferencesLoaderService)
@LazySingleton(as: IUserPreferencesReaderService)
@LazySingleton(as: IUserPreferencesWritterService)
class ConfigurationService
    implements
        IMapSourceConfigurationReaderService,
        IMapSourceConfigurationWritterService,
        IUserPreferencesReaderService,
        IUserPreferencesWritterService {
  ConfigurationService();

  @override
  Future<Either<Failure, MapSourceConfiguration>>
      loadMapSourceConfigurations() async {
    // TODO: implement loadMapSourceConfigurations
    // wms
    return const Right(MapSourceConfiguration.wms(
      baseUrl: 'https://{s}.s2maps-tiles.eu/wms/?',
      layers: ['s2cloudless-2018_3857'],
      subdomains: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
    ));
  }

  @override
  Future<Either<Failure, UserPreferences>> loadUserPreferences() async {
    // TODO: implement loadUserPreferences
    return Right(UserPreferences());
  }

  @override
  // TODO: implement onSourceConfigChanged
  Stream<MapSourceConfiguration> get onSourceConfigChanged async* {
    throw UnimplementedError();
  }

  @override
  // TODO: implement onUserPrefChanged
  Stream<UserPreferences> get onUserPrefChanged async* {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
      MapSourceConfiguration configuration) async {
    // TODO: implement setMapSourceConfigurations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> setUserPreferences(
      UserPreferences preferences) async {
    // TODO: implement setUserPreferences
    throw UnimplementedError();
  }
}
