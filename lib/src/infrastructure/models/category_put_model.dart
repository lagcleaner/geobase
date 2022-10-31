import 'package:geobase/src/infrastructure/models/models.dart';

class CategoryPutModel extends CategoryModel {
  CategoryPutModel({
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

  final List<ColumnPutModel> editedColumns;

  final List<int> removedColumns;

  final List<ColumnPostModel> newColumns;
}
