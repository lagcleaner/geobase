import 'package:geobase/src/domain/entities/categories/field_types/field_type.dart';

class FieldValueEntity {
  FieldValueEntity({
    required this.type,
    required this.value,
  });

  final FieldType type;

  final dynamic value;

  T getValueOrNull<T>() => value as T;

  bool isValid() {
    return (type.nulleable && value == null) ||
        type.map<bool>(
          tbool: (_) => (value as bool?) != null,
          tint: (_) => (value as int?) != null,
          tdouble: (_) => (value as double?) != null,
          tstring: (_) => (value as String?) != null,
          year: (_) => (value as int?) != null,
          month: (_) => (value as int?) != null,
          day: (_) => (value as int?) != null,
          weekDay: (_) => (value as String?) != null,
          hour: (_) => (value as int?) != null,
          minute: (_) => (value as int?) != null,
          second: (_) => (value as int?) != null,
          date: (_) => (value as DateTime?) != null,
          time: (_) => (value as DateTime?) != null,
          datetime: (_) => (value as DateTime?) != null,
          localPhoto: (_) => (value as String?) != null,
          localFile: (_) => (value as String?) != null,
          localAudio: (_) => (value as String?) != null,
          remotePhoto: (_) => (value as String?) != null,
          remoteFile: (_) => (value as String?) != null,
          remoteAudio: (_) => (value as String?) != null,
        );
  }

  FieldValueEntity copyWith({
    FieldType? type,
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
