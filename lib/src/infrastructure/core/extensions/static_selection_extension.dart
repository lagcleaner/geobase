import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension StaticSelectionGetModelExtension on FieldTypeStaticSelectionGetModel {
  FieldTypeStaticSelectionGetEntity toEntity() {
    return FieldTypeStaticSelectionGetEntity(
      id: id,
      name: name,
      metaType: metaType,
      options: options,
    );
  }
}

extension StaticSelectionPostEntityExtension
    on FieldTypeStaticSelectionPostEntity {
  FieldTypeStaticSelectionPostModel toModel() {
    return FieldTypeStaticSelectionPostModel(
      name: name,
      metaType: metaType,
      options: options,
    );
  }
}
