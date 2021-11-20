import 'package:geobase/src/infrastructure/models/field_value_model.dart';

class FieldValuePostModel extends FieldValueModel {
  FieldValuePostModel({
    required dynamic value,
    required this.geodataId,
    required this.columnId,
  }) : super(value: value);

  final int? geodataId;

  final int columnId;
}
