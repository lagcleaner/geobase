import 'package:geobase/src/infrastructure/models/category_model.dart';
import 'package:geobase/src/infrastructure/models/column_get_model.dart';

class CategoryGetModel extends CategoryModel {
  CategoryGetModel({
    required this.id,
    required super.name,
    required super.description,
    required super.color,
    required super.icon,
    required this.columns,
  });

  final int id;

  final List<ColumnGetModel> columns;
}
