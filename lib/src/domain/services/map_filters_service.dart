import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IMapFiltersOptionsService)
class MapFiltersService implements IMapFiltersOptionsService {
  MapFiltersService(
    this.filterRepository,
  );

  final IMapFilterRepository filterRepository;

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
