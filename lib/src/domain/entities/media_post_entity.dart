import 'package:geobase/src/domain/entities/entities.dart';

class FieldTypeMediaPostEntity extends FieldTypeEntity {
  FieldTypeMediaPostEntity({
    required String name,
    required String metaType,
    required this.extensions,
  }) : super(name: name, metaType: metaType);

  final List<String> extensions;
}
