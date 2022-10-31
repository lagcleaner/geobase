import 'package:geobase/src/domain/entities/entities.dart';

class CategoryPostEntity extends CategoryEntity {
  CategoryPostEntity({
    required super.name,
    required super.description,
    required super.color,
    required super.icon,
    required this.columns,
  });

  final List<ColumnPostEntity> columns;
}
