import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeMediaGetModel extends FieldTypeGetModel {
  FieldTypeMediaGetModel({
    required String name,
    required String metaType,
    required int fieldTypeId,
    required this.extensions,
  }) : super(id: fieldTypeId, name: name, metaType: metaType);

  final List<String> extensions;
}
