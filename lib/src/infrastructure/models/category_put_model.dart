import 'package:geobase/src/infrastructure/models/models.dart';

class CategoryPutModel extends CategoryModel {
  CategoryPutModel({
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

  final List<ColumnPutModel> editedColumns;

  final List<int> removedColumns;

  final List<ColumnPostModel> newColumns;
}
