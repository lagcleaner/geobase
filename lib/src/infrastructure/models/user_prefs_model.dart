import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_prefs_model.g.dart';

@JsonSerializable()
class UserPreferencesModel {
  const UserPreferencesModel({
    required this.initialLng,
    required this.initialLat,
  });

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);
  final double? initialLng;
  final double? initialLat;

  Map<String, dynamic> toJson() => _$UserPreferencesModelToJson(this);
}
