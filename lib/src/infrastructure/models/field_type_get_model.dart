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
    required String name,
    required String metaType,
    required this.id,
    this.extradata,
  }) : super(name: name, metaType: metaType);

  final int id;

  final Map<String, dynamic>? extradata;
}
