import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

extension MediaGetModelExtension on FieldTypeMediaGetModel {
  FieldTypeMediaGetEntity toEntity() {
    return FieldTypeMediaGetEntity(
      id: id,
      name: name,
      metaType: metaType,
      renderClass: renderClass,
      extensions: extensions,
    );
  }
}

extension MediaPostEntityExtension on FieldTypeMediaPostEntity {
  FieldTypeMediaPostModel toModel() {
    return FieldTypeMediaPostModel(
      name: name,
      metaType: metaType,
      extensions: extensions,
    );
  }
}
