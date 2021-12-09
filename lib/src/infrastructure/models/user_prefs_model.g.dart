// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_prefs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferencesModel _$UserPreferencesModelFromJson(Map<String, dynamic> json) {
  return UserPreferencesModel(
    mapMode: json['mapMode'] == null
        ? null
        : MapModeModel.fromJson(json['mapMode'] as Map<String, dynamic>),
    initialLng: (json['initialLng'] as num?)?.toDouble(),
    initialLat: (json['initialLat'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$UserPreferencesModelToJson(
        UserPreferencesModel instance) =>
    <String, dynamic>{
      'mapMode': instance.mapMode,
      'initialLng': instance.initialLng,
      'initialLat': instance.initialLat,
    };
