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
    required this.id,
    required String name,
    required String metaType,
  }) : super(name: name, metaType: metaType);

  final int id;
}
