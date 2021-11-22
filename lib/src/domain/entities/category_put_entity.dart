import 'package:geobase/src/domain/entities/category_entity.dart';
import 'package:geobase/src/domain/entities/column_put_entity.dart';

class CategoryPutEntity extends CategoryEntity {
  CategoryPutEntity({
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

  final List<ColumnPutEntity> columns;
}
