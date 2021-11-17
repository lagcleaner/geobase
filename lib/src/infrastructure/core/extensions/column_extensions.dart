import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/core/extensions/field_type_extension.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension ColumnGetModelExtension on ColumnGetModel {
  ColumnGetEntity toEntity() {
    return ColumnGetEntity(
      id: id,
      categoryId: categoryId,
      name: name,
      type: type.toEntity(),
    );
  }
}

extension ColumnPostEntityExtension on ColumnPostEntity {
  ColumnPostModel toModel() {
    return ColumnPostModel(
      categoryId: categoryId,
      name: name,
      typeId: typeId,
    );
  }
}

extension ColumnPutEntityExtension on ColumnPutEntity {
  ColumnPutModel toModel() {
    return ColumnPutModel(
      id: id,
      categoryId: categoryId,
      name: name,
      typeId: typeId,
    );
  }
}
