// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i32;

import 'src/domain/repositories/i_categories_repository.dart' as _i10;
import 'src/domain/repositories/i_configuration_repository.dart' as _i29;
import 'src/domain/repositories/i_geodata_repostitory.dart' as _i27;
import 'src/domain/repositories/repositories.dart' as _i6;
import 'src/domain/services/categories/categories_service.dart' as _i9;
import 'src/domain/services/categories/interfaces/i_category.dart' as _i34;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i22;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart'
    as _i24;
import 'src/domain/services/configurations/map_source_conf_reader_service.dart'
    as _i23;
import 'src/domain/services/configurations/map_source_conf_writter_service.dart'
    as _i25;
import 'src/domain/services/configurations/user_preferences_reader_service.dart'
    as _i28;
import 'src/domain/services/configurations/user_preferences_writter_service.dart'
    as _i30;
import 'src/domain/services/geodata/geodata_filter_service.dart' as _i14;
import 'src/domain/services/geodata/goedata_service.dart' as _i16;
import 'src/domain/services/geodata/interfaces/i_geodata.dart' as _i15;
import 'src/domain/services/map/filters_service.dart' as _i21;
import 'src/domain/services/map/location_reader_service.dart' as _i38;
import 'src/domain/services/map/markers_service.dart' as _i26;
import 'src/domain/services/services.dart' as _i8;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i17;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i20;
import 'src/infrastructure/providers/location_provider.dart' as _i18;
import 'src/infrastructure/repositories/categories_repository.dart' as _i7;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i11;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i12;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i13;
import 'src/infrastructure/repositories/location_repository.dart' as _i19;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i35;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i37;
import 'src/presentation/pages/categories/blocs/category_relation/relations_cubit.dart'
    as _i33;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i36;
import 'src/presentation/pages/categories/blocs/field/fields_cubit.dart' as _i5;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i39;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.factory<_i5.FieldsCubit>(() => _i5.FieldsCubit());
  gh.factory<_i6.ICategoriesRepository>(() => _i7.CategoriesRepository());
  gh.lazySingleton<_i8.ICategoryService>(
      () => _i9.CategoriesService(get<_i10.ICategoriesRepository>()));
  gh.factory<_i6.IConfigurationRepository>(
      () => _i11.ConfigurationRepository());
  gh.lazySingleton<_i6.IGeoDataFilterRepository>(
      () => _i12.GeoDataFiltersRepository());
  gh.factory<_i6.IGeoDataRepository>(() => _i13.GeoDataRepository());
  gh.lazySingleton<_i8.IGeodataFiltersOptionsService>(
      () => _i14.GeodataFilterService(get<_i6.IGeoDataFilterRepository>()));
  gh.lazySingleton<_i15.IGeodataService>(
      () => _i16.GeoDataService(get<_i6.IGeoDataRepository>()));
  gh.lazySingleton<_i17.ILocationProvider>(() => _i18.LocationProvider());
  gh.factory<_i6.ILocationRepository>(
      () => _i19.LocationRepository(get<_i20.ILocationProvider>()));
  gh.lazySingleton<_i8.IMapFiltersOptionsService>(
      () => _i21.MapFiltersService(get<_i6.IMapFilterRepository>()));
  gh.lazySingleton<_i22.IMapSourceConfigurationReaderService>(() =>
      _i23.MapSourceConfigurationReaderService(
          get<_i6.IConfigurationRepository>()));
  gh.lazySingleton<_i24.IMapSourceConfigurationWritterService>(() =>
      _i25.MapSourceConfigurationWritterService(
          get<_i6.IConfigurationRepository>()));
  gh.lazySingleton<_i8.IMarkerGetterService>(
      () => _i26.GetMarkers(get<_i27.IGeoDataRepository>()));
  gh.lazySingleton<_i8.IUserPreferencesReaderService>(() =>
      _i28.UserPreferencesReaderService(get<_i29.IConfigurationRepository>()));
  gh.lazySingleton<_i8.IUserPreferencesWritterService>(() =>
      _i30.UserPreferencesWritterService(get<_i29.IConfigurationRepository>()));
  gh.factoryParam<_i31.MapCubit, _i32.LatLng?, dynamic>((initialLocation, _) =>
      _i31.MapCubit(
          sourceConfReader: get<_i8.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i33.RelationsCubit>(
      () => _i33.RelationsCubit(get<_i34.ICategoryService>()));
  gh.factory<_i35.CategoriesBloc>(
      () => _i35.CategoriesBloc(get<_i8.ICategoryService>()));
  gh.factory<_i36.CategoryViewCubit>(
      () => _i36.CategoryViewCubit(get<_i8.ICategoryService>()));
  gh.factory<_i37.ICategoryCreateFormBloc>(() => _i37.CategoryCreateFormBloc(
      categoryService: get<_i8.ICategoryService>()));
  gh.lazySingleton<_i8.ILocationReaderService>(() => _i38.LocationReaderService(
      get<_i6.IConfigurationRepository>(), get<_i6.ILocationRepository>()));
  gh.factory<_i39.LocationCubit>(() => _i39.LocationCubit(
      userPreferencesReaderService: get<_i8.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i8.IUserPreferencesWritterService>(),
      locationService: get<_i8.ILocationReaderService>()));
  return get;
}
