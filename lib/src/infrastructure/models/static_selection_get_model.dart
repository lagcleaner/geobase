import 'package:geobase/src/infrastructure/models/field_type_get_model.dart';

class FieldTypeStaticSelectionGetModel extends FieldTypeGetModel {
  FieldTypeStaticSelectionGetModel({
    required String name,
    required String metaType,
    required int fieldTypeId,
    required String renderClass,
    required this.options,
  }) : super(
          id: fieldTypeId,
          name: name,
          metaType: metaType,
          renderClass: renderClass,
        );

  final List<String> options;
}
