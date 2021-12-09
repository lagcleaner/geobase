import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/infrastructure/models/map_mode_model.dart';

part 'user_prefs_model.g.dart';

@JsonSerializable()
class UserPreferencesModel {
  const UserPreferencesModel({
    this.mapMode,
    required this.initialLng,
    required this.initialLat,
  });

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);

  final MapModeModel? mapMode;
  final double? initialLng;
  final double? initialLat;

  Map<String, dynamic> toJson() => _$UserPreferencesModelToJson(this);
}
