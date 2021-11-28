import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension UserPreferencesModelExtension on UserPreferencesModel {
  UserPreferencesEntity toEntity() {
    return UserPreferencesEntity(
      initialLat: initialLat,
      initialLng: initialLng,
    );
  }
}

extension UserPreferencesEntityExtension on UserPreferencesEntity {
  UserPreferencesModel toModel() {
    return UserPreferencesModel(
      initialLat: initialLat,
      initialLng: initialLng,
    );
  }
}
