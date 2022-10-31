import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeStaticSelectionGetModel extends FieldTypeGetModel {
  FieldTypeStaticSelectionGetModel({
    required super.name,
    required super.metaType,
    required super.id,
    required super.renderClass,
    required this.options,
  });

  final List<String> options;
}
