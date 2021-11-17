import 'package:geobase/src/domain/entities/column_entity.dart';
import 'package:geobase/src/domain/entities/field_type_get_entity.dart';

class ColumnGetEntity extends ColumnEntity {
  ColumnGetEntity({
    required this.id,
    required this.categoryId,
    required String name,
    required this.type,
  }) : super(name: name);

  final int id;

  final int categoryId;

  final FieldTypeGetEntity type;
}
