// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i31;

import 'src/domain/repositories/i_categories_repository.dart' as _i9;
import 'src/domain/repositories/i_configuration_repository.dart' as _i28;
import 'src/domain/repositories/i_geodata_repostitory.dart' as _i26;
import 'src/domain/repositories/repositories.dart' as _i5;
import 'src/domain/services/categories/categories_service.dart' as _i8;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i21;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart'
    as _i23;
import 'src/domain/services/configurations/map_source_conf_reader_service.dart'
    as _i22;
import 'src/domain/services/configurations/map_source_conf_writter_service.dart'
    as _i24;
import 'src/domain/services/configurations/user_preferences_reader_service.dart'
    as _i27;
import 'src/domain/services/configurations/user_preferences_writter_service.dart'
    as _i29;
import 'src/domain/services/geodata/geodata_filter_service.dart' as _i13;
import 'src/domain/services/geodata/goedata_service.dart' as _i15;
import 'src/domain/services/geodata/interfaces/i_geodata.dart' as _i14;
import 'src/domain/services/map/filters_service.dart' as _i20;
import 'src/domain/services/map/location_reader_service.dart' as _i34;
import 'src/domain/services/map/markers_service.dart' as _i25;
import 'src/domain/services/services.dart' as _i7;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i16;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i19;
import 'src/infrastructure/providers/location_provider.dart' as _i17;
import 'src/infrastructure/repositories/categories_repository.dart' as _i6;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i10;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i11;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i12;
import 'src/infrastructure/repositories/location_repository.dart' as _i18;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i32;
import 'src/presentation/pages/categories/blocs/category_view/cubit/categoryview_cubit.dart'
    as _i33;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i35;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.IGeoDataFilterRepository>(
      () => _i11.GeoDataFiltersRepository());
  gh.factory<_i5.IGeoDataRepository>(() => _i12.GeoDataRepository());
  gh.lazySingleton<_i7.IGeodataFiltersOptionsService>(
      () => _i13.GeodataFilterService(get<_i5.IGeoDataFilterRepository>()));
  gh.lazySingleton<_i14.IGeodataService>(
      () => _i15.GeoDataService(get<_i5.IGeoDataRepository>()));
  gh.lazySingleton<_i16.ILocationProvider>(() => _i17.LocationProvider());
  gh.factory<_i5.ILocationRepository>(
      () => _i18.LocationRepository(get<_i19.ILocationProvider>()));
  gh.lazySingleton<_i7.IMapFiltersOptionsService>(
      () => _i20.MapFiltersService(get<_i5.IMapFilterRepository>()));
  gh.lazySingleton<_i21.IMapSourceConfigurationReaderService>(() =>
      _i22.MapSourceConfigurationReaderService(
          get<_i5.IConfigurationRepository>()));
  gh.lazySingleton<_i23.IMapSourceConfigurationWritterService>(() =>
      _i24.MapSourceConfigurationWritterService(
          get<_i5.IConfigurationRepository>()));
  gh.lazySingleton<_i7.IMarkerGetterService>(
      () => _i25.GetMarkers(get<_i26.IGeoDataRepository>()));
  gh.lazySingleton<_i7.IUserPreferencesReaderService>(() =>
      _i27.UserPreferencesReaderService(get<_i28.IConfigurationRepository>()));
  gh.lazySingleton<_i7.IUserPreferencesWritterService>(() =>
      _i29.UserPreferencesWritterService(get<_i28.IConfigurationRepository>()));
  gh.factoryParam<_i30.MapCubit, _i31.LatLng?, dynamic>((initialLocation, _) =>
      _i30.MapCubit(
          sourceConfReader: get<_i7.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i32.CategoriesBloc>(
      () => _i32.CategoriesBloc(get<_i7.ICategoryService>()));
  gh.factory<_i33.CategoryViewCubit>(
      () => _i33.CategoryViewCubit(get<_i7.ICategoryService>()));
  gh.lazySingleton<_i7.ILocationReaderService>(() => _i34.LocationReaderService(
      get<_i5.IConfigurationRepository>(), get<_i5.ILocationRepository>()));
  gh.factory<_i35.LocationCubit>(() => _i35.LocationCubit(
      userPreferencesReaderService: get<_i7.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i7.IUserPreferencesWritterService>(),
      locationService: get<_i7.ILocationReaderService>()));
  return get;
}
