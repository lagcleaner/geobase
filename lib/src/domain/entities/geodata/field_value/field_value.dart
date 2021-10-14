import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';

class FieldValueEntity {
  FieldValueEntity({
    required this.type,
    required this.value,
  });

  final FieldTypeEnum type;

  final dynamic value;

  T getValueOrNull<T>() => value as T;

  bool isValid() {
    if (value == null) return true;
    return type.isTypeOf(value);
  }

  FieldValueEntity copyWith({
    FieldTypeEnum? type,
    dynamic value,
  }) {
    return FieldValueEntity(
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }

  @override
  String toString() => 'FieldValueEntity(type: $type, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FieldValueEntity &&
        other.type == type &&
        other.value == value;
  }

  @override
  int get hashCode => type.hashCode ^ value.hashCode;
}
