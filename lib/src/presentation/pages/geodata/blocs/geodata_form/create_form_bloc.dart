import 'package:dartz/dartz.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';
import 'package:latlong2/latlong.dart';

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
  );

  @override
  late final InputBloc<String> longitude = InputBloc<String>(
    pureValue: initialData.location?.longitude.toString() ?? '',
  );

  @override
  late final Map<String, InputBloc> fieldInputBlocs =
      initialData.category.fields.entries.fold(
    {},
    (previousValue, element) => previousValue
      ..putIfAbsent(
        element.key,
        () => getInputBloc(element.value),
      ),
  );

  @override
  late final Map<String, InputBloc<int?>> relationInputBlocs =
      initialData.category.relations.entries.fold(
    {},
    (previousValue, element) => previousValue
      ..putIfAbsent(
        element.key,
        () => InputBloc<int?>(
          pureValue: null,
        ),
      ),
  );

  @override
  Future<FormBlocState<Unit, Failure>> onSubmmit() async {
    final response = await geodataService.createGeodata(
      GeodataPostEntity(
        categoryId: categoryId.state.value,
        location: LatLng(
          double.parse(latitude.state.value),
          double.parse(longitude.state.value),
        ),
        relation: Map.fromEntries(
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
