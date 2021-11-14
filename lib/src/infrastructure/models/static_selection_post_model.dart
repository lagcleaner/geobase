import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeStaticSelectionPostModel extends FieldTypeModel {
  FieldTypeStaticSelectionPostModel({
    required String name,
    required String metaType,
    required this.options,
  }) : super(name: name, metaType: metaType);

  final List<String> options;
}
