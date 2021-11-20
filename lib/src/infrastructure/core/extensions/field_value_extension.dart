import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/core/extensions/column_extensions.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension FieldValueGetModelExtension on FieldValueGetModel {
  FieldValueGetEntity toEntity() {
    return FieldValueGetEntity(
      id: id,
      value: value,
      geodataId: geodataId,
      column: column.toEntity(),
    );
  }
}

extension FieldValuePutModelExtension on FieldValuePutEntity {
  FieldValuePutModel toModel() {
    return FieldValuePutModel(
      id: id,
      value: value,
      geodataId: geodataId,
      columnId: columnId,
    );
  }
}

extension FieldValuePostModelExtension on FieldValuePostEntity {
  FieldValuePostModel toModel() {
    return FieldValuePostModel(
      value: value,
      geodataId: geodataId,
      columnId: columnId,
    );
  }
}
