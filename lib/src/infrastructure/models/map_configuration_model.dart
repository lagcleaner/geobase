import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/core/enums/map_source_enum.dart';

part 'map_configuration_model.g.dart';

@JsonSerializable()
class MapConfigurationModel {
  const MapConfigurationModel({
    required this.sourceType,
    required this.properties,
  });

  factory MapConfigurationModel.fromJson(Map<String, dynamic> json) =>
      _$MapConfigurationModelFromJson(json);

  final MapSource sourceType;
  final Map<String, dynamic> properties;

  Map<String, dynamic> toJson() => _$MapConfigurationModelToJson(this);
}
