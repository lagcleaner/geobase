import 'package:geobase/src/infrastructure/models/category_model.dart';
import 'package:geobase/src/infrastructure/models/column_get_model.dart';

class CategoryGetModel extends CategoryModel {
  CategoryGetModel({
    required this.id,
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

  final int id;

  final List<ColumnGetModel> columns;
}
