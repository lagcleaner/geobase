import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension MapSourceConfigurationExtension on SourceConfigurationModel {
  MapSourceConfigurationEntity toEntity() {
    return MapSourceConfigurationEntity(
      sourceProperties: properties,
      sourceType: type,
    );
  }
}

extension SourceConfigurationExtension on MapSourceConfigurationEntity {
  SourceConfigurationModel toEntity() {
    return SourceConfigurationModel(
      type: mapSourceType,
      properties: this.options,
    );
  }
}
