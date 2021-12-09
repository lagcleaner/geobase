import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/core/extensions/map_mode_extensions.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension UserPreferencesModelExtension on UserPreferencesModel {
  UserPreferencesEntity toEntity() {
    return UserPreferencesEntity(
      mapMode: mapMode?.toEntity(),
      initialLat: initialLat,
      initialLng: initialLng,
    );
  }
}

extension UserPreferencesEntityExtension on UserPreferencesEntity {
  UserPreferencesModel toModel() {
    return UserPreferencesModel(
      mapMode: mapMode?.toModel(),
      initialLat: initialLat,
      initialLng: initialLng,
    );
  }
}
