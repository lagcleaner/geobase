import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_mode_model.g.dart';

@JsonSerializable()
class MapModeModel {
  const MapModeModel({
    this.categoryUsed,
  });

  factory MapModeModel.fromJson(Map<String, dynamic> json) =>
      _$MapModeModelFromJson(json);

  final int? categoryUsed;

  Map<String, dynamic> toJson() => _$MapModeModelToJson(this);
}
