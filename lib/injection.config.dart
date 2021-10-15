// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i35;

import 'src/domain/repositories/i_categories_repository.dart' as _i13;
import 'src/domain/repositories/i_configuration_repository.dart' as _i32;
import 'src/domain/repositories/i_geodata_repostitory.dart' as _i30;
import 'src/domain/repositories/repositories.dart' as _i10;
import 'src/domain/services/categories/categories_service.dart' as _i12;
import 'src/domain/services/categories/interfaces/i_category.dart' as _i6;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i25;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart'
    as _i27;
import 'src/domain/services/configurations/map_source_conf_reader_service.dart'
    as _i26;
import 'src/domain/services/configurations/map_source_conf_writter_service.dart'
    as _i28;
import 'src/domain/services/configurations/user_preferences_reader_service.dart'
    as _i31;
import 'src/domain/services/configurations/user_preferences_writter_service.dart'
    as _i33;
import 'src/domain/services/geodata/geodata_filter_service.dart' as _i17;
import 'src/domain/services/geodata/goedata_service.dart' as _i19;
import 'src/domain/services/geodata/interfaces/i_geodata.dart' as _i18;
import 'src/domain/services/map/filters_service.dart' as _i24;
import 'src/domain/services/map/location_reader_service.dart' as _i41;
import 'src/domain/services/map/markers_service.dart' as _i29;
import 'src/domain/services/services.dart' as _i9;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i20;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i23;
import 'src/infrastructure/providers/location_provider.dart' as _i21;
import 'src/infrastructure/repositories/categories_repository.dart' as _i11;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i14;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i15;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i16;
import 'src/infrastructure/repositories/location_repository.dart' as _i22;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i37;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i40;
import 'src/presentation/pages/categories/blocs/category_relation/relations_cubit.dart'
    as _i36;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i38;
import 'src/presentation/pages/categories/blocs/field/fields_cubit.dart' as _i7;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i5;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i8;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i39;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i42;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart'
    as _i34; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.factory<_i5.CategoriesShowerCubit>(
      () => _i5.CategoriesShowerCubit(get<_i6.ICategoryService>()));
  gh.factory<_i7.FieldsCubit>(() => _i7.FieldsCubit());
  gh.factory<_i8.GeodataListBloc>(
      () => _i8.GeodataListBloc(get<_i9.IGeodataService>()));
  gh.factory<_i10.ICategoriesRepository>(() => _i11.CategoriesRepository());
  gh.lazySingleton<_i9.ICategoryService>(
      () => _i12.CategoriesService(get<_i13.ICategoriesRepository>()));
  gh.factory<_i10.IConfigurationRepository>(
      () => _i14.ConfigurationRepository());
  gh.lazySingleton<_i10.IGeoDataFilterRepository>(
      () => _i15.GeoDataFiltersRepository());
  gh.factory<_i10.IGeoDataRepository>(() => _i16.GeoDataRepository());
  gh.lazySingleton<_i9.IGeodataFiltersOptionsService>(
      () => _i17.GeodataFilterService(get<_i10.IGeoDataFilterRepository>()));
  gh.lazySingleton<_i18.IGeodataService>(
      () => _i19.GeoDataService(get<_i10.IGeoDataRepository>()));
  gh.lazySingleton<_i20.ILocationProvider>(() => _i21.LocationProvider());
  gh.factory<_i10.ILocationRepository>(
      () => _i22.LocationRepository(get<_i23.ILocationProvider>()));
  gh.lazySingleton<_i9.IMapFiltersOptionsService>(
      () => _i24.MapFiltersService(get<_i10.IMapFilterRepository>()));
  gh.lazySingleton<_i25.IMapSourceConfigurationReaderService>(() =>
      _i26.MapSourceConfigurationReaderService(
          get<_i10.IConfigurationRepository>()));
  gh.lazySingleton<_i27.IMapSourceConfigurationWritterService>(() =>
      _i28.MapSourceConfigurationWritterService(
          get<_i10.IConfigurationRepository>()));
  gh.lazySingleton<_i9.IMarkerGetterService>(
      () => _i29.GetMarkers(get<_i30.IGeoDataRepository>()));
  gh.lazySingleton<_i9.IUserPreferencesReaderService>(() =>
      _i31.UserPreferencesReaderService(get<_i32.IConfigurationRepository>()));
  gh.lazySingleton<_i9.IUserPreferencesWritterService>(() =>
      _i33.UserPreferencesWritterService(get<_i32.IConfigurationRepository>()));
  gh.factoryParam<_i34.MapCubit, _i35.LatLng?, dynamic>((initialLocation, _) =>
      _i34.MapCubit(
          sourceConfReader: get<_i9.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i36.RelationsCubit>(
      () => _i36.RelationsCubit(get<_i6.ICategoryService>()));
  gh.factory<_i37.CategoriesBloc>(
      () => _i37.CategoriesBloc(get<_i9.ICategoryService>()));
  gh.factory<_i38.CategoryViewCubit>(
      () => _i38.CategoryViewCubit(get<_i9.ICategoryService>()));
  gh.factory<_i39.GeodataViewCubit>(
      () => _i39.GeodataViewCubit(get<_i18.IGeodataService>()));
  gh.factory<_i40.ICategoryCreateFormBloc>(() => _i40.CategoryCreateFormBloc(
      categoryService: get<_i9.ICategoryService>()));
  gh.lazySingleton<_i9.ILocationReaderService>(() => _i41.LocationReaderService(
      get<_i10.IConfigurationRepository>(), get<_i10.ILocationRepository>()));
  gh.factory<_i42.LocationCubit>(() => _i42.LocationCubit(
      userPreferencesReaderService: get<_i9.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i9.IUserPreferencesWritterService>(),
      locationService: get<_i9.ILocationReaderService>()));
  return get;
}
