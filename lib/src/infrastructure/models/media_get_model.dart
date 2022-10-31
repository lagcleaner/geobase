import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeMediaGetModel extends FieldTypeGetModel {
  FieldTypeMediaGetModel({
    required super.name,
    required super.metaType,
    required super.id,
    required super.renderClass,
    required this.extensions,
  });

  final List<String> extensions;
}
