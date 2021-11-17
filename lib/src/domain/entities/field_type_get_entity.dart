///Base Class for TypeEntity.
abstract class FieldTypeEntity {
  FieldTypeEntity({
    required this.name,
    required this.metaType,
  });

  final String name;

  final String metaType;
}

class FieldTypeGetEntity extends FieldTypeEntity {
  FieldTypeGetEntity({
    required this.id,
    required String name,
    required String metaType,
    this.extradata,
  }) : super(name: name, metaType: metaType);

  final int id;

  final Map<String, dynamic>? extradata;
}
