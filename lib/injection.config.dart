// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/domain/repositories/repositories.dart' as _i7;
import 'src/domain/services/categories/categories_filters_service.dart' as _i9;
import 'src/domain/services/categories/categories_service.dart' as _i6;
import 'src/domain/services/configurations/configuration_service.dart' as _i18;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i17;
import 'src/domain/services/geodata/geodata_filters_service.dart' as _i11;
import 'src/domain/services/map/filters_service.dart' as _i16;
import 'src/domain/services/map/location_service.dart' as _i12;
import 'src/domain/services/map/markers_service.dart' as _i19;
import 'src/domain/services/services.dart' as _i5;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i13;
import 'src/infrastructure/providers/location_provider.dart' as _i14;
import 'src/infrastructure/repositories/categories_repository.dart' as _i8;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i10;
import 'src/infrastructure/repositories/location_repository.dart' as _i15;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/views/home/blocs/map/map_cubit.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.lazySingleton<_i5.ICategoriesLoaderService>(() => _i6.CategoriesService());
  gh.factory<_i7.ICategoriesRepository>(() => _i8.CategoriesRepository());
  gh.lazySingleton<_i5.ICategoryFiltersOptionsLoaderService>(
      () => _i9.GeodataFilterService());
  gh.factory<_i7.IConfigurationRepository>(
      () => _i10.ConfigurationRepository());
  gh.lazySingleton<_i5.IGeodataFiltersOptionsLoaderService>(
      () => _i11.GeodataFilterService());
  gh.lazySingleton<_i5.ILocationConfigurationService>(
      () => _i12.GetCurrentLocation());
  gh.lazySingleton<_i13.ILocationProvider>(() => _i14.LocationProvider());
  gh.factory<_i7.ILocationRepository>(() => _i15.LocationRepository());
  gh.lazySingleton<_i5.IMapFiltersOptionsLoaderService>(
      () => _i16.MapFilterService());
  gh.lazySingleton<_i17.IMapSourceConfigurationChangesListenerService>(
      () => _i18.ConfigurationService());
  gh.lazySingleton<_i5.IMarkerGetterService>(() => _i19.GetMarkers());
  gh.factory<_i20.MapCubit>(() => _i20.MapCubit(
      sourceConfReader: get<_i5.IMapSourceConfigurationReaderService>()));
  return get;
}
