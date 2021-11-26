import 'package:dartz/dartz.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/utils/input_validators.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';

abstract class IGeodataCreateFormBloc extends IGeodataFormBloc {}

@Injectable(as: IGeodataCreateFormBloc)
class GeodataCreateFormBloc extends IGeodataCreateFormBloc {
  GeodataCreateFormBloc({
    required this.geodataService,
    @factoryParam GeodataCreateInitialData? createInitialData,
  })  : initialData = createInitialData!,
        super();

  final IGeodataService geodataService;
  final GeodataCreateInitialData initialData;

  @override
  CategoryGetEntity get category => initialData.category;

  @override
  late final InputBloc<int> categoryId = InputBloc(
    pureValue: initialData.category.id,
  );

  @override
  late final InputBloc<String> latitude = InputBloc<String>(
    pureValue: initialData.location?.latitude.toString() ?? '',
    validationType: ValidationType.explicit,
    validator: ListValidator(
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
  late final InputBloc<String> longitude = InputBloc<String>(
    pureValue: initialData.location?.longitude.toString() ?? '',
    validationType: ValidationType.explicit,
    validator: ListValidator(
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
  late final Map<ColumnGetEntity, InputBloc<FieldValueEntity>> fieldValues =
      Map.fromEntries(
    category.columns.map(
      (e) => MapEntry(
        e,
        FieldRenderResolver.getInputBloc(
              e,
              FieldValuePostEntity(value: null, columnId: e.id),
            ) ??
            InputBloc<FieldValueEntity>(
              pureValue: FieldValuePostEntity(
                columnId: e.id,
                value: null,
              ),
            ),
      ),
    ),
  );

  @override
  Future<FormBlocState<Unit, Failure>> onSubmmit() async {
    final response = await geodataService.createGeodata(
      GeodataPostEntity(
        categoryId: categoryId.state.value,
        latitude: double.parse(latitude.state.value),
        longitude: double.parse(longitude.state.value),
        fieldValues: fieldValues.values
            .map((value) => value.state.value as FieldValuePostEntity)
            .toList(),
      ),
    );
    return response.fold(
      (error) => FormErrorState(error),
      (_) => const FormSuccessState(unit),
    );
  }
}
