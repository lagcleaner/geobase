import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension MapConfigurationModelExtension on MapConfigurationModel {
  MapConfigurationEntity toEntity() {
    return MapConfigurationEntity(
      sourceProperties: properties,
      sourceType: sourceType,
    );
  }
}

extension MapConfigurationEntityExtension on MapConfigurationEntity {
  MapConfigurationModel toEntity() {
    return MapConfigurationModel(
      sourceType: mapSourceType,
      properties: this.options,
    );
  }
}
