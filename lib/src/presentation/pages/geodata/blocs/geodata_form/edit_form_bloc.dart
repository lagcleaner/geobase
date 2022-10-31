import 'package:dartz/dartz.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';

abstract class IGeodataEditFormBloc extends GeodataFormBloc {
  LyInput<int> get geodataId;

  GeodataGetEntity get defaultData;

  @override
  List<LyInput> get inputs => [
        geodataId,
        categoryId,
        latitude,
        longitude,
        ...fieldValues.values,
      ];
}

@Injectable(as: IGeodataEditFormBloc)
class GeodataEditFormBloc extends IGeodataEditFormBloc {
  GeodataEditFormBloc({
    required this.geodataService,
    @factoryParam GeodataEditInitialData? editInitialData,
  })  : initialData = editInitialData!,
        super();

  final IGeodataService geodataService;
  final GeodataEditInitialData initialData;

  @override
  CategoryGetEntity get category => initialData.data.category;

  @override
  GeodataGetEntity get defaultData => initialData.data;

  @override
  late final LyInput<int> categoryId = LyInput(
    pureValue: category.id,
  );

  @override
  late final LyInput<int> geodataId = LyInput(
    pureValue: defaultData.id,
  );

  @override
  late final LyInput<String> latitude = LyInput<String>(
    pureValue: defaultData.location.latitude.toString(),
    validationType: LyValidationType.explicit,
    validator: LyListValidator(
      [
        StringValidator.required,
        StringValidator.number,
        StringValidator.numberBetween(
          min: -90,
          max: 90,
          errorMessage: '-90 < latitud (en grados) < 90',
        ),
      ],
    ),
  );

  @override
  late final LyInput<String> longitude = LyInput<String>(
    pureValue: defaultData.location.longitude.toString(),
    validationType: LyValidationType.explicit,
    validator: LyListValidator(
      [
        StringValidator.required,
        StringValidator.number,
        StringValidator.numberBetween(
          min: -180,
          max: 180,
          errorMessage: '-180 < longitud (en grados) < 180',
        ),
      ],
    ),
  );

  @override
  late final Map<ColumnGetEntity, LyInput<FieldValueEntity>> fieldValues =
      Map.fromEntries(
    defaultData.fields.map(
      (e) => MapEntry(
        e.column,
        FieldRenderResolver.getInputBloc(
          e.column,
          FieldValuePutEntity(
            id: e.id,
            geodataId: e.geodataId,
            value: e.value,
            columnId: e.column.id,
          ),
        )!,
      ),
    ),
  );

 
  
  @override
  Stream<LyFormState<Unit, Failure>> onSubmit() async* {
    final response = await geodataService.editGeodata(
      GeodataPutEntity(
        id: geodataId.state.value,
        categoryId: categoryId.state.value,
        latitude: double.parse(latitude.state.value),
        longitude: double.parse(longitude.state.value),
        fieldValues: fieldValues.values
            .map((value) => value.state.value as FieldValuePutEntity)
            .toList(),
      ),
    );
yield response.fold(
      (error) => LyFormErrorState(error, inputStates),
      (_) => LyFormSuccessState(unit, inputStates),
    );
  }
}
