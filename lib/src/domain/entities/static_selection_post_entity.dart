import 'package:geobase/src/domain/entities/field_type_get_entity.dart';
import 'package:geobase/src/infrastructure/providers/providers.dart';

class FieldTypeStaticSelectionPostEntity extends FieldTypeEntity {

  factory FieldTypeStaticSelectionPostEntity.fromMap(Map<String, dynamic> map) {
    final optionsList = map['options'] as List<dynamic>? ?? [];

    return FieldTypeStaticSelectionPostEntity(
      name: map['name'] as String,
      options: optionsList.map((e) => e.toString()).toList(),
    );
  }
  FieldTypeStaticSelectionPostEntity({
    required super.name,
    required this.options,
  }) : super(metaType: STATICSELECTION_METATYPE_NAME);

  final List<String> options;
}
