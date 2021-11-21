import 'package:geobase/src/domain/entities/category_entity.dart';
import 'package:geobase/src/domain/entities/column_get_entity.dart';

class CategoryGetEntity extends CategoryEntity {
  CategoryGetEntity({
    required this.id,
    required String name,
    String? description,
    int? color,
    required int icon,
    required this.columns,
  }) : super(
          name: name,
          description: description,
          color: color,
          icon: icon,
        );

  final int id;

  final List<ColumnGetEntity> columns;
}
