// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i43;

import 'src/domain/core/enums/enums.dart' as _i35;
import 'src/domain/entities/entities.dart' as _i36;
import 'src/domain/repositories/i_categories_repository.dart' as _i15;
import 'src/domain/repositories/i_configuration_repository.dart' as _i40;
import 'src/domain/repositories/i_geodata_repostitory.dart' as _i38;
import 'src/domain/repositories/repositories.dart' as _i12;
import 'src/domain/services/categories/categories_service.dart' as _i14;
import 'src/domain/services/categories/interfaces/i_category.dart' as _i6;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i30;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart'
    as _i32;
import 'src/domain/services/configurations/map_source_conf_reader_service.dart'
    as _i31;
import 'src/domain/services/configurations/map_source_conf_writter_service.dart'
    as _i33;
import 'src/domain/services/configurations/user_preferences_reader_service.dart'
    as _i39;
import 'src/domain/services/configurations/user_preferences_writter_service.dart'
    as _i41;
import 'src/domain/services/geodata/geodata_filter_service.dart' as _i22;
import 'src/domain/services/geodata/goedata_service.dart' as _i24;
import 'src/domain/services/geodata/interfaces/i_geodata.dart' as _i23;
import 'src/domain/services/map/filters_service.dart' as _i29;
import 'src/domain/services/map/interfaces/i_location_reader.dart' as _i9;
import 'src/domain/services/map/location_reader_service.dart' as _i50;
import 'src/domain/services/map/markers_service.dart' as _i37;
import 'src/domain/services/services.dart' as _i11;
import 'src/infrastructure/providers/column_provider.dart' as _i53;
import 'src/infrastructure/providers/field_type_provider.dart' as _i55;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i52;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i54;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i25;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i56;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i28;
import 'src/infrastructure/providers/location_provider.dart' as _i26;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i57;
import 'src/infrastructure/repositories/categories_repository.dart' as _i13;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i16;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i17;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i18;
import 'src/infrastructure/repositories/location_repository.dart' as _i27;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i46;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i49;
import 'src/presentation/pages/categories/blocs/category_relation/relations_cubit.dart'
    as _i45;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i47;
import 'src/presentation/pages/categories/blocs/field/fields_cubit.dart' as _i7;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i20;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i5;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i8;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i19;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i21;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i10;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i48;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i51;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i42;
import 'src/presentation/pages/home/blocs/mapsource/map_source_input_cubit.dart'
    as _i44;
import 'src/presentation/pages/home/blocs/source_form/source_form_bloc.dart'
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
  gh.factory<_i8.GeodataCreateCubit>(() => _i8.GeodataCreateCubit(
      get<_i6.ICategoryService>(), get<_i9.ILocationReaderService>()));
  gh.factory<_i10.GeodataListBloc>(
      () => _i10.GeodataListBloc(get<_i11.IGeodataService>()));
  gh.factory<_i12.ICategoriesRepository>(() => _i13.CategoriesRepository());
  gh.lazySingleton<_i11.ICategoryService>(
      () => _i14.CategoriesService(get<_i15.ICategoriesRepository>()));
  gh.factory<_i12.IConfigurationRepository>(
      () => _i16.ConfigurationRepository());
  gh.lazySingleton<_i12.IGeoDataFilterRepository>(
      () => _i17.GeoDataFiltersRepository());
  gh.factory<_i12.IGeoDataRepository>(() => _i18.GeoDataRepository());
  gh.factoryParam<_i19.IGeodataCreateFormBloc, _i20.GeodataCreateInitialData?,
          dynamic>(
      (createInitialData, _) => _i19.GeodataCreateFormBloc(
          geodataService: get<_i11.IGeodataService>(),
          createInitialData: createInitialData));
  gh.factoryParam<_i21.IGeodataEditFormBloc, _i20.GeodataEditInitialData?,
          dynamic>(
      (editInitialData, _) => _i21.GeodataEditFormBloc(
          geodataService: get<_i11.IGeodataService>(),
          editInitialData: editInitialData));
  gh.lazySingleton<_i11.IGeodataFiltersOptionsService>(
      () => _i22.GeodataFilterService(get<_i12.IGeoDataFilterRepository>()));
  gh.lazySingleton<_i23.IGeodataService>(
      () => _i24.GeoDataService(get<_i12.IGeoDataRepository>()));
  gh.lazySingleton<_i25.ILocationProvider>(() => _i26.LocationProvider());
  gh.factory<_i12.ILocationRepository>(
      () => _i27.LocationRepository(get<_i28.ILocationProvider>()));
  gh.lazySingleton<_i11.IMapFiltersOptionsService>(
      () => _i29.MapFiltersService(get<_i12.IMapFilterRepository>()));
  gh.lazySingleton<_i30.IMapSourceConfigurationReaderService>(() =>
      _i31.MapSourceConfigurationReaderService(
          get<_i12.IConfigurationRepository>()));
  gh.lazySingleton<_i32.IMapSourceConfigurationWritterService>(() =>
      _i33.MapSourceConfigurationWritterService(
          get<_i12.IConfigurationRepository>()));
  gh.factoryParam<_i34.IMapSourceFormBloc, _i35.MapSource?,
          _i36.MapSourceConfiguration?>(
      (sourceType, source) =>
          _i34.MapSourceFormBloc(sourceType: sourceType, source: source));
  gh.lazySingleton<_i11.IMarkerGetterService>(
      () => _i37.GetMarkers(get<_i38.IGeoDataRepository>()));
  gh.lazySingleton<_i11.IUserPreferencesReaderService>(() =>
      _i39.UserPreferencesReaderService(get<_i40.IConfigurationRepository>()));
  gh.lazySingleton<_i11.IUserPreferencesWritterService>(() =>
      _i41.UserPreferencesWritterService(get<_i40.IConfigurationRepository>()));
  gh.factoryParam<_i42.MapCubit, _i43.LatLng?, dynamic>((initialLocation, _) =>
      _i42.MapCubit(
          sourceConfReader: get<_i11.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i44.MapSourceInputCubit>(() => _i44.MapSourceInputCubit(
      readerService: get<_i30.IMapSourceConfigurationReaderService>(),
      writterService: get<_i32.IMapSourceConfigurationWritterService>()));
  gh.factory<_i45.RelationsCubit>(
      () => _i45.RelationsCubit(get<_i6.ICategoryService>()));
  gh.factory<_i46.CategoriesBloc>(
      () => _i46.CategoriesBloc(get<_i11.ICategoryService>()));
  gh.factory<_i47.CategoryViewCubit>(
      () => _i47.CategoryViewCubit(get<_i11.ICategoryService>()));
  gh.factory<_i48.GeodataViewCubit>(
      () => _i48.GeodataViewCubit(get<_i23.IGeodataService>()));
  gh.factory<_i49.ICategoryCreateFormBloc>(() => _i49.CategoryCreateFormBloc(
      categoryService: get<_i11.ICategoryService>()));
  gh.lazySingleton<_i11.ILocationReaderService>(() =>
      _i50.LocationReaderService(get<_i12.IConfigurationRepository>(),
          get<_i12.ILocationRepository>()));
  gh.factory<_i51.LocationCubit>(() => _i51.LocationCubit(
      userPreferencesReaderService: get<_i11.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i11.IUserPreferencesWritterService>(),
      locationService: get<_i11.ILocationReaderService>()));
  gh.singleton<_i52.IColumnsProvider>(_i53.ColumnSQLiteProvider());
  gh.singleton<_i54.IFieldTypeProvider>(_i55.FieldTypeSQLiteProvider());
  gh.singleton<_i56.IFieldTypeStaticSelectionProvider>(
      _i57.StaticSelectionSQLiteProvider());
  return get;
}
