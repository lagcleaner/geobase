import 'package:geobase/src/infrastructure/models/category_model.dart';

class CategoryPostModel extends CategoryModel {
  CategoryPostModel({
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

  // final List<int> columnIds;
}
