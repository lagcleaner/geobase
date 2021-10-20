import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/categories/interfaces/i_category.dart';
import 'package:geobase/src/domain/services/map/interfaces/i_location_reader.dart';
import 'package:latlong2/latlong.dart';

part 'geodata_create_cubit.freezed.dart';
part 'geodata_create_state.dart';

@injectable
class GeodataCreateCubit extends Cubit<GeodataCreateState> {
  GeodataCreateCubit(
    this.categoryService,
    this.locationService,
  ) : super(const GeodataCreateState.initial());

  final ICategoryService categoryService;
  final ILocationReaderService locationService;

  Future<void> loadCategories() async {
    final categoriesEither = await categoryService.loadCategoriesWhere();
    categoriesEither.fold(
      (failure) => emit(
        GeodataCreateState.failure(failure: failure),
      ),
      (categories) => emit(
        GeodataCreateState.categorySelection(categories: categories),
      ),
    );
  }

  Future<void> loadTemplate(int categoryId, [LatLng? location]) async {
    LatLng? dfltLocation = location;
    if (location == null) {
      //if location is null set as default location the current location.
      final eitherLocation = await locationService.currentLocation();
      dfltLocation = eitherLocation.fold((l) => location, (r) => r);
    }
    final eitherCategory = await categoryService.getCategory(categoryId);
    eitherCategory.fold(
      (failure) => emit(
        GeodataCreateState.failure(failure: failure),
      ),
      (category) => emit(
        GeodataCreateState.inputData(
          fetchData: GeodataCreateInitialData(
            location: dfltLocation,
            category: category,
          ),
        ),
      ),
    );
  }
}

class GeodataCreateInitialData {
  GeodataCreateInitialData({
    this.location,
    required this.category,
  });

  final LatLng? location;
  final CategoryGetEntity category;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GeodataCreateInitialData &&
        other.location == location &&
        other.category == category;
  }

  @override
  int get hashCode => location.hashCode ^ category.hashCode;
}
