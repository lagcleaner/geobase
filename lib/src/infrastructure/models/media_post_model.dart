import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeMediaPostModel extends FieldTypeModel {
  FieldTypeMediaPostModel({
    required String name,
    required String metaType,
    this.renderClass,
    required this.extensions,
  }) : super(name: name, metaType: metaType);

  ///Used to generate new built-in complex of this kind (in compilation time)
  final String? renderClass;

  final List<String> extensions;
}
