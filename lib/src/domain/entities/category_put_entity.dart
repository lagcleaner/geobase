import 'package:geobase/src/domain/entities/entities.dart';

class CategoryPutEntity extends CategoryEntity {
  CategoryPutEntity({
    required String name,
    required String? description,
    required int? color,
    required String icon,
    required this.id,
    required this.editedColumns,
    required this.removedColumns,
    required this.newColumns,
  }) : super(
          name: name,
          description: description,
          color: color,
          icon: icon,
        );

  final int id;

  final List<ColumnPutEntity> editedColumns;

  final List<int> removedColumns;

  final List<ColumnPostEntity> newColumns;
}
