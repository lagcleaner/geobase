import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/core/extensions/column_extensions.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension CategoryGetModelExtension on CategoryGetModel {
  CategoryGetEntity toEntity() {
    return CategoryGetEntity(
      id: id,
      name: name,
      description: description,
      color: color,
      icon: materialIconCodePoint,
      columns: columns.map((e) => e.toEntity()).toList(),
    );
  }
}

extension CategoryPostEntityExtension on CategoryPostEntity {
  CategoryPostModel toModel() {
    return CategoryPostModel(
      name: name,
      description: description,
      color: color,
      materialIconCodePoint: icon,
    );
  }
}

extension CategoryPutEntityExtension on CategoryPutEntity {
  CategoryPutModel toModel() {
    return CategoryPutModel(
      id: id,
      name: name,
      description: description,
      color: color,
      materialIconCodePoint: icon,
    );
  }
}
