import '../../categories/field_types/field_type.dart';
import 'composed_field_value.dart';
import 'unitary_field_value.dart';

abstract class FieldValue {
  final FieldType type;

  FieldValue(this.type);

  bool get isComposed => type.maybeMap(
        composed: (_) => true,
        orElse: () => false,
      );

  bool get isUnitary => !isComposed;

  factory FieldValue.fromJson(Map<String, dynamic> json) {
    if (json['field_type'] as String == 'composed') {
      return ComposedFieldValue.fromJson(json);
    }
    return UnitaryFieldValue.fromJson(json);
  }

  Map<String, dynamic> toJson();
}
