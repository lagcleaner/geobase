import 'package:geobase/src/domain/entities/entities.dart';

class CategoryPutEntity extends CategoryEntity {
  CategoryPutEntity({
    required super.name,
    required super.description,
    required super.color,
    required super.icon,
    required this.id,
    required this.editedColumns,
    required this.removedColumns,
    required this.newColumns,
  });

  final int id;

  final List<ColumnPutEntity> editedColumns;

  final List<int> removedColumns;

  final List<ColumnPostEntity> newColumns;
}
