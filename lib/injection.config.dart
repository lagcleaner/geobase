// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i52;

import 'src/domain/core/enums/enums.dart' as _i44;
import 'src/domain/entities/entities.dart' as _i45;
import 'src/domain/repositories/i_categories_repository.dart' as _i17;
import 'src/domain/repositories/i_configuration_repository.dart' as _i49;
import 'src/domain/repositories/i_geodata_repostitory.dart' as _i47;
import 'src/domain/repositories/repositories.dart' as _i14;
import 'src/domain/services/categories/categories_service.dart' as _i16;
import 'src/domain/services/categories/interfaces/i_category.dart' as _i6;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i39;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart'
    as _i41;
import 'src/domain/services/configurations/map_source_conf_reader_service.dart'
    as _i40;
import 'src/domain/services/configurations/map_source_conf_writter_service.dart'
    as _i42;
import 'src/domain/services/configurations/user_preferences_reader_service.dart'
    as _i48;
import 'src/domain/services/configurations/user_preferences_writter_service.dart'
    as _i50;
import 'src/domain/services/geodata/geodata_filter_service.dart' as _i31;
import 'src/domain/services/geodata/goedata_service.dart' as _i34;
import 'src/domain/services/geodata/interfaces/i_geodata.dart' as _i33;
import 'src/domain/services/map/filters_service.dart' as _i38;
import 'src/domain/services/map/interfaces/i_location_reader.dart' as _i9;
import 'src/domain/services/map/location_reader_service.dart' as _i59;
import 'src/domain/services/map/markers_service.dart' as _i46;
import 'src/domain/services/services.dart' as _i11;
import 'src/infrastructure/providers/categories_provider.dart' as _i13;
import 'src/infrastructure/providers/columns_provider.dart' as _i19;
import 'src/infrastructure/providers/field_type_provider.dart' as _i22;
import 'src/infrastructure/providers/field_value_provider.dart' as _i25;
import 'src/infrastructure/providers/geodata_provider.dart' as _i32;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i18;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i21;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i35;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i23;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i12;
import 'src/infrastructure/providers/location_provider.dart' as _i36;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i24;
import 'src/infrastructure/repositories/categories_repository.dart' as _i15;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i20;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i26;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i27;
import 'src/infrastructure/repositories/location_repository.dart' as _i37;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i55;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i58;
import 'src/presentation/pages/categories/blocs/category_relation/relations_cubit.dart'
    as _i54;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i56;
import 'src/presentation/pages/categories/blocs/field/fields_cubit.dart' as _i7;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i29;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i5;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i8;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i28;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i30;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i10;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i57;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i60;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i51;
import 'src/presentation/pages/home/blocs/mapsource/map_source_input_cubit.dart'
    as _i53;
import 'src/presentation/pages/home/blocs/source_form/source_form_bloc.dart'
    as _i43; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i12.ICategoriesProvider>(
      () => _i13.CategoriesSQLiteProvider());
  gh.factory<_i14.ICategoriesRepository>(() => _i15.CategoriesRepository());
  gh.lazySingleton<_i11.ICategoryService>(
      () => _i16.CategoriesService(get<_i17.ICategoriesRepository>()));
  gh.lazySingleton<_i18.IColumnsProvider>(() => _i19.ColumnsSQLiteProvider());
  gh.factory<_i14.IConfigurationRepository>(
      () => _i20.ConfigurationRepository());
  gh.lazySingleton<_i21.IFieldTypeProvider>(
      () => _i22.FieldTypeSQLiteProvider());
  gh.lazySingleton<_i23.IFieldTypeStaticSelectionProvider>(
      () => _i24.StaticSelectionSQLiteProvider());
  gh.lazySingleton<_i12.IFieldValueProvider>(
      () => _i25.FieldValueSQLiteProvider());
  gh.lazySingleton<_i14.IGeoDataFilterRepository>(
      () => _i26.GeoDataFiltersRepository());
  gh.factory<_i14.IGeoDataRepository>(() => _i27.GeoDataRepository());
  gh.factoryParam<_i28.IGeodataCreateFormBloc, _i29.GeodataCreateInitialData?,
          dynamic>(
      (createInitialData, _) => _i28.GeodataCreateFormBloc(
          geodataService: get<_i11.IGeodataService>(),
          createInitialData: createInitialData));
  gh.factoryParam<_i30.IGeodataEditFormBloc, _i29.GeodataEditInitialData?,
          dynamic>(
      (editInitialData, _) => _i30.GeodataEditFormBloc(
          geodataService: get<_i11.IGeodataService>(),
          editInitialData: editInitialData));
  gh.lazySingleton<_i11.IGeodataFiltersOptionsService>(
      () => _i31.GeodataFilterService(get<_i14.IGeoDataFilterRepository>()));
  gh.lazySingleton<_i12.IGeodataProvider>(() => _i32.GeodataSQLiteProvider());
  gh.lazySingleton<_i33.IGeodataService>(
      () => _i34.GeoDataService(get<_i14.IGeoDataRepository>()));
  gh.lazySingleton<_i35.ILocationProvider>(() => _i36.LocationProvider());
  gh.factory<_i14.ILocationRepository>(
      () => _i37.LocationRepository(get<_i12.ILocationProvider>()));
  gh.lazySingleton<_i11.IMapFiltersOptionsService>(
      () => _i38.MapFiltersService(get<_i14.IMapFilterRepository>()));
  gh.lazySingleton<_i39.IMapSourceConfigurationReaderService>(() =>
      _i40.MapSourceConfigurationReaderService(
          get<_i14.IConfigurationRepository>()));
  gh.lazySingleton<_i41.IMapSourceConfigurationWritterService>(() =>
      _i42.MapSourceConfigurationWritterService(
          get<_i14.IConfigurationRepository>()));
  gh.factoryParam<_i43.IMapSourceFormBloc, _i44.MapSource?,
          _i45.MapSourceConfiguration?>(
      (sourceType, source) =>
          _i43.MapSourceFormBloc(sourceType: sourceType, source: source));
  gh.lazySingleton<_i11.IMarkerGetterService>(
      () => _i46.GetMarkers(get<_i47.IGeoDataRepository>()));
  gh.lazySingleton<_i11.IUserPreferencesReaderService>(() =>
      _i48.UserPreferencesReaderService(get<_i49.IConfigurationRepository>()));
  gh.lazySingleton<_i11.IUserPreferencesWritterService>(() =>
      _i50.UserPreferencesWritterService(get<_i49.IConfigurationRepository>()));
  gh.factoryParam<_i51.MapCubit, _i52.LatLng?, dynamic>((initialLocation, _) =>
      _i51.MapCubit(
          sourceConfReader: get<_i11.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i53.MapSourceInputCubit>(() => _i53.MapSourceInputCubit(
      readerService: get<_i39.IMapSourceConfigurationReaderService>(),
      writterService: get<_i41.IMapSourceConfigurationWritterService>()));
  gh.factory<_i54.RelationsCubit>(
      () => _i54.RelationsCubit(get<_i6.ICategoryService>()));
  gh.factory<_i55.CategoriesBloc>(
      () => _i55.CategoriesBloc(get<_i11.ICategoryService>()));
  gh.factory<_i56.CategoryViewCubit>(
      () => _i56.CategoryViewCubit(get<_i11.ICategoryService>()));
  gh.factory<_i57.GeodataViewCubit>(
      () => _i57.GeodataViewCubit(get<_i33.IGeodataService>()));
  gh.factory<_i58.ICategoryCreateFormBloc>(() => _i58.CategoryCreateFormBloc(
      categoryService: get<_i11.ICategoryService>()));
  gh.lazySingleton<_i11.ILocationReaderService>(() =>
      _i59.LocationReaderService(get<_i14.IConfigurationRepository>(),
          get<_i14.ILocationRepository>()));
  gh.factory<_i60.LocationCubit>(() => _i60.LocationCubit(
      userPreferencesReaderService: get<_i11.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i11.IUserPreferencesWritterService>(),
      locationService: get<_i11.ILocationReaderService>()));
  return get;
}
