import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeMediaPostModel extends FieldTypeModel {
  FieldTypeMediaPostModel({
    required String name,
    required String metaType,
    required this.extensions,
  }) : super(name: name, metaType: metaType);

  final List<String> extensions;
}
