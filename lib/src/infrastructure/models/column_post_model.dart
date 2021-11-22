import 'package:geobase/src/infrastructure/models/column_model.dart';

class ColumnPostModel extends ColumnModel {
  ColumnPostModel({
    required String name,
    required this.categoryId,
    required this.typeId,
  }) : super(name: name);

  final int? categoryId;

  final int typeId;
}
