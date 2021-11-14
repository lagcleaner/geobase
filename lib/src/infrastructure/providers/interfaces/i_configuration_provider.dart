abstract class IConfigurationProvider {
  Future<void> setLocationUpdateInterval(Duration duration);

  Future<void> setAccessToUserLocation(bool enabled);

  // ignore: type_annotate_public_apis
  Future<void> setMapSourceOptions(source);
}
