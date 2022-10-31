import 'package:geobase/src/domain/entities/category_entity.dart';
import 'package:geobase/src/domain/entities/column_get_entity.dart';

class CategoryGetEntity extends CategoryEntity {
  CategoryGetEntity({
    required this.id,
    required super.name,
    required super.description,
    required super.color,
    required super.icon,
    required this.columns,
  });

  final int id;

  final List<ColumnGetEntity> columns;
}
