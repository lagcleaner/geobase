import 'package:geobase/src/domain/entities/entities.dart';

class CategoryPostEntity extends CategoryEntity {
  CategoryPostEntity({
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

  final List<ColumnPostEntity> columns;
}
