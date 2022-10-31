import 'package:geobase/src/infrastructure/models/field_value_model.dart';

class FieldValuePostModel extends FieldValueModel {
  FieldValuePostModel({
    required super.value,
    required this.geodataId,
    required this.columnId,
  });

  final int? geodataId;

  final int columnId;
}
