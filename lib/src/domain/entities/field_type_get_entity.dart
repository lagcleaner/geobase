///Base Class for TypeEntity.
abstract class FieldTypeEntity {
  FieldTypeEntity({
    required this.name,
    required this.metaType,
  });
  

  final String name;

  final String metaType;

  Map<String, dynamic> toJson() {
    return {
      'name':name,
      'metaType': metaType,
    };
  }
}

class FieldTypeGetEntity extends FieldTypeEntity {
  FieldTypeGetEntity({
    required this.id,
    required super.name,
    required super.metaType,
    required this.renderClass,
    this.extradata,
  });
  
  FieldTypeGetEntity.empty()
      : id = 0,
        renderClass = '',
        extradata = null,
        super(
          name: '',
          metaType: '',
        );

  // Nuevo método fromMap (inverso de toMap)
  factory FieldTypeGetEntity.fromMap(Map<String, dynamic> map) {
    return FieldTypeGetEntity(
      id: map['id'] as int,
      name: map['name'] as String,
      metaType: map['metaType'] as String,
      renderClass: map['renderClass'] as String,
      extradata: map['extradata'] as Map<String, dynamic>?,
    );
  }

  final int id;

  final String renderClass;

  final Map<String, dynamic>? extradata;

  @override
  Map<String, dynamic> toJson() {

    return {
      ...super.toJson(),
      'id': id,
      'renderClass':renderClass,
      'extradata': extradata,
    };
  }

}
