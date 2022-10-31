import 'package:geobase/src/domain/entities/column_entity.dart';

class ColumnPutEntity extends ColumnEntity {
  ColumnPutEntity({
    required this.id,
    required this.categoryId,
    required this.typeId,
    required super.name,
  });

  final int id;

  final int categoryId;

  final int typeId;
}
