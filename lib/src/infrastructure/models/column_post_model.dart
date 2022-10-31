import 'package:geobase/src/infrastructure/models/column_model.dart';

class ColumnPostModel extends ColumnModel {
  ColumnPostModel({
    required super.name,
    required this.categoryId,
    required this.typeId,
  });

  final int? categoryId;

  final int typeId;
}
