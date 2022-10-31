import 'package:geobase/src/domain/entities/entities.dart';

class FieldTypeMediaGetEntity extends FieldTypeGetEntity {
  FieldTypeMediaGetEntity({
    required super.name,
    required super.metaType,
    required super.id,
    required super.renderClass,
    required this.extensions,
  });

  final List<String> extensions;
}
