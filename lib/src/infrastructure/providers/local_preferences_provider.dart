import 'dart:convert';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/infrastructure/models/map_mode_model.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_local_preferences_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// KEYS
const _MAP_CONFIG_KEY = 'map.config';
const _PREFERENCES_KEY = 'user.preferences';

// DEFAULT VALUES
const _DEFAULT_PREFERENCES = UserPreferencesModel(
  mapMode: MapModeModel(),
  initialLat: 23.1255,
  initialLng: -82.37,
);
const _DEFAULT_MAP_CONFIG = _OSM_MAP_CONFIG;

// ignore: unused_element
const _WMS_MAP_CONFIG = MapConfigurationModel(
  sourceType: MapSource.WMS,
  properties: {
    MAP_SOURCE_WMS_BASE_URL: 'https://{s}.s2maps-tiles.eu/wms/?',
    MAP_SOURCE_WMS_LAYERS: ['s2cloudless-2018_3857'],
    MAP_SOURCE_SUBDOMAINS: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
  },
);

const _OSM_MAP_CONFIG = MapConfigurationModel(
  sourceType: MapSource.OSM,
  properties: {
    MAP_SOURCE_URL_TEMPLATE:
        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
    MAP_SOURCE_SUBDOMAINS: ['a', 'b', 'c'],
  },
);

@LazySingleton(as: ILocalPreferencesProvider)
class LocalPreferencesProvider extends ILocalPreferencesProvider {
  @override
  Future<MapConfigurationModel> loadMapConfig() async {
    final prefs = getIt<SharedPreferences>();

    final rawValue = prefs.getString(_MAP_CONFIG_KEY);
    if (rawValue == null) {
      return _DEFAULT_MAP_CONFIG;
    }
    return MapConfigurationModel.fromJson(
      json.decode(rawValue) as Map<String, dynamic>,
    );
  }

  @override
  Future saveMapConfig(MapConfigurationModel configs) async {
    final prefs = getIt<SharedPreferences>();

    await prefs.setString(_MAP_CONFIG_KEY, json.encode(configs.toJson()));
  }

  @override
  Future<UserPreferencesModel> loadUserPrefs() async {
    final prefs = getIt<SharedPreferences>();

    final rawValue = prefs.getString(_PREFERENCES_KEY);
    if (rawValue == null) {
      return _DEFAULT_PREFERENCES;
    }
    return UserPreferencesModel.fromJson(
      json.decode(rawValue) as Map<String, dynamic>,
    );
  }

  @override
  Future<void> saveUserPrefs(UserPreferencesModel configs) async {
    final prefs = getIt<SharedPreferences>();

    final previus = await loadUserPrefs().then((value) => value.toJson());
    final currentChanges = configs.toJson();

    final toStored = previus.map(
      (key, value) => MapEntry(key, currentChanges[key] ?? value),
    );

    await prefs.setString(_PREFERENCES_KEY, json.encode(toStored));
  }
}
