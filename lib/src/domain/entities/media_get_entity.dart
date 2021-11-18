import 'package:geobase/src/domain/entities/entities.dart';

class FieldTypeMediaGetEntity extends FieldTypeGetEntity {
  FieldTypeMediaGetEntity({
    required String name,
    required String metaType,
    required int id,
    required this.extensions,
  }) : super(id: id, name: name, metaType: metaType);

  final List<String> extensions;
}
