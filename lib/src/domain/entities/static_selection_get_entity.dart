import 'package:geobase/src/domain/entities/field_type_get_entity.dart';

class FieldTypeStaticSelectionGetEntity extends FieldTypeGetEntity {
  FieldTypeStaticSelectionGetEntity({
    required String name,
    required String metaType,
    required int id,
    required this.options,
  }) : super(id: id, name: name, metaType: metaType);

  final List<String> options;
}
