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
  }) : super(isLoading: true) {
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

  final ListFieldBloc<TextFieldBloc> wmsLayers = ListFieldBloc();

  final ListFieldBloc<TextFieldBloc> subdomains = ListFieldBloc();

  final IMapConfigurationReaderService readerService;
  final IMapConfigurationWritterService writterService;

  void _addFieldBlocsBySource(MapConfigurationEntity configs) {
    source.updateValue(configs.mapSourceType);
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
            subdomains,
          ],
        );
        _initiailizeListFieldBloc(
          wmsLayers,
          (configs.options[MAP_SOURCE_WMS_LAYERS] as List?)
              ?.map((item) => item as String)
              .toList(),
        );
        _initiailizeListFieldBloc(
          subdomains,
          (configs.options[MAP_SOURCE_SUBDOMAINS] as List?)
              ?.map((item) => item as String)
              .toList(),
        );
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
                configs.options[MAP_SOURCE_URL_TEMPLATE] as String?,
              ),
            subdomains,
          ],
        );
        _initiailizeListFieldBloc(
          subdomains,
          (configs.options[MAP_SOURCE_SUBDOMAINS] as List?)
              ?.map((item) => item as String)
              .toList(),
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
        MAP_SOURCE_URL_TEMPLATE: urlTemplate.value,
        MAP_SOURCE_SUBDOMAINS:
            subdomains.value.map((e) => e.value).where((e) => e != '').toList(),
        // MAP_SOURCE_ADITIONAL_OPTIONS: aditionalOptions.state.value,
        // MAP_SOURCE_WMS_OTHER_PARAMS: wmsOtherParams.state.value,
        MAP_SOURCE_WMS_BASE_URL: wmsBaseUrl.value,
        MAP_SOURCE_WMS_LAYERS:
            wmsLayers.value.map((e) => e.value).where((e) => e != '').toList(),
        MAP_SOURCE_WMS_FORMAT: wmsFormat.value,
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

void _initiailizeListFieldBloc(
  ListFieldBloc<TextFieldBloc> listBloc,
  List<String>? defaultValues,
) {
  listBloc.removeFieldBlocsWhere((f) => true);
  if (defaultValues?.isNotEmpty ?? false) {
    for (final element in defaultValues!) {
      _addAutoRemovableField(listBloc, element);
    }
  }
  _addAutoRemovableField(listBloc, '');
}

void _addAutoRemovableField(
  ListFieldBloc<TextFieldBloc> listBloc,
  String? initialValue,
) {
  final self = TextFieldBloc(
    initialValue: initialValue,
    validators: [],
  );
  self.addValidators([notRequiredLastIfIsNotAlone(listBloc, self)]);

  listBloc.addFieldBloc(
    self
      ..onValueChanges(
        onData: (prev, curr) async* {
          if (listBloc.value.last != self && (curr.value ?? '') == '') {
            listBloc.removeFieldBlocsWhere((element) {
              return element == self;
            });
          }
          if (listBloc.value.last == self &&
              (prev.value ?? '') == '' &&
              (curr.value ?? '') != '') {
            _addAutoRemovableField(listBloc, '');
          }
        },
      ),
  );
}

String? Function(String?) notRequiredLastIfIsNotAlone(
  ListFieldBloc<TextFieldBloc> listBloc,
  TextFieldBloc self,
) {
  return (e) {
    if (listBloc.value.length > 1 && listBloc.value.last == self) {
      return null;
    }
    return StringValidator.required(e);
  };
}
