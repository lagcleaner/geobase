import 'package:geobase/src/domain/entities/field_type_get_entity.dart';

class FieldTypeStaticSelectionPostEntity extends FieldTypeEntity {
  FieldTypeStaticSelectionPostEntity({
    required String name,
    required String metaType,
    required this.options,
  }) : super(name: name, metaType: metaType);

  final List<String> options;
}
