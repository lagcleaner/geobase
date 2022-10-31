// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i59;
import 'package:shared_preferences/shared_preferences.dart' as _i61;

import 'src/domain/repositories/i_column_repository.dart' as _i19;
import 'src/domain/repositories/i_configuration_repository.dart' as _i56;
import 'src/domain/repositories/i_field_type_repository.dart' as _i31;
import 'src/domain/repositories/i_field_value_repository.dart' as _i41;
import 'src/domain/repositories/i_media_repository.dart' as _i25;
import 'src/domain/repositories/i_static_selection_repository.dart' as _i37;
import 'src/domain/repositories/repositories.dart' as _i16;
import 'src/domain/services/categories_service.dart' as _i67;
import 'src/domain/services/field_type_service.dart' as _i34;
import 'src/domain/services/goedata_service.dart' as _i48;
import 'src/domain/services/interfaces/i_field_type.dart' as _i33;
import 'src/domain/services/interfaces/interfaces.dart' as _i27;
import 'src/domain/services/location_reader_service.dart' as _i69;
import 'src/domain/services/map_conf_reader_service.dart' as _i70;
import 'src/domain/services/map_conf_writter_service.dart' as _i71;
import 'src/domain/services/map_markers_service.dart' as _i54;
import 'src/domain/services/media_service.dart' as _i28;
import 'src/domain/services/services.dart' as _i6;
import 'src/domain/services/static_selection_service.dart' as _i39;
import 'src/domain/services/user_preferences_reader_service.dart' as _i55;
import 'src/domain/services/user_preferences_writter_service.dart' as _i57;
import 'src/infrastructure/core/registers/external_registers.dart' as _i78;
import 'src/infrastructure/providers/categories_provider.dart' as _i15;
import 'src/infrastructure/providers/columns_provider.dart' as _i22;
import 'src/infrastructure/providers/field_type_provider.dart' as _i30;
import 'src/infrastructure/providers/field_value_provider.dart' as _i40;
import 'src/infrastructure/providers/geodata_provider.dart' as _i46;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i21;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i29;
import 'src/infrastructure/providers/interfaces/i_local_preferences_provider.dart'
    as _i49;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i51;
import 'src/infrastructure/providers/interfaces/i_media_provider.dart' as _i23;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i35;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i18;
import 'src/infrastructure/providers/local_preferences_provider.dart' as _i50;
import 'src/infrastructure/providers/location_provider.dart' as _i52;
import 'src/infrastructure/providers/media_provider.dart' as _i24;
import 'src/infrastructure/providers/providers.dart' as _i14;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i36;
import 'src/infrastructure/repositories/categories_repository.dart' as _i17;
import 'src/infrastructure/repositories/columns_repository.dart' as _i20;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i68;
import 'src/infrastructure/repositories/field_type_repository.dart' as _i32;
import 'src/infrastructure/repositories/field_values_repository.dart' as _i42;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i47;
import 'src/infrastructure/repositories/location_repository.dart' as _i53;
import 'src/infrastructure/repositories/media_repository.dart' as _i26;
import 'src/infrastructure/repositories/static_selection_repository.dart'
    as _i38;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/core/widgets/render_classes/reflect.dart' as _i10;
import 'src/presentation/pages/categories/blocs/category_form/category_create_form_bloc.dart'
    as _i5;
import 'src/presentation/pages/categories/blocs/category_form/category_edit_form_bloc.dart'
    as _i7;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i9;
import 'src/presentation/pages/categories/blocs/categorylist/categorylist_bloc.dart'
    as _i8;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i44;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i75;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i76;
import 'src/presentation/pages/geodata/blocs/geodata_edit/geodata_edit_cubit.dart'
    as _i11;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i43;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i45;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i12;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i13;
import 'src/presentation/pages/home/blocs/categories_map_selector/categoriesmapselector_cubit.dart'
    as _i74;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i72;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i58;
import 'src/presentation/pages/home/blocs/markers/marker_cubit.dart' as _i60;
import 'src/presentation/pages/home/blocs/panel_geodata_new/geodata_new_cubit.dart'
    as _i77;
import 'src/presentation/pages/home/blocs/panel_geodata_preview/geodata_preview_cubit.dart'
    as _i66;
import 'src/presentation/pages/home/blocs/sliding_up_panel/sliding_up_panel_cubit.dart'
    as _i62;
import 'src/presentation/pages/options/blocs/map_configuration_forms/map_configuration_form_bloc.dart'
    as _i73;
import 'src/presentation/pages/staticselection/blocs/static_selection_form/static_selection_create_form_bloc.dart'
    as _i63;
import 'src/presentation/pages/staticselection/blocs/static_selection_list/static_selection_list_cubit.dart'
    as _i64;
import 'src/presentation/pages/staticselection/blocs/static_selection_view/static_selection_view_cubit.dart'
    as _i65; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
  gh.factory<_i5.CategoryCreateFormBloc>(() => _i5.CategoryCreateFormBloc(
        categoryService: get<_i6.ICategoryService>(),
        fieldTypeService: get<_i6.IFieldTypeService>(),
      ));
  gh.factoryParam<_i7.CategoryEditFormBloc, int?, dynamic>((
    categoryId,
    _,
  ) =>
      _i7.CategoryEditFormBloc(
        categoryId: categoryId,
        categoryService: get<_i6.ICategoryService>(),
        fieldTypeService: get<_i6.IFieldTypeService>(),
      ));
  gh.factory<_i8.CategoryListBloc>(
      () => _i8.CategoryListBloc(get<_i6.ICategoryService>()));
  gh.factory<_i9.CategoryViewCubit>(
      () => _i9.CategoryViewCubit(get<_i6.ICategoryService>()));
  gh.lazySingleton<_i10.FieldRenderResolver>(() => _i10.FieldRenderResolver());
  gh.factory<_i11.GeodataEditCubit>(
      () => _i11.GeodataEditCubit(get<_i6.IGeodataService>()));
  gh.factory<_i12.GeodataListBloc>(
      () => _i12.GeodataListBloc(get<_i6.IGeodataService>()));
  gh.factory<_i13.GeodataViewCubit>(
      () => _i13.GeodataViewCubit(get<_i6.IGeodataService>()));
  gh.lazySingleton<_i14.ICategoriesProvider>(
      () => _i15.CategoriesSQLiteProvider());
  gh.factory<_i16.ICategoriesRepository>(() =>
      _i17.CategoriesRepository(provider: get<_i18.ICategoriesProvider>()));
  gh.lazySingleton<_i19.IColumnRepository>(
      () => _i20.ColumnRepository(provider: get<_i18.IColumnsProvider>()));
  gh.lazySingleton<_i21.IColumnsProvider>(() => _i22.ColumnsSQLiteProvider());
  gh.lazySingleton<_i23.IFieldTypeMediaProvider>(
      () => _i24.MediaSQLiteProvider());
  gh.lazySingleton<_i25.IFieldTypeMediaRepository>(() =>
      _i26.FieldTypeMediaRepository(
          provider: get<_i18.IFieldTypeMediaProvider>()));
  gh.factory<_i27.IFieldTypeMediaService>(() => _i28.FieldTypeMediaService(
      repository: get<_i25.IFieldTypeMediaRepository>()));
  gh.lazySingleton<_i29.IFieldTypeProvider>(
      () => _i30.FieldTypeSQLiteProvider());
  gh.lazySingleton<_i31.IFieldTypeRepository>(
      () => _i32.FieldTypeRepository(provider: get<_i18.IFieldTypeProvider>()));
  gh.lazySingleton<_i33.IFieldTypeService>(() =>
      _i34.FieldTypeService(repository: get<_i31.IFieldTypeRepository>()));
  gh.lazySingleton<_i35.IFieldTypeStaticSelectionProvider>(
      () => _i36.StaticSelectionSQLiteProvider());
  gh.lazySingleton<_i37.IFieldTypeStaticSelectionRepository>(() =>
      _i38.FieldTypeStaticSelectionRepository(
          provider: get<_i18.IFieldTypeStaticSelectionProvider>()));
  gh.factory<_i27.IFieldTypeStaticSelectionService>(() =>
      _i39.FieldTypeStaticSelectionService(
          repository: get<_i37.IFieldTypeStaticSelectionRepository>()));
  gh.lazySingleton<_i18.IFieldValueProvider>(
      () => _i40.FieldValueSQLiteProvider());
  gh.lazySingleton<_i41.IFieldValueRepository>(() =>
      _i42.FieldValueRepository(provider: get<_i18.IFieldValueProvider>()));
  gh.factoryParam<_i43.IGeodataCreateFormBloc, _i44.GeodataCreateInitialData?,
      dynamic>((
    createInitialData,
    _,
  ) =>
      _i43.GeodataCreateFormBloc(
        geodataService: get<_i6.IGeodataService>(),
        createInitialData: createInitialData,
      ));
  gh.factoryParam<_i45.IGeodataEditFormBloc, _i44.GeodataEditInitialData?,
      dynamic>((
    editInitialData,
    _,
  ) =>
      _i45.GeodataEditFormBloc(
        geodataService: get<_i6.IGeodataService>(),
        editInitialData: editInitialData,
      ));
  gh.lazySingleton<_i18.IGeodataProvider>(() => _i46.GeodataSQLiteProvider());
  gh.factory<_i16.IGeodataRepository>(
      () => _i47.GeodataRepository(provider: get<_i18.IGeodataProvider>()));
  gh.lazySingleton<_i27.IGeodataService>(
      () => _i48.GeodataService(get<_i16.IGeodataRepository>()));
  gh.lazySingleton<_i49.ILocalPreferencesProvider>(
      () => _i50.LocalPreferencesProvider());
  gh.lazySingleton<_i51.ILocationProvider>(() => _i52.LocationProvider());
  gh.lazySingleton<_i16.ILocationRepository>(
      () => _i53.LocationRepository(get<_i18.ILocationProvider>()));
  gh.lazySingleton<_i27.IMarkerGetterService>(
      () => _i54.GetMarkers(get<_i16.IGeodataRepository>()));
  gh.lazySingleton<_i27.IUserPreferencesReaderService>(() =>
      _i55.UserPreferencesReaderService(get<_i56.IConfigurationRepository>()));
  gh.lazySingleton<_i27.IUserPreferencesWritterService>(() =>
      _i57.UserPreferencesWritterService(get<_i56.IConfigurationRepository>()));
  gh.factoryParam<_i58.MapCubit, _i59.LatLng?, dynamic>((
    initialLocation,
    _,
  ) =>
      _i58.MapCubit(
        initialLocation: initialLocation,
        confReader: get<_i6.IMapConfigurationReaderService>(),
        usPrefsReader: get<_i6.IUserPreferencesReaderService>(),
        usPrefsWritter: get<_i6.IUserPreferencesWritterService>(),
      ));
  gh.factory<_i60.MarkerCubit>(() => _i60.MarkerCubit(
        markerGetterService: get<_i27.IMarkerGetterService>(),
        uPrefsReader: get<_i27.IUserPreferencesReaderService>(),
      ));
  await gh.factoryAsync<_i61.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i62.SlidingUpPanelCubit>(() => _i62.SlidingUpPanelCubit());
  gh.factory<_i63.StaticSelectionCreateFormBloc>(
      () => _i63.StaticSelectionCreateFormBloc(
            service: get<_i27.IFieldTypeStaticSelectionService>(),
            fieldTypeService: get<_i27.IFieldTypeService>(),
          ));
  gh.factory<_i64.StaticSelectionListCubit>(() => _i64.StaticSelectionListCubit(
      get<_i27.IFieldTypeStaticSelectionService>()));
  gh.factory<_i65.StaticSelectionViewCubit>(() => _i65.StaticSelectionViewCubit(
      get<_i27.IFieldTypeStaticSelectionService>()));
  gh.factory<_i66.GeodataPreviewCubit>(
      () => _i66.GeodataPreviewCubit(get<_i27.IGeodataService>()));
  gh.lazySingleton<_i27.ICategoryService>(() => _i67.CategoriesService(
        get<_i16.ICategoriesRepository>(),
        get<_i16.IGeodataRepository>(),
      ));
  gh.factory<_i16.IConfigurationRepository>(() =>
      _i68.ConfigurationRepository(get<_i49.ILocalPreferencesProvider>()));
  gh.lazySingleton<_i6.ILocationReaderService>(
      () => _i69.LocationReaderService(get<_i16.ILocationRepository>()));
  gh.lazySingleton<_i27.IMapConfigurationReaderService>(() =>
      _i70.MapConfigurationReaderService(get<_i16.IConfigurationRepository>()));
  gh.lazySingleton<_i27.IMapConfigurationWritterService>(() =>
      _i71.MapConfigurationWritterService(
          get<_i16.IConfigurationRepository>()));
  gh.factory<_i72.LocationCubit>(() =>
      _i72.LocationCubit(locationService: get<_i6.ILocationReaderService>()));
  gh.factory<_i73.MapConfigurationFormBloc>(() => _i73.MapConfigurationFormBloc(
        readerService: get<_i27.IMapConfigurationReaderService>(),
        writterService: get<_i27.IMapConfigurationWritterService>(),
      ));
  gh.factory<_i74.CategoriesMapSelectorCubit>(
      () => _i74.CategoriesMapSelectorCubit(
            get<_i27.ICategoryService>(),
            get<_i27.IUserPreferencesReaderService>(),
          ));
  gh.factory<_i75.CategoriesShowerCubit>(
      () => _i75.CategoriesShowerCubit(get<_i27.ICategoryService>()));
  gh.factory<_i76.GeodataCreateCubit>(() => _i76.GeodataCreateCubit(
        get<_i6.ICategoryService>(),
        get<_i6.ILocationReaderService>(),
      ));
  gh.factory<_i77.GeodataNewCubit>(
      () => _i77.GeodataNewCubit(get<_i27.ICategoryService>()));
  return get;
}

class _$RegisterModule extends _i78.RegisterModule {}
