// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_prefs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferencesModel _$UserPreferencesModelFromJson(Map<String, dynamic> json) {
  return UserPreferencesModel(
    initialLng: (json['initialLng'] as num?)?.toDouble(),
    initialLat: (json['initialLat'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$UserPreferencesModelToJson(
        UserPreferencesModel instance) =>
    <String, dynamic>{
      'initialLng': instance.initialLng,
      'initialLat': instance.initialLat,
    };
