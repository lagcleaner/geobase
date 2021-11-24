// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i61;
import 'package:shared_preferences/shared_preferences.dart' as _i63;

import 'src/domain/repositories/i_column_repository.dart' as _i19;
import 'src/domain/repositories/i_configuration_repository.dart' as _i58;
import 'src/domain/repositories/i_field_type_repository.dart' as _i30;
import 'src/domain/repositories/i_field_value_repository.dart' as _i40;
import 'src/domain/repositories/i_media_repository.dart' as _i25;
import 'src/domain/repositories/i_static_selection_repository.dart' as _i36;
import 'src/domain/repositories/repositories.dart' as _i14;
import 'src/domain/services/categories_service.dart' as _i18;
import 'src/domain/services/field_type_service.dart' as _i33;
import 'src/domain/services/geodata_filter_service.dart' as _i46;
import 'src/domain/services/goedata_service.dart' as _i49;
import 'src/domain/services/interfaces/i_field_type.dart' as _i32;
import 'src/domain/services/interfaces/interfaces.dart' as _i17;
import 'src/domain/services/location_reader_service.dart' as _i70;
import 'src/domain/services/map_conf_reader_service.dart' as _i71;
import 'src/domain/services/map_conf_writter_service.dart' as _i72;
import 'src/domain/services/map_filters_service.dart' as _i55;
import 'src/domain/services/map_markers_service.dart' as _i56;
import 'src/domain/services/media_service.dart' as _i27;
import 'src/domain/services/services.dart' as _i6;
import 'src/domain/services/static_selection_service.dart' as _i38;
import 'src/domain/services/user_preferences_reader_service.dart' as _i57;
import 'src/domain/services/user_preferences_writter_service.dart' as _i59;
import 'src/infrastructure/core/registers/external_registers.dart' as _i77;
import 'src/infrastructure/providers/categories_provider.dart' as _i13;
import 'src/infrastructure/providers/columns_provider.dart' as _i22;
import 'src/infrastructure/providers/field_type_provider.dart' as _i29;
import 'src/infrastructure/providers/field_value_provider.dart' as _i39;
import 'src/infrastructure/providers/geodata_provider.dart' as _i47;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i21;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i28;
import 'src/infrastructure/providers/interfaces/i_local_preferences_provider.dart'
    as _i50;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i52;
import 'src/infrastructure/providers/interfaces/i_media_provider.dart' as _i23;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i34;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i16;
import 'src/infrastructure/providers/local_preferences_provider.dart' as _i51;
import 'src/infrastructure/providers/location_provider.dart' as _i53;
import 'src/infrastructure/providers/media_provider.dart' as _i24;
import 'src/infrastructure/providers/providers.dart' as _i12;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i35;
import 'src/infrastructure/repositories/categories_repository.dart' as _i15;
import 'src/infrastructure/repositories/columns_repository.dart' as _i20;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i69;
import 'src/infrastructure/repositories/field_type_repository.dart' as _i31;
import 'src/infrastructure/repositories/field_values_repository.dart' as _i41;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i45;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i48;
import 'src/infrastructure/repositories/location_repository.dart' as _i54;
import 'src/infrastructure/repositories/media_repository.dart' as _i26;
import 'src/infrastructure/repositories/static_selection_repository.dart'
    as _i37;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/core/widgets/render_classes/reflect.dart' as _i9;
import 'src/presentation/pages/categories/blocs/category_form/category_create_form_bloc.dart'
    as _i5;
import 'src/presentation/pages/categories/blocs/category_form/category_edit_form_bloc.dart'
    as _i68;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i8;
import 'src/presentation/pages/categories/blocs/categorylist/categorylist_bloc.dart'
    as _i7;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i43;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i67;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i76;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i42;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc2.dart'
    as _i75;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i44;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i10;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i11;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i73;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i60;
import 'src/presentation/pages/home/blocs/markers/marker_cubit.dart' as _i62;
import 'src/presentation/pages/options/blocs/map_configuration_forms/map_configuration_form_bloc.dart'
    as _i74;
import 'src/presentation/pages/staticselection/blocs/static_selection_form/static_selection_create_form_bloc.dart'
    as _i64;
import 'src/presentation/pages/staticselection/blocs/static_selection_list/static_selection_list_cubit.dart'
    as _i65;
import 'src/presentation/pages/staticselection/blocs/static_selection_view/static_selection_view_cubit.dart'
    as _i66; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.factory<_i5.CategoryCreateFormBloc>(() => _i5.CategoryCreateFormBloc(
      categoryService: get<_i6.ICategoryService>(),
      fieldTypeService: get<_i6.IFieldTypeService>()));
  gh.factory<_i7.CategoryListBloc>(
      () => _i7.CategoryListBloc(get<_i6.ICategoryService>()));
  gh.factory<_i8.CategoryViewCubit>(
      () => _i8.CategoryViewCubit(get<_i6.ICategoryService>()));
  gh.lazySingleton<_i9.FieldRenderResolver>(() => _i9.FieldRenderResolver());
  gh.factory<_i10.GeodataListBloc>(
      () => _i10.GeodataListBloc(get<_i6.IGeodataService>()));
  gh.factory<_i11.GeodataViewCubit>(
      () => _i11.GeodataViewCubit(get<_i6.IGeodataService>()));
  gh.lazySingleton<_i12.ICategoriesProvider>(
      () => _i13.CategoriesSQLiteProvider());
  gh.factory<_i14.ICategoriesRepository>(() =>
      _i15.CategoriesRepository(provider: get<_i16.ICategoriesProvider>()));
  gh.lazySingleton<_i17.ICategoryService>(
      () => _i18.CategoriesService(get<_i14.ICategoriesRepository>()));
  gh.lazySingleton<_i19.IColumnRepository>(
      () => _i20.ColumnRepository(provider: get<_i16.IColumnsProvider>()));
  gh.lazySingleton<_i21.IColumnsProvider>(() => _i22.ColumnsSQLiteProvider());
  gh.lazySingleton<_i23.IFieldTypeMediaProvider>(
      () => _i24.MediaSQLiteProvider());
  gh.lazySingleton<_i25.IFieldTypeMediaRepository>(() =>
      _i26.FieldTypeMediaRepository(
          provider: get<_i16.IFieldTypeMediaProvider>()));
  gh.factory<_i17.IFieldTypeMediaService>(() => _i27.FieldTypeMediaService(
      repository: get<_i25.IFieldTypeMediaRepository>()));
  gh.lazySingleton<_i28.IFieldTypeProvider>(
      () => _i29.FieldTypeSQLiteProvider());
  gh.lazySingleton<_i30.IFieldTypeRepository>(
      () => _i31.FieldTypeRepository(provider: get<_i16.IFieldTypeProvider>()));
  gh.lazySingleton<_i32.IFieldTypeService>(() =>
      _i33.FieldTypeService(repository: get<_i30.IFieldTypeRepository>()));
  gh.lazySingleton<_i34.IFieldTypeStaticSelectionProvider>(
      () => _i35.StaticSelectionSQLiteProvider());
  gh.lazySingleton<_i36.IFieldTypeStaticSelectionRepository>(() =>
      _i37.FieldTypeStaticSelectionRepository(
          provider: get<_i16.IFieldTypeStaticSelectionProvider>()));
  gh.factory<_i17.IFieldTypeStaticSelectionService>(() =>
      _i38.FieldTypeStaticSelectionService(
          repository: get<_i36.IFieldTypeStaticSelectionRepository>()));
  gh.lazySingleton<_i16.IFieldValueProvider>(
      () => _i39.FieldValueSQLiteProvider());
  gh.lazySingleton<_i40.IFieldValueRepository>(() =>
      _i41.FieldValueRepository(provider: get<_i16.IFieldValueProvider>()));
  gh.factoryParam<_i42.IGeodataCreateFormBloc, _i43.GeodataCreateInitialData?,
          dynamic>(
      (createInitialData, _) => _i42.GeodataCreateFormBloc(
          geodataService: get<_i6.IGeodataService>(),
          createInitialData: createInitialData));
  gh.factoryParam<_i44.IGeodataEditFormBloc, _i43.GeodataEditInitialData?,
          dynamic>(
      (editInitialData, _) => _i44.GeodataEditFormBloc(
          geodataService: get<_i6.IGeodataService>(),
          editInitialData: editInitialData));
  gh.lazySingleton<_i14.IGeodataFilterRepository>(
      () => _i45.GeodataFiltersRepository());
  gh.lazySingleton<_i17.IGeodataFiltersOptionsService>(
      () => _i46.GeodataFilterService(get<_i14.IGeodataFilterRepository>()));
  gh.lazySingleton<_i16.IGeodataProvider>(() => _i47.GeodataSQLiteProvider());
  gh.factory<_i14.IGeodataRepository>(
      () => _i48.GeodataRepository(provider: get<_i16.IGeodataProvider>()));
  gh.lazySingleton<_i17.IGeodataService>(
      () => _i49.GeodataService(get<_i14.IGeodataRepository>()));
  gh.lazySingleton<_i50.ILocalPreferencesProvider>(
      () => _i51.LocalPreferencesProvider());
  gh.lazySingleton<_i52.ILocationProvider>(() => _i53.LocationProvider());
  gh.lazySingleton<_i14.ILocationRepository>(
      () => _i54.LocationRepository(get<_i16.ILocationProvider>()));
  gh.lazySingleton<_i17.IMapFiltersOptionsService>(
      () => _i55.MapFiltersService(get<_i14.IMapFilterRepository>()));
  gh.lazySingleton<_i17.IMarkerGetterService>(
      () => _i56.GetMarkers(get<_i14.IGeodataRepository>()));
  gh.lazySingleton<_i17.IUserPreferencesReaderService>(() =>
      _i57.UserPreferencesReaderService(get<_i58.IConfigurationRepository>()));
  gh.lazySingleton<_i17.IUserPreferencesWritterService>(() =>
      _i59.UserPreferencesWritterService(get<_i58.IConfigurationRepository>()));
  gh.factoryParam<_i60.MapCubit, _i61.LatLng?, dynamic>((initialLocation, _) =>
      _i60.MapCubit(
          confReader: get<_i6.IMapConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i62.MarkerCubit>(() =>
      _i62.MarkerCubit(markerGetterService: get<_i17.IMarkerGetterService>()));
  await gh.factoryAsync<_i63.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i64.StaticSelectionCreateFormBloc>(() =>
      _i64.StaticSelectionCreateFormBloc(
          service: get<_i17.IFieldTypeStaticSelectionService>(),
          fieldTypeService: get<_i17.IFieldTypeService>()));
  gh.factory<_i65.StaticSelectionListCubit>(() => _i65.StaticSelectionListCubit(
      get<_i17.IFieldTypeStaticSelectionService>()));
  gh.factory<_i66.StaticSelectionViewCubit>(() => _i66.StaticSelectionViewCubit(
      get<_i17.IFieldTypeStaticSelectionService>()));
  gh.factory<_i67.CategoriesShowerCubit>(
      () => _i67.CategoriesShowerCubit(get<_i17.ICategoryService>()));
  gh.factoryParam<_i68.CategoryEditFormBloc, int?, dynamic>((categoryId, _) =>
      _i68.CategoryEditFormBloc(
          categoryId: categoryId,
          categoryService: get<_i17.ICategoryService>(),
          fieldTypeService: get<_i17.IFieldTypeService>()));
  gh.factory<_i14.IConfigurationRepository>(() =>
      _i69.ConfigurationRepository(get<_i50.ILocalPreferencesProvider>()));
  gh.lazySingleton<_i6.ILocationReaderService>(() => _i70.LocationReaderService(
      get<_i14.IConfigurationRepository>(), get<_i14.ILocationRepository>()));
  gh.lazySingleton<_i17.IMapConfigurationReaderService>(() =>
      _i71.MapConfigurationReaderService(get<_i14.IConfigurationRepository>()));
  gh.lazySingleton<_i17.IMapConfigurationWritterService>(() =>
      _i72.MapConfigurationWritterService(
          get<_i14.IConfigurationRepository>()));
  gh.factory<_i73.LocationCubit>(() => _i73.LocationCubit(
      userPreferencesReaderService: get<_i6.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i6.IUserPreferencesWritterService>(),
      locationService: get<_i6.ILocationReaderService>()));
  gh.factory<_i74.MapConfigurationFormBloc>(() => _i74.MapConfigurationFormBloc(
      readerService: get<_i17.IMapConfigurationReaderService>(),
      writterService: get<_i17.IMapConfigurationWritterService>()));
  gh.factory<_i75.CategoryCreateFormBloc>(() => _i75.CategoryCreateFormBloc(
      categoryService: get<_i6.ICategoryService>(),
      locationService: get<_i6.ILocationReaderService>()));
  gh.factory<_i76.GeodataCreateCubit>(() => _i76.GeodataCreateCubit(
      get<_i6.ICategoryService>(), get<_i6.ILocationReaderService>()));
  return get;
}

class _$RegisterModule extends _i77.RegisterModule {}
