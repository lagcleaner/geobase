import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';

@freezed
class UserPreferencesEntity with _$UserPreferencesEntity {
  const factory UserPreferencesEntity.get({
    @Default(false) bool showLocation,
    @Default(Duration(seconds: 3)) Duration updateInterval,
  }) = UserPreferencesGetEntity;

  const factory UserPreferencesEntity.update({
    bool? showLocation,
    Duration? updateInterval,
  }) = UserPreferencesUpdateEntity;
}
