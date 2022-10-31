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
    required super.name,
    required super.metaType,
    required this.renderClass,
    this.extradata,
  });

  final int id;

  final String renderClass;

  final Map<String, dynamic>? extradata;
}
