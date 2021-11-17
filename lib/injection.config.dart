// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i47;

import 'src/domain/repositories/i_configuration_repository.dart' as _i44;
import 'src/domain/repositories/repositories.dart' as _i15;
import 'src/domain/services/categories_service.dart' as _i19;
import 'src/domain/services/geodata_filter_service.dart' as _i32;
import 'src/domain/services/goedata_service.dart' as _i35;
import 'src/domain/services/interfaces/interfaces.dart' as _i18;
import 'src/domain/services/location_reader_service.dart' as _i50;
import 'src/domain/services/map_filters_service.dart' as _i39;
import 'src/domain/services/map_markers_service.dart' as _i42;
import 'src/domain/services/map_source_conf_reader_service.dart' as _i40;
import 'src/domain/services/map_source_conf_writter_service.dart' as _i41;
import 'src/domain/services/services.dart' as _i6;
import 'src/domain/services/user_preferences_reader_service.dart' as _i43;
import 'src/domain/services/user_preferences_writter_service.dart' as _i45;
import 'src/infrastructure/providers/categories_provider.dart' as _i14;
import 'src/infrastructure/providers/columns_provider.dart' as _i21;
import 'src/infrastructure/providers/field_type_provider.dart' as _i24;
import 'src/infrastructure/providers/field_value_provider.dart' as _i27;
import 'src/infrastructure/providers/geodata_provider.dart' as _i33;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i20;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i23;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i36;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i25;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i13;
import 'src/infrastructure/providers/location_provider.dart' as _i37;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i26;
import 'src/infrastructure/repositories/categories_repository.dart' as _i16;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i22;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i31;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i34;
import 'src/infrastructure/repositories/location_repository.dart' as _i38;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i5;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i17;
import 'src/presentation/pages/categories/blocs/category_relation/relations_cubit.dart'
    as _i49;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i8;
import 'src/presentation/pages/categories/blocs/field/fields_cubit.dart' as _i9;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i29;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i7;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i10;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i28;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i30;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i11;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i12;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i51;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i46;
import 'src/presentation/pages/home/blocs/mapsource/map_source_input_cubit.dart'
    as _i48; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.factory<_i5.CategoriesBloc>(
      () => _i5.CategoriesBloc(get<_i6.ICategoryService>()));
  gh.factory<_i7.CategoriesShowerCubit>(
      () => _i7.CategoriesShowerCubit(get<dynamic>()));
  gh.factory<_i8.CategoryViewCubit>(
      () => _i8.CategoryViewCubit(get<_i6.ICategoryService>()));
  gh.factory<_i9.FieldsCubit>(() => _i9.FieldsCubit());
  gh.factory<_i10.GeodataCreateCubit>(
      () => _i10.GeodataCreateCubit(get<dynamic>(), get<dynamic>()));
  gh.factory<_i11.GeodataListBloc>(
      () => _i11.GeodataListBloc(get<_i6.IGeodataService>()));
  gh.factory<_i12.GeodataViewCubit>(
      () => _i12.GeodataViewCubit(get<dynamic>()));
  gh.lazySingleton<_i13.ICategoriesProvider>(
      () => _i14.CategoriesSQLiteProvider());
  gh.factory<_i15.ICategoriesRepository>(() =>
      _i16.CategoriesRepository(provider: get<_i13.ICategoriesProvider>()));
  gh.factory<_i17.ICategoryCreateFormBloc>(() => _i17.CategoryCreateFormBloc(
      categoryService: get<_i6.ICategoryService>()));
  gh.lazySingleton<_i18.ICategoryService>(
      () => _i19.CategoriesService(get<_i15.ICategoriesRepository>()));
  gh.lazySingleton<_i20.IColumnsProvider>(() => _i21.ColumnsSQLiteProvider());
  gh.factory<_i15.IConfigurationRepository>(
      () => _i22.ConfigurationRepository());
  gh.lazySingleton<_i23.IFieldTypeProvider>(
      () => _i24.FieldTypeSQLiteProvider());
  gh.lazySingleton<_i25.IFieldTypeStaticSelectionProvider>(
      () => _i26.StaticSelectionSQLiteProvider());
  gh.lazySingleton<_i13.IFieldValueProvider>(
      () => _i27.FieldValueSQLiteProvider());
  gh.factoryParam<_i28.IGeodataCreateFormBloc, _i29.GeodataCreateInitialData?,
          dynamic>(
      (createInitialData, _) => _i28.GeodataCreateFormBloc(
          geodataService: get<_i6.IGeodataService>(),
          createInitialData: createInitialData));
  gh.factoryParam<_i30.IGeodataEditFormBloc, _i29.GeodataEditInitialData?,
          dynamic>(
      (editInitialData, _) => _i30.GeodataEditFormBloc(
          geodataService: get<_i6.IGeodataService>(),
          editInitialData: editInitialData));
  gh.lazySingleton<_i15.IGeodataFilterRepository>(
      () => _i31.GeodataFiltersRepository());
  gh.lazySingleton<_i18.IGeodataFiltersOptionsService>(
      () => _i32.GeodataFilterService(get<_i15.IGeodataFilterRepository>()));
  gh.lazySingleton<_i13.IGeodataProvider>(() => _i33.GeodataSQLiteProvider());
  gh.factory<_i15.IGeodataRepository>(() => _i34.GeodataRepository());
  gh.lazySingleton<_i18.IGeodataService>(
      () => _i35.GeodataService(get<_i15.IGeodataRepository>()));
  gh.lazySingleton<_i36.ILocationProvider>(() => _i37.LocationProvider());
  gh.factory<_i15.ILocationRepository>(
      () => _i38.LocationRepository(get<_i13.ILocationProvider>()));
  gh.lazySingleton<_i18.IMapFiltersOptionsService>(
      () => _i39.MapFiltersService(get<_i15.IMapFilterRepository>()));
  gh.lazySingleton<_i18.IMapSourceConfigurationReaderService>(() =>
      _i40.MapSourceConfigurationReaderService(
          get<_i15.IConfigurationRepository>()));
  gh.lazySingleton<_i18.IMapSourceConfigurationWritterService>(() =>
      _i41.MapSourceConfigurationWritterService(
          get<_i15.IConfigurationRepository>()));
  gh.lazySingleton<_i18.IMarkerGetterService>(
      () => _i42.GetMarkers(get<_i15.IGeodataRepository>()));
  gh.lazySingleton<_i18.IUserPreferencesReaderService>(() =>
      _i43.UserPreferencesReaderService(get<_i44.IConfigurationRepository>()));
  gh.lazySingleton<_i18.IUserPreferencesWritterService>(() =>
      _i45.UserPreferencesWritterService(get<_i44.IConfigurationRepository>()));
  gh.factoryParam<_i46.MapCubit, _i47.LatLng?, dynamic>((initialLocation, _) =>
      _i46.MapCubit(
          sourceConfReader: get<_i6.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i48.MapSourceInputCubit>(() => _i48.MapSourceInputCubit(
      readerService: get<dynamic>(), writterService: get<dynamic>()));
  gh.factory<_i49.RelationsCubit>(() => _i49.RelationsCubit(get<dynamic>()));
  gh.lazySingleton<_i6.ILocationReaderService>(() => _i50.LocationReaderService(
      get<_i15.IConfigurationRepository>(), get<_i15.ILocationRepository>()));
  gh.factory<_i51.LocationCubit>(() => _i51.LocationCubit(
      userPreferencesReaderService: get<_i6.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i6.IUserPreferencesWritterService>(),
      locationService: get<_i6.ILocationReaderService>()));
  return get;
}
