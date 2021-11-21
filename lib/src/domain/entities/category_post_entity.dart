import 'package:geobase/src/domain/entities/category_entity.dart';

class CategoryPostEntity extends CategoryEntity {
  CategoryPostEntity({
    required String name,
    String? description,
    int? color,
    required int icon,
  }) : super(
          name: name,
          description: description,
          color: color,
          icon: icon,
        );
}
