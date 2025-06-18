import 'package:geobase/src/domain/entities/field_type_get_entity.dart';
import 'package:geobase/src/infrastructure/providers/providers.dart';
import 'package:geobase/src/domain/entities/column_post_entity.dart';

class FieldTypeFormPostEntity extends FieldTypeEntity {

  factory FieldTypeFormPostEntity.fromMap(Map<String, dynamic> map) {
    final columnsJson = map['columns'] as List<dynamic>? ?? [];

    return FieldTypeFormPostEntity(
      name: map['name'] as String,
      columns: columnsJson.map((col) {
        return ColumnPostEntity(
          name: col['name'] as String,
          categoryId: col['categoryId'] as int?,
          typeId: col['type']['id'] as int,
          formId: col['formId'] as int?,
        );
      }).toList(),
    );
  }
  FieldTypeFormPostEntity({
    required super.name,
    required this.columns,
  }) : super(metaType: FORM_METATYPE_NAME);

  final List<ColumnPostEntity> columns;
}
