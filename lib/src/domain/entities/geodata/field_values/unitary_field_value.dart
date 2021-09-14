import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities.dart';
import 'field_value.dart';

part 'unitary_field_value.g.dart';

@JsonSerializable()
class UnitaryFieldValue extends FieldValue {
  final dynamic value;

  UnitaryFieldValue({
    required FieldType type,
    required this.value,
  })  : assert(type.maybeMap(composed: (_) => false, orElse: () => true)),
        super(type);

  T getValue<T>() => value as T;

  factory UnitaryFieldValue.fromJson(Map<String, dynamic> json) =>
      _$UnitaryFieldValueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UnitaryFieldValueToJson(this);
}
