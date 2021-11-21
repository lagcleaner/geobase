import 'package:geobase/src/infrastructure/models/category_model.dart';

class CategoryPutModel extends CategoryModel {
  CategoryPutModel({
    required this.id,
    required String name,
    String? description,
    int? color,
    required int materialIconCodePoint,
    // required this.columnIds,
  }) : super(
          name: name,
          description: description,
          color: color,
          materialIconCodePoint: materialIconCodePoint,
        );

  final int id;

  // final List<int> columnIds;
}
