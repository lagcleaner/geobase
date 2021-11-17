import 'package:geobase/src/domain/entities/category_entity.dart';

class CategoryPutEntity extends CategoryEntity {
  CategoryPutEntity({
    required this.id,
    required String name,
    String? description,
    int? color,
    int? icon,
    // required this.columnIds,
  }) : super(
          name: name,
          description: description,
          color: color,
          icon: icon,
        );

  final int id;

  // final List<int> columnIds;
}
