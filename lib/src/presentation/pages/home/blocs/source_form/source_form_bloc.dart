import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/general_extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/input_validators.dart';

abstract class IMapSourceFormBloc
    extends FormBloc<MapSourceConfiguration, Failure> {
  InputBloc<MapSource> get sourceType;
  //
  InputBloc<String?> get urlTemplate;
  InputBloc<List<String>?> get subdomains;
  InputBloc<Map<String, dynamic>?> get aditionalOptions;
  // InputBloc<double> get tileSize;
  // InputBloc<double> get maxZoom;
  InputBloc<String?> get wmsBaseUrl;
  InputBloc<List<String>?> get wmsLayers;
  InputBloc<Map<String, dynamic>?> get wmsOtherParams;
  // InputBloc<String?> get wmsCRS;
  InputBloc<String?> get wmsFormat;

  @override
  List<InputBloc> get inputs => [
        sourceType,
        urlTemplate,
        subdomains,
        aditionalOptions,
        wmsBaseUrl,
        wmsFormat,
        wmsLayers,
        wmsOtherParams,
      ];
}

@Injectable(as: IMapSourceFormBloc)
class MapSourceFormBloc extends IMapSourceFormBloc {
  MapSourceFormBloc({
    @factoryParam MapSource? sourceType,
    @factoryParam this.source,
  })  : mapSourceType = sourceType!,
        super();

  final MapSource mapSourceType;
  final MapSourceConfiguration? source;

  @override
  late final InputBloc<MapSource> sourceType = InputBloc(
    pureValue: mapSourceType,
  );

  @override
  late final InputBloc<String?> urlTemplate = [
    MapSource.Assets,
    MapSource.File,
    MapSource.CustomRemote,
    MapSource.TMS,
  ].contains(mapSourceType)
      ? InputBloc(
          pureValue: source?.options.getCastedOrDefault(
            MAP_SOURCE_URL_TEMPLATE,
            defaultValue: null,
          ),
          validationType: ValidationType.explicit,
          validator: const ListValidator([StringValidator.required]),
        )
      : InputBloc(pureValue: null);

  @override
  late final InputBloc<String?> wmsBaseUrl = [
    MapSource.WMS,
  ].contains(mapSourceType)
      ? InputBloc(
          pureValue: source?.options.getCastedOrDefault(
            MAP_SOURCE_WMS_BASE_URL,
            defaultValue: null,
          ),
          validationType: ValidationType.explicit,
          validator: const ListValidator([
            StringValidator.required,
          ]),
        )
      : InputBloc(pureValue: null);

  @override
  late final InputBloc<String?> wmsFormat = [
    MapSource.WMS,
  ].contains(mapSourceType)
      ? InputBloc(
          pureValue: source?.options.getCastedOrDefault(
            MAP_SOURCE_WMS_FORMAT,
            defaultValue: 'image/pngs',
          ),
          validationType: ValidationType.explicit,
          validator: const ListValidator([
            StringValidator.required,
          ]),
        )
      : InputBloc(pureValue: null);

  @override
  late final InputBloc<List<String>?> subdomains = [
    MapSource.WMS,
    MapSource.CustomRemote,
    MapSource.TMS,
  ].contains(mapSourceType)
      ? InputBloc(
          pureValue: source?.options.getCastedOrDefault(
            MAP_SOURCE_SUBDOMAINS,
            defaultValue: null,
          ),
          validationType: ValidationType.explicit,
          validator: const ListValidator([
            IterableValidator.notEmpty,
          ]),
        )
      : InputBloc(pureValue: null);

  @override
  late final InputBloc<List<String>?> wmsLayers = [
    MapSource.WMS,
  ].contains(mapSourceType)
      ? InputBloc(
          pureValue: source?.options.getCastedOrDefault(
            MAP_SOURCE_WMS_LAYERS,
            defaultValue: null,
          ),
          validationType: ValidationType.explicit,
          validator: const ListValidator([
            IterableValidator.notEmpty,
          ]),
        )
      : InputBloc(pureValue: null);

  @override
  late final InputBloc<Map<String, dynamic>?> aditionalOptions = InputBloc(
    pureValue: source?.options.getCastedOrDefault(
      MAP_SOURCE_ADITIONAL_OPTIONS,
      defaultValue: null,
    ),
  );
  @override
  late final InputBloc<Map<String, dynamic>?> wmsOtherParams = [
    MapSource.WMS,
  ].contains(mapSourceType)
      ? InputBloc(
          pureValue: source?.options.getCastedOrDefault(
            MAP_SOURCE_WMS_OTHER_PARAMS,
            defaultValue: null,
          ),
        )
      : InputBloc(pureValue: null);

  @override
  Future<FormBlocState<MapSourceConfiguration, Failure>> onSubmmit() async {
    return FormSuccessState(
      MapSourceConfiguration(
        sourceType: sourceType.state.value,
        sourceProperties: {
          MAP_SOURCE_URL_TEMPLATE: urlTemplate.state.value,
          MAP_SOURCE_SUBDOMAINS: subdomains.state.value,
          MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions.state.value,
          MAP_SOURCE_WMS_OTHER_PARAMS: wmsOtherParams.state.value,
          MAP_SOURCE_WMS_BASE_URL: wmsBaseUrl.state.value,
          MAP_SOURCE_WMS_LAYERS: wmsLayers.state.value,
          MAP_SOURCE_WMS_FORMAT: wmsFormat.state.value,
        },
      ),
    );
  }
}
