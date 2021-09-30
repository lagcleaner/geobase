import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/entities/geodata/properties/property.dart';

part 'unitary_property.g.dart';

@JsonSerializable()
class UnitaryProperty extends GeoDataProperty {
  UnitaryProperty({
    required FieldType type,
    required this.value,
  })  : assert(type.maybeMap(composed: (_) => false, orElse: () => true)),
        super(type);

  factory UnitaryProperty.fromJson(Map<String, dynamic> json) =>
      _$UnitaryPropertyFromJson(json);

  final dynamic value;

  T getValue<T>() => value as T;

  @override
  Map<String, dynamic> toJson() => _$UnitaryPropertyToJson(this);
}
