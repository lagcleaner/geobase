import 'package:geobase/src/domain/entities/field_type_get_entity.dart';

class FieldTypeStaticSelectionGetEntity extends FieldTypeGetEntity {
  FieldTypeStaticSelectionGetEntity({
    required super.name,
    required super.metaType,
    required super.id,
    required super.renderClass,
    required this.options,
  });

  final List<String> options;
}
