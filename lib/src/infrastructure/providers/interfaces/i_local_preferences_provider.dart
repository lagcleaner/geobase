import 'package:geobase/src/infrastructure/models/models.dart';

abstract class ILocalPreferencesProvider {
  //
  Future saveMapConfig(MapConfigurationModel configs);
  Future<MapConfigurationModel> loadMapConfig();
  //
  Future saveUserPrefs(UserPreferencesModel configs);
  Future<UserPreferencesModel> loadUserPrefs();
}
