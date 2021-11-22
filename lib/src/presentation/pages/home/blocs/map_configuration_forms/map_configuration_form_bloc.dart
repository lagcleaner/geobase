import 'dart:developer';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/constants.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';
import 'package:geobase/src/presentation/core/utils/input_validators.dart';

@injectable
class MapConfigurationFormBloc
    extends FormBloc<MapConfigurationEntity, String> {
  MapConfigurationFormBloc({
    required this.readerService,
    required this.writterService,
  }) {
    addFieldBlocs(
      fieldBlocs: [
        source,
      ],
    );

    source.onValueChanges(
      onData: (prv, cur) async* {
        removeFieldBlocs(
          fieldBlocs: [
            wmsBaseUrl,
            wmsFormat,
            wmsLayers,
            urlTemplate,
            subdomains,
          ],
        );
        _addFieldBlocsBySource(
          MapConfigurationEntity(
            sourceType: cur.value,
            sourceProperties: {},
          ),
        );
      },
    );
  }

  final SelectFieldBloc<MapSource, dynamic> source = SelectFieldBloc(
    items: MapSource.values,
  );

  final TextFieldBloc urlTemplate = TextFieldBloc(
    validators: [
      StringValidator.required,
    ],
  );

  final TextFieldBloc wmsBaseUrl = TextFieldBloc(
    validators: [
      StringValidator.required,
    ],
  );

  final TextFieldBloc wmsFormat = TextFieldBloc(
    validators: [
      StringValidator.required,
    ],
  );

  final MultiSelectFieldBloc<String, dynamic> subdomains = MultiSelectFieldBloc(
    items: ['a', 'b', 'c', 'd', 'e'],
  );

  final ListFieldBloc<TextFieldBloc> wmsLayers = ListFieldBloc();

  final IMapConfigurationReaderService readerService;
  final IMapConfigurationWritterService writterService;

  Future<void> addNewLayer() async {
    wmsLayers.addFieldBloc(
      TextFieldBloc(
        validators: [
          StringValidator.required,
        ],
      ),
    );
  }

  void removeLayer(int index) {
    if (index == 0) return;
    wmsLayers.removeFieldBlocAt(index);
  }

  void _addFieldBlocsBySource(MapConfigurationEntity configs) {
    switch (configs.mapSourceType) {
      case MapSource.WMS:
        addFieldBlocs(
          fieldBlocs: [
            wmsBaseUrl
              ..updateInitialValue(
                configs.options[MAP_SOURCE_WMS_BASE_URL] as String?,
              ),
            wmsFormat
              ..updateInitialValue(
                configs.options[MAP_SOURCE_WMS_FORMAT] as String? ??
                    'image/png',
              ),
            wmsLayers,
            subdomains
              ..updateInitialValue(
                configs.options[MAP_SOURCE_SUBDOMAINS] as List<String>?,
              ),
          ],
        );
        final layersSaved =
            configs.options[MAP_SOURCE_WMS_LAYERS] as List<String>?;
        if (layersSaved?.isNotEmpty ?? true) {
          wmsLayers.removeFieldBlocsWhere((f) => true);
          wmsLayers.addFieldBloc(
            TextFieldBloc(validators: [StringValidator.required]),
          );
          for (final layer in layersSaved!) {
            wmsLayers.addFieldBloc(
              TextFieldBloc(
                initialValue: layer,
                validators: [StringValidator.required],
              ),
            );
          }
        }

        break;
      case MapSource.TMS:
        addFieldBlocs(
          fieldBlocs: [
            urlTemplate
              ..updateInitialValue(
                configs.options[MAP_SOURCE_URL_TEMPLATE] as String?,
              ),
          ],
        );
        break;
      case MapSource.OSM:
        addFieldBlocs(
          fieldBlocs: [
            urlTemplate
              ..updateInitialValue(
                configs.options[MAP_SOURCE_WMS_BASE_URL] as String?,
              ),
            subdomains
              ..updateInitialValue(
                configs.options[MAP_SOURCE_SUBDOMAINS] as List<String>?,
              ),
          ],
        );
        break;
      case MapSource.Empty:
      default:
        break;
    }
  }

  @override
  Future<void> close() {
    wmsLayers.close();
    wmsBaseUrl.close();
    wmsFormat.close();
    urlTemplate.close();
    subdomains.close();

    return super.close();
  }

  @override
  Future<void> onLoading() async {
    final result = await readerService.loadMapConfigurations();
    result.fold(
      (failure) {
        log(failure.toString());
        emitLoadFailed(failureResponse: failure.message);
      },
      (configs) {
        _addFieldBlocsBySource(configs);
        emitLoaded();
      },
    );
  }

  @override
  Future<void> onSubmitting() async {
    final configs = MapConfigurationEntity(
      sourceType: source.value,
      sourceProperties: {
        MAP_SOURCE_URL_TEMPLATE: urlTemplate.state.value,
        MAP_SOURCE_SUBDOMAINS: subdomains.state.value,
        // MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions.state.value,
        // MAP_SOURCE_WMS_OTHER_PARAMS: wmsOtherParams.state.value,
        MAP_SOURCE_WMS_BASE_URL: wmsBaseUrl.state.value,
        MAP_SOURCE_WMS_LAYERS: wmsLayers.value.map((e) => e.value).toList(),
        MAP_SOURCE_WMS_FORMAT: wmsFormat.state.value,
      },
    );
    final result = await writterService.setMapConfigurations(configs);
    result.fold(
      (failure) {
        log(failure.toString());
        emitFailure(failureResponse: failure.message);
      },
      (_) {
        emitSuccess(successResponse: configs);
      },
    );
  }
}
