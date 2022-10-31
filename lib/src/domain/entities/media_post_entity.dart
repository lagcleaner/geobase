import 'package:geobase/src/domain/entities/entities.dart';

class FieldTypeMediaPostEntity extends FieldTypeEntity {
  FieldTypeMediaPostEntity({
    required super.name,
    required super.metaType,
    required this.extensions,
  });

  final List<String> extensions;
}
