import 'package:geobase/src/infrastructure/models/category_model.dart';
import 'package:geobase/src/infrastructure/models/column_post_model.dart';

class CategoryPostModel extends CategoryModel {
  CategoryPostModel({
    required String name,
    required String? description,
    required int? color,
    required String icon,
    required this.columns,
  }) : super(
          name: name,
          description: description,
          color: color,
          icon: icon,
        );

  final List<ColumnPostModel> columns;
}
