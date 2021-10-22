import 'package:dartz/dartz.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';
import 'package:latlong2/latlong.dart';

abstract class IGeodataEditFormBloc extends IGeodataFormBloc {
  InputBloc<int> get geodataId;

  GeoDataGetEntity get defaultData;

  @override
  List<InputBloc> get inputs => [
        geodataId,
        categoryId,
        latitude,
        longitude,
        ...fieldInputBlocs.values,
        ...relationInputBlocs.values,
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
  GeoDataGetEntity get defaultData => initialData.data;

  @override
  late final InputBloc<int> categoryId = InputBloc(
    pureValue: category.id,
  );

  @override
  late final InputBloc<int> geodataId = InputBloc(
    pureValue: defaultData.id,
  );

  @override
  late final InputBloc<String> latitude = InputBloc<String>(
    pureValue: defaultData.location.latitude.toString(),
  );

  @override
  late final InputBloc<String> longitude = InputBloc<String>(
    pureValue: defaultData.location.longitude.toString(),
  );

  @override
  late final Map<String, InputBloc> fieldInputBlocs =
      category.fields.entries.fold(
    {},
    (previousValue, element) => previousValue
      ..putIfAbsent(
        element.key,
        () => getInputBloc(element.value)
          ..pureValue = defaultData.fields[element.key]?.value,
      ),
  );

  @override
  late final Map<String, InputBloc<int?>> relationInputBlocs =
      category.relations.entries.fold(
    {},
    (previousValue, element) => previousValue
      ..putIfAbsent(
        element.key,
        () => InputBloc<int?>(
          pureValue: defaultData.relations[element.key]?.id,
        ),
      ),
  );

  @override
  Future<FormBlocState<Unit, Failure>> onSubmmit() async {
    final response = await geodataService.editGeodata(
      GeoDataPutEntity(
        id: geodataId.state.value,
        categoryId: categoryId.state.value,
        location: LatLng(
          double.parse(latitude.state.value),
          double.parse(longitude.state.value),
        ),
        relations: Map.fromEntries(
          relationInputBlocs.entries.map(
            (entry) => MapEntry(entry.key, entry.value.state.value),
          ),
        ),
        fields: Map.fromEntries(
          fieldInputBlocs.entries.map(
            (entry) => MapEntry(
              entry.key,
              FieldValueEntity(
                type:
                    category.fields[entry.key] ?? FieldTypeEnum.StringFieldType,
                value: entry.value.state.value,
              ),
              // TODO: check this way to store fields.
            ),
          ),
        ),
      ),
    );
    return response.fold(
      (error) => FormErrorState(error),
      (_) => const FormSuccessState(unit),
    );
  }
}
