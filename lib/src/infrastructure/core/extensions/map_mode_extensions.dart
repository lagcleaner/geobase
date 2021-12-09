import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/map_mode_model.dart';

extension MapModeModelExtension on MapModeModel {
  MapModeEntity toEntity() {
    return MapModeEntity(
      categoryUsed: categoryUsed,
    );
  }
}

extension MapModeEntityExtension on MapModeEntity {
  MapModeModel toModel() {
    return MapModeModel(
      categoryUsed: categoryUsed,
    );
  }
}
