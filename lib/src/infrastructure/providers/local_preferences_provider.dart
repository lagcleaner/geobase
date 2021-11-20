import 'dart:convert';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/infrastructure/models/map_configuration_model.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_local_preferences_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _MAP_SOURCE_KEY = 'map.source';
const _DEFAULT_MAP_SOURCE_CONFIG = MapConfigurationModel(
  sourceType: MapSource.WMS,
  properties: {
    MAP_SOURCE_WMS_BASE_URL: 'https://{s}.s2maps-tiles.eu/wms/?',
    MAP_SOURCE_WMS_LAYERS: ['s2cloudless-2018_3857'],
    MAP_SOURCE_SUBDOMAINS: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
  },
);

@LazySingleton(as: ILocalPreferencesProvider)
class LocalPreferencesProvider extends ILocalPreferencesProvider {
  @override
  Future<MapConfigurationModel> loadMapConfig() async {
    final prefs = await SharedPreferences.getInstance();

    final rawValue = prefs.getString(_MAP_SOURCE_KEY);
    if (rawValue == null) {
      return _DEFAULT_MAP_SOURCE_CONFIG;
    }
    return MapConfigurationModel.fromJson(
      json.decode(rawValue) as Map<String, dynamic>,
    );
  }

  @override
  Future saveMapConfig(MapConfigurationModel configs) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_MAP_SOURCE_KEY, json.encode(configs.toJson()));
  }
}
