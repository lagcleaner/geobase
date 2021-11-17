import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/core/extensions/category_extensions.dart';
import 'package:geobase/src/infrastructure/core/extensions/field_value_extension.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension GeodataGetModelExtension on GeodataGetModel {
  GeodataGetEntity toEntity() {
    return GeodataGetEntity(
      latitude: latitude,
      longitude: longitude,
      id: id,
      color: color,
      icon: materialIconCodePoint,
      category: category.toEntity(),
      fields: fields.map((e) => e.toEntity()).toList(),
    );
  }
}

extension GeodataPostEntityExtension on GeodataPostEntity {
  GeodataPostModel toModel() {
    return GeodataPostModel(
      latitude: latitude,
      longitude: longitude,
      categoryId: categoryId,
    );
  }
}

extension GeodataPutEntityExtension on GeodataPutEntity {
  GeodataPutModel toModel() {
    return GeodataPutModel(
      id: id,
      latitude: latitude,
      longitude: longitude,
      categoryId: categoryId,
    );
  }
}
