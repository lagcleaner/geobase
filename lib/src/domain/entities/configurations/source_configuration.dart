import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_configuration.freezed.dart';

@freezed
class MapSourceConfiguration with _$MapSourceConfiguration {
  const factory MapSourceConfiguration.wms({
    required String baseUrl,
    required List<String> layers,
    required List<String> subdomains,
  }) = _WMSConfiguration;
  const factory MapSourceConfiguration.tms({
    required String templateUrl,
  }) = _TMSConfiguration;
  const factory MapSourceConfiguration.assets({
    required String templateUrl,
  }) = _AssetConfiguration;
  const factory MapSourceConfiguration.file({
    required String templateUrl,
  }) = _FileMapConfiguration;
  const factory MapSourceConfiguration.custom(
      {required String templateUrl,
      List<String>? subdomains}) = _CustomSourceConfiguration;
  const factory MapSourceConfiguration.empty() = _EmptySourceConfiguration;
}
