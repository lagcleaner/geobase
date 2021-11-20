import 'package:geobase/src/domain/entities/entities.dart';

class FieldTypeMediaGetEntity extends FieldTypeGetEntity {
  FieldTypeMediaGetEntity({
    required String name,
    required String metaType,
    required int id,
    required String renderClass,
    required this.extensions,
  }) : super(
          id: id,
          name: name,
          metaType: metaType,
          renderClass: renderClass,
        );

  final List<String> extensions;
}
