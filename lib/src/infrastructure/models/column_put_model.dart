import 'package:geobase/src/infrastructure/models/column_model.dart';

class ColumnPutModel extends ColumnModel {
  ColumnPutModel({
    required this.id,
    required this.categoryId,
    required this.typeId,
    required String name,
  }) : super(name: name);

  final int id;

  final int categoryId;

  final int typeId;
}
