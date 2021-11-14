import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/core/enums/map_source_enum.dart';

part 'source_configuration_model.g.dart';

@JsonSerializable()
class SourceConfigurationModel {
  SourceConfigurationModel(this.type, this.properties);

  factory SourceConfigurationModel.fromJson(Map<String, dynamic> json) =>
      _$SourceConfigurationModelFromJson(json);

  final MapSource type;
  final Map<String, dynamic> properties;

  Map<String, dynamic> toJson() => _$SourceConfigurationModelToJson(this);
}
