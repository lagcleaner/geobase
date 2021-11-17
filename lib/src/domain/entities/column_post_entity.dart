import 'package:geobase/src/domain/entities/column_entity.dart';

class ColumnPostEntity extends ColumnEntity {
  ColumnPostEntity({
    required String name,
    required this.categoryId,
    required this.typeId,
  }) : super(name: name);

  final int categoryId;

  final int typeId;
}
