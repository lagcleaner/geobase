import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeMediaGetModel extends FieldTypeGetModel {
  FieldTypeMediaGetModel({
    required String name,
    required String metaType,
    required int fieldTypeId,
    required String renderClass,
    required this.extensions,
  }) : super(
          id: fieldTypeId,
          name: name,
          metaType: metaType,
          renderClass: renderClass,
        );

  final List<String> extensions;
}
