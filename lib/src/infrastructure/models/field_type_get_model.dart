///Base Class for TypeModel.
abstract class FieldTypeModel {
  FieldTypeModel({
    required this.name,
    required this.metaType,
  });

  final String name;

  final String metaType;
}

class FieldTypeGetModel extends FieldTypeModel {
  FieldTypeGetModel({
    required super.name,
    required super.metaType,
    required this.renderClass,
    required this.id,
    this.extradata,
  });

  final int id;

  final String renderClass;

  final Map<String, dynamic>? extradata;
}
