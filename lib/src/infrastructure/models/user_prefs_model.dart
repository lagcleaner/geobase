import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_prefs_model.g.dart';

@JsonSerializable()
class UserPreferencesModel {
  const UserPreferencesModel({
    required this.showLocation,
  });

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);

  final bool showLocation;

  Map<String, dynamic> toJson() => _$UserPreferencesModelToJson(this);
}
