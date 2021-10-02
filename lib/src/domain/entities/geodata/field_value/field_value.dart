import 'package:geobase/src/domain/entities/categories/field_types/field_type.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:json_annotation/json_annotation.dart';

part 'field_value.g.dart';

@JsonSerializable()
class FieldValueEntity {
  FieldValueEntity({required this.type, this.value});

  factory FieldValueEntity.fromJson(Map<String, dynamic> json) =>
      _$FieldValueEntityFromJson(json);

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
          time: (_) => (value as TimeOfDay?) != null,
          datetime: (_) => (value as DateTime?) != null,
          localPhoto: (_) => (value as String?) != null,
          localFile: (_) => (value as String?) != null,
          localAudio: (_) => (value as String?) != null,
          remotePhoto: (_) => (value as String?) != null,
          remoteFile: (_) => (value as String?) != null,
          remoteAudio: (_) => (value as String?) != null,
        );
  }

  Map<String, dynamic> toJson() => _$FieldValueEntityToJson(this);
}
