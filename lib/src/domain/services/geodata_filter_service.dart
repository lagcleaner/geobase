import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGeodataFiltersOptionsService)
class GeodataFilterService implements IGeodataFiltersOptionsService {
  GeodataFilterService(
    this.filterRepository,
  );

  final IGeodataFilterRepository filterRepository;

  @override
  Future<Either<Failure, FilterDataOptionsEntity>> loadFilterOptions() async {
    return filterRepository.loadDefaultFilterOptions();
  }

  @override
  Future<Either<Failure, Unit>> setFilterOptions(
    FilterDataOptionsEntity filters,
  ) async {
    return filterRepository.setDefaultFilterOptions(filters);
  }
}
