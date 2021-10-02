// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/domain/repositories/i_categories_repository.dart' as _i9;
import 'src/domain/repositories/i_configuration_repository.dart' as _i26;
import 'src/domain/repositories/i_geodata_repostitory.dart' as _i24;
import 'src/domain/repositories/repositories.dart' as _i5;
import 'src/domain/services/categories/categories_service.dart' as _i8;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i19;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart'
    as _i21;
import 'src/domain/services/configurations/map_source_conf_reader_service.dart'
    as _i20;
import 'src/domain/services/configurations/map_source_conf_writter_service.dart'
    as _i22;
import 'src/domain/services/configurations/user_preferences_reader_service.dart'
    as _i25;
import 'src/domain/services/configurations/user_preferences_writter_service.dart'
    as _i27;
import 'src/domain/services/geodata/geodata_filter_service.dart' as _i12;
import 'src/domain/services/geodata/goedata_service.dart' as _i14;
import 'src/domain/services/geodata/interfaces/i_geodata.dart' as _i13;
import 'src/domain/services/map/filters_service.dart' as _i18;
import 'src/domain/services/map/location_reader_service.dart' as _i29;
import 'src/domain/services/map/markers_service.dart' as _i23;
import 'src/domain/services/services.dart' as _i7;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i15;
import 'src/infrastructure/providers/location_provider.dart' as _i16;
import 'src/infrastructure/repositories/categories_repository.dart' as _i6;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i10;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i11;
import 'src/infrastructure/repositories/location_repository.dart' as _i17;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/views/home/blocs/location/location_cubit.dart' as _i30;
import 'src/presentation/views/home/blocs/map/map_cubit.dart'
    as _i28; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.factory<_i5.ICategoriesRepository>(() => _i6.CategoriesRepository());
  gh.lazySingleton<_i7.ICategoryService>(
      () => _i8.CategoriesService(get<_i9.ICategoriesRepository>()));
  gh.factory<_i5.IConfigurationRepository>(
      () => _i10.ConfigurationRepository());
  gh.factory<_i5.IGeoDataRepository>(() => _i11.GeoDataRepository());
  gh.lazySingleton<_i7.IGeodataFiltersOptionsService>(
      () => _i12.GeodataFilterService(get<_i5.IGeoDataFilterRepository>()));
  gh.lazySingleton<_i13.IGeodataService>(
      () => _i14.GeoDataService(get<_i5.IGeoDataRepository>()));
  gh.lazySingleton<_i15.ILocationProvider>(() => _i16.LocationProvider());
  gh.factory<_i5.ILocationRepository>(() => _i17.LocationRepository());
  gh.lazySingleton<_i7.IMapFiltersOptionsService>(
      () => _i18.MapFiltersService(get<_i5.IMapFilterRepository>()));
  gh.lazySingleton<_i19.IMapSourceConfigurationReaderService>(() =>
      _i20.MapSourceConfigurationReaderService(
          get<_i5.IConfigurationRepository>()));
  gh.lazySingleton<_i21.IMapSourceConfigurationWritterService>(() =>
      _i22.MapSourceConfigurationWritterService(
          get<_i5.IConfigurationRepository>()));
  gh.lazySingleton<_i7.IMarkerGetterService>(
      () => _i23.GetMarkers(get<_i24.IGeoDataRepository>()));
  gh.lazySingleton<_i7.IUserPreferencesReaderService>(() =>
      _i25.UserPreferencesReaderService(get<_i26.IConfigurationRepository>()));
  gh.lazySingleton<_i7.IUserPreferencesWritterService>(() =>
      _i27.UserPreferencesWritterService(get<_i26.IConfigurationRepository>()));
  gh.factory<_i28.MapCubit>(() => _i28.MapCubit(
      sourceConfReader: get<_i7.IMapSourceConfigurationReaderService>()));
  gh.lazySingleton<_i7.ILocationReaderService>(() => _i29.LocationReaderService(
      get<_i5.IConfigurationRepository>(), get<_i5.ILocationRepository>()));
  gh.factory<_i30.LocationCubit>(() => _i30.LocationCubit(
      userPreferencesReaderService: get<_i7.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i7.IUserPreferencesWritterService>(),
      locationService: get<_i7.ILocationReaderService>()));
  return get;
}
