// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i57;

import 'src/domain/core/enums/enums.dart' as _i50;
import 'src/domain/entities/entities.dart' as _i51;
import 'src/domain/repositories/i_column_repository.dart' as _i20;
import 'src/domain/repositories/i_configuration_repository.dart' as _i54;
import 'src/domain/repositories/i_field_type_repository.dart' as _i26;
import 'src/domain/repositories/i_field_value_repository.dart' as _i33;
import 'src/domain/repositories/i_static_selection_repository.dart' as _i30;
import 'src/domain/repositories/repositories.dart' as _i15;
import 'src/domain/services/categories_service.dart' as _i19;
import 'src/domain/services/geodata_filter_service.dart' as _i39;
import 'src/domain/services/goedata_service.dart' as _i42;
import 'src/domain/services/interfaces/interfaces.dart' as _i18;
import 'src/domain/services/location_reader_service.dart' as _i61;
import 'src/domain/services/map_filters_service.dart' as _i48;
import 'src/domain/services/map_markers_service.dart' as _i52;
import 'src/domain/services/map_source_conf_reader_service.dart' as _i62;
import 'src/domain/services/map_source_conf_writter_service.dart' as _i63;
import 'src/domain/services/services.dart' as _i6;
import 'src/domain/services/user_preferences_reader_service.dart' as _i53;
import 'src/domain/services/user_preferences_writter_service.dart' as _i55;
import 'src/infrastructure/providers/categories_provider.dart' as _i14;
import 'src/infrastructure/providers/columns_provider.dart' as _i23;
import 'src/infrastructure/providers/field_type_provider.dart' as _i25;
import 'src/infrastructure/providers/field_value_provider.dart' as _i32;
import 'src/infrastructure/providers/geodata_provider.dart' as _i40;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i22;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i24;
import 'src/infrastructure/providers/interfaces/i_local_preferences_provider.dart'
    as _i43;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i45;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i28;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i13;
import 'src/infrastructure/providers/local_preferences_provider.dart' as _i44;
import 'src/infrastructure/providers/location_provider.dart' as _i46;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i29;
import 'src/infrastructure/repositories/categories_repository.dart' as _i16;
import 'src/infrastructure/repositories/columns_repository.dart' as _i21;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i60;
import 'src/infrastructure/repositories/field_type_repository.dart' as _i27;
import 'src/infrastructure/repositories/field_values_repository.dart' as _i34;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i38;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i41;
import 'src/infrastructure/repositories/location_repository.dart' as _i47;
import 'src/infrastructure/repositories/static_selection_repository.dart'
    as _i31;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i5;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i17;
import 'src/presentation/pages/categories/blocs/category_relation/relations_cubit.dart'
    as _i59;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i8;
import 'src/presentation/pages/categories/blocs/field/fields_cubit.dart' as _i9;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i36;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i7;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i10;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i35;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i37;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i11;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i12;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i64;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i56;
import 'src/presentation/pages/home/blocs/mapsource/map_source_input_cubit.dart'
    as _i58;
import 'src/presentation/pages/home/blocs/source_form/source_form_bloc.dart'
    as _i49; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i20.IColumnRepository>(
      () => _i21.ColumnRepository(provider: get<_i13.IColumnsProvider>()));
  gh.lazySingleton<_i22.IColumnsProvider>(() => _i23.ColumnsSQLiteProvider());
  gh.lazySingleton<_i24.IFieldTypeProvider>(
      () => _i25.FieldTypeSQLiteProvider());
  gh.lazySingleton<_i26.IFieldTypeRepository>(
      () => _i27.FieldTypeRepository(provider: get<_i13.IFieldTypeProvider>()));
  gh.lazySingleton<_i28.IFieldTypeStaticSelectionProvider>(
      () => _i29.StaticSelectionSQLiteProvider());
  gh.lazySingleton<_i30.IFieldTypeStaticSelectionRepository>(() =>
      _i31.FieldTypeRepository(
          provider: get<_i13.IFieldTypeStaticSelectionProvider>()));
  gh.lazySingleton<_i13.IFieldValueProvider>(
      () => _i32.FieldValueSQLiteProvider());
  gh.lazySingleton<_i33.IFieldValueRepository>(() =>
      _i34.FieldValueRepository(provider: get<_i13.IFieldValueProvider>()));
  gh.factoryParam<_i35.IGeodataCreateFormBloc, _i36.GeodataCreateInitialData?,
          dynamic>(
      (createInitialData, _) => _i35.GeodataCreateFormBloc(
          geodataService: get<_i6.IGeodataService>(),
          createInitialData: createInitialData));
  gh.factoryParam<_i37.IGeodataEditFormBloc, _i36.GeodataEditInitialData?,
          dynamic>(
      (editInitialData, _) => _i37.GeodataEditFormBloc(
          geodataService: get<_i6.IGeodataService>(),
          editInitialData: editInitialData));
  gh.lazySingleton<_i15.IGeodataFilterRepository>(
      () => _i38.GeodataFiltersRepository());
  gh.lazySingleton<_i18.IGeodataFiltersOptionsService>(
      () => _i39.GeodataFilterService(get<_i15.IGeodataFilterRepository>()));
  gh.lazySingleton<_i13.IGeodataProvider>(() => _i40.GeodataSQLiteProvider());
  gh.factory<_i15.IGeodataRepository>(
      () => _i41.GeodataRepository(provider: get<_i13.IGeodataProvider>()));
  gh.lazySingleton<_i18.IGeodataService>(
      () => _i42.GeodataService(get<_i15.IGeodataRepository>()));
  gh.lazySingleton<_i43.ILocalPreferencesProvider>(
      () => _i44.LocalPreferencesProvider());
  gh.lazySingleton<_i45.ILocationProvider>(() => _i46.LocationProvider());
  gh.lazySingleton<_i15.ILocationRepository>(
      () => _i47.LocationRepository(get<_i13.ILocationProvider>()));
  gh.lazySingleton<_i18.IMapFiltersOptionsService>(
      () => _i48.MapFiltersService(get<_i15.IMapFilterRepository>()));
  gh.factoryParam<_i49.IMapSourceFormBloc, _i50.MapSource?,
          _i51.MapSourceConfigurationEntity?>(
      (sourceType, source) =>
          _i49.MapSourceFormBloc(sourceType: sourceType, source: source));
  gh.lazySingleton<_i18.IMarkerGetterService>(
      () => _i52.GetMarkers(get<_i15.IGeodataRepository>()));
  gh.lazySingleton<_i18.IUserPreferencesReaderService>(() =>
      _i53.UserPreferencesReaderService(get<_i54.IConfigurationRepository>()));
  gh.lazySingleton<_i18.IUserPreferencesWritterService>(() =>
      _i55.UserPreferencesWritterService(get<_i54.IConfigurationRepository>()));
  gh.factoryParam<_i56.MapCubit, _i57.LatLng?, dynamic>((initialLocation, _) =>
      _i56.MapCubit(
          sourceConfReader: get<_i6.IMapSourceConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i58.MapSourceInputCubit>(() => _i58.MapSourceInputCubit(
      readerService: get<dynamic>(), writterService: get<dynamic>()));
  gh.factory<_i59.RelationsCubit>(() => _i59.RelationsCubit(get<dynamic>()));
  gh.factory<_i15.IConfigurationRepository>(() =>
      _i60.ConfigurationRepository(get<_i43.ILocalPreferencesProvider>()));
  gh.lazySingleton<_i6.ILocationReaderService>(() => _i61.LocationReaderService(
      get<_i15.IConfigurationRepository>(), get<_i15.ILocationRepository>()));
  gh.lazySingleton<_i18.IMapSourceConfigurationReaderService>(() =>
      _i62.MapSourceConfigurationReaderService(
          get<_i15.IConfigurationRepository>()));
  gh.lazySingleton<_i18.IMapSourceConfigurationWritterService>(() =>
      _i63.MapSourceConfigurationWritterService(
          get<_i15.IConfigurationRepository>()));
  gh.factory<_i64.LocationCubit>(() => _i64.LocationCubit(
      userPreferencesReaderService: get<_i6.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i6.IUserPreferencesWritterService>(),
      locationService: get<_i6.ILocationReaderService>()));
  return get;
}
