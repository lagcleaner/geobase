import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

extension FieldTypeGetModelExtension on FieldTypeGetModel {
  FieldTypeGetEntity toEntity() {
    return FieldTypeGetEntity(
      id: id,
      name: name,
      metaType: metaType,
      extradata: extradata,
    );
  }
}
