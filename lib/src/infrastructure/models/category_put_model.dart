import 'package:geobase/src/infrastructure/models/models.dart';

class CategoryPutModel extends CategoryModel {
  CategoryPutModel({
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

  final List<ColumnPutModel> columns;
}
