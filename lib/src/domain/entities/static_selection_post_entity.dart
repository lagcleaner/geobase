import 'package:geobase/src/domain/entities/field_type_get_entity.dart';
import 'package:geobase/src/infrastructure/providers/providers.dart';

class FieldTypeStaticSelectionPostEntity extends FieldTypeEntity {
  FieldTypeStaticSelectionPostEntity({
    required super.name,
    required this.options,
  }) : super(metaType: STATICSELECTION_METATYPE_NAME);

  final List<String> options;
}
