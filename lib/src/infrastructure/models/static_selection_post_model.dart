import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeStaticSelectionPostModel extends FieldTypeModel {
  FieldTypeStaticSelectionPostModel({
    required super.name,
    required super.metaType,
    this.renderClass,
    required this.options,
  });

  ///Used to generate new built-in complex of this kind (in compilation time)
  final String? renderClass;

  final List<String> options;
}
