import 'package:geobase/src/infrastructure/models/category_model.dart';
import 'package:geobase/src/infrastructure/models/column_post_model.dart';

class CategoryPostModel extends CategoryModel {
  CategoryPostModel({
    required super.name,
    required super.description,
    required super.color,
    required super.icon,
    required this.columns,
  });

  final List<ColumnPostModel> columns;
}
