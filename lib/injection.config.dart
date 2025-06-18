// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:geobase/src/domain/repositories/i_column_repository.dart'
    as _i63;
import 'package:geobase/src/domain/repositories/i_configuration_repository.dart'
    as _i74;
import 'package:geobase/src/domain/repositories/i_field_type_repository.dart'
    as _i26;
import 'package:geobase/src/domain/repositories/i_field_value_repository.dart'
    as _i36;
import 'package:geobase/src/domain/repositories/i_form_repository.dart' as _i15;
import 'package:geobase/src/domain/repositories/i_media_repository.dart'
    as _i21;
import 'package:geobase/src/domain/repositories/i_static_selection_repository.dart'
    as _i32;
import 'package:geobase/src/domain/repositories/repositories.dart' as _i9;
import 'package:geobase/src/domain/services/categories_service.dart' as _i62;
import 'package:geobase/src/domain/services/column_service.dart' as _i65;
import 'package:geobase/src/domain/services/field_type_service.dart' as _i29;
import 'package:geobase/src/domain/services/form_service.dart' as _i18;
import 'package:geobase/src/domain/services/goedata_service.dart' as _i40;
import 'package:geobase/src/domain/services/interfaces/i_field_type.dart'
    as _i28;
import 'package:geobase/src/domain/services/interfaces/interfaces.dart' as _i17;
import 'package:geobase/src/domain/services/location_reader_service.dart'
    as _i70;
import 'package:geobase/src/domain/services/map_conf_reader_service.dart'
    as _i71;
import 'package:geobase/src/domain/services/map_conf_writter_service.dart'
    as _i72;
import 'package:geobase/src/domain/services/map_markers_service.dart' as _i46;
import 'package:geobase/src/domain/services/media_service.dart' as _i23;
import 'package:geobase/src/domain/services/services.dart' as _i53;
import 'package:geobase/src/domain/services/static_selection_service.dart'
    as _i34;
import 'package:geobase/src/domain/services/user_preferences_reader_service.dart'
    as _i73;
import 'package:geobase/src/domain/services/user_preferences_writter_service.dart'
    as _i75;
import 'package:geobase/src/infrastructure/core/registers/external_registers.dart'
    as _i90;
import 'package:geobase/src/infrastructure/providers/categories_provider.dart'
    as _i8;
import 'package:geobase/src/infrastructure/providers/columns_provider.dart'
    as _i13;
import 'package:geobase/src/infrastructure/providers/field_type_provider.dart'
    as _i25;
import 'package:geobase/src/infrastructure/providers/field_value_provider.dart'
    as _i35;
import 'package:geobase/src/infrastructure/providers/form_provider.dart'
    as _i14;
import 'package:geobase/src/infrastructure/providers/geodata_provider.dart'
    as _i38;
import 'package:geobase/src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i12;
import 'package:geobase/src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i24;
import 'package:geobase/src/infrastructure/providers/interfaces/i_local_preferences_provider.dart'
    as _i41;
import 'package:geobase/src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i43;
import 'package:geobase/src/infrastructure/providers/interfaces/i_media_provider.dart'
    as _i19;
import 'package:geobase/src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i30;
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart'
    as _i11;
import 'package:geobase/src/infrastructure/providers/local_preferences_provider.dart'
    as _i42;
import 'package:geobase/src/infrastructure/providers/location_provider.dart'
    as _i44;
import 'package:geobase/src/infrastructure/providers/media_provider.dart'
    as _i20;
import 'package:geobase/src/infrastructure/providers/providers.dart' as _i7;
import 'package:geobase/src/infrastructure/providers/static_selection_provider.dart'
    as _i31;
import 'package:geobase/src/infrastructure/repositories/categories_repository.dart'
    as _i10;
import 'package:geobase/src/infrastructure/repositories/columns_repository.dart'
    as _i64;
import 'package:geobase/src/infrastructure/repositories/configuration_repository.dart'
    as _i66;
import 'package:geobase/src/infrastructure/repositories/field_type_repository.dart'
    as _i27;
import 'package:geobase/src/infrastructure/repositories/field_values_repository.dart'
    as _i37;
import 'package:geobase/src/infrastructure/repositories/form_repository.dart'
    as _i16;
import 'package:geobase/src/infrastructure/repositories/geodata_repository.dart'
    as _i39;
import 'package:geobase/src/infrastructure/repositories/location_repository.dart'
    as _i45;
import 'package:geobase/src/infrastructure/repositories/media_repository.dart'
    as _i22;
import 'package:geobase/src/infrastructure/repositories/static_selection_repository.dart'
    as _i33;
import 'package:geobase/src/presentation/core/utils/simple_bloc_observer.dart'
    as _i4;
import 'package:geobase/src/presentation/core/widgets/blocs/form_input_bloc/form_selector_bloc/form_selector_cubit.dart'
    as _i55;
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart'
    as _i6;
import 'package:geobase/src/presentation/pages/categories/blocs/categories_exporter/categories_exporter_cubit.dart'
    as _i81;
import 'package:geobase/src/presentation/pages/categories/blocs/categories_importer/categories_importer_cubit.dart'
    as _i5;
import 'package:geobase/src/presentation/pages/categories/blocs/category_form/category_create_form_bloc.dart'
    as _i84;
import 'package:geobase/src/presentation/pages/categories/blocs/category_form/category_edit_form_bloc.dart'
    as _i85;
import 'package:geobase/src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i87;
import 'package:geobase/src/presentation/pages/categories/blocs/categorylist/categorylist_bloc.dart'
    as _i86;
import 'package:geobase/src/presentation/pages/form/blocs/form_form/form_create_form_bloc.dart'
    as _i52;
import 'package:geobase/src/presentation/pages/form/blocs/form_list/form_list_cubit.dart'
    as _i54;
import 'package:geobase/src/presentation/pages/form/blocs/form_view/form_view_cubit.dart'
    as _i56;
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart'
    as _i68;
import 'package:geobase/src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i83;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i88;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_edit/geodata_edit_cubit.dart'
    as _i57;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_exporter/geodata_exporter_cubit.dart'
    as _i58;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i67;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i69;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i59;
import 'package:geobase/src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i61;
import 'package:geobase/src/presentation/pages/home/blocs/categories_map_selector/categoriesmapselector_cubit.dart'
    as _i82;
import 'package:geobase/src/presentation/pages/home/blocs/location/location_cubit.dart'
    as _i76;
import 'package:geobase/src/presentation/pages/home/blocs/map/map_cubit.dart'
    as _i78;
import 'package:geobase/src/presentation/pages/home/blocs/markers/marker_cubit.dart'
    as _i80;
import 'package:geobase/src/presentation/pages/home/blocs/panel_geodata_new/geodata_new_cubit.dart'
    as _i89;
import 'package:geobase/src/presentation/pages/home/blocs/panel_geodata_preview/geodata_preview_cubit.dart'
    as _i60;
import 'package:geobase/src/presentation/pages/home/blocs/sliding_up_panel/sliding_up_panel_cubit.dart'
    as _i48;
import 'package:geobase/src/presentation/pages/options/blocs/map_configuration_forms/map_configuration_form_bloc.dart'
    as _i77;
import 'package:geobase/src/presentation/pages/staticselection/blocs/static_selection_form/static_selection_create_form_bloc.dart'
    as _i49;
import 'package:geobase/src/presentation/pages/staticselection/blocs/static_selection_list/static_selection_list_cubit.dart'
    as _i50;
import 'package:geobase/src/presentation/pages/staticselection/blocs/static_selection_view/static_selection_view_cubit.dart'
    as _i51;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i79;
import 'package:shared_preferences/shared_preferences.dart'
    as _i47; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.BlocObserver>(() => _i4.SimpleBlocObserver());
    gh.factory<_i5.CategoriesImporterCubit>(
        () => _i5.CategoriesImporterCubit());
    gh.lazySingleton<_i6.FieldRenderResolver>(() => _i6.FieldRenderResolver());
    gh.lazySingleton<_i7.ICategoriesProvider>(
        () => _i8.CategoriesSQLiteProvider());
    gh.factory<_i9.ICategoriesRepository>(() =>
        _i10.CategoriesRepository(provider: gh<_i11.ICategoriesProvider>()));
    gh.lazySingleton<_i12.IColumnsProvider>(() => _i13.ColumnsSQLiteProvider());
    gh.lazySingleton<_i7.IFieldTypeFormProvider>(
        () => _i14.FormSQLiteProvider());
    gh.lazySingleton<_i15.IFieldTypeFormRepository>(() =>
        _i16.FieldTypeFormRepository(
            provider: gh<_i11.IFieldTypeFormProvider>()));
    gh.factory<_i17.IFieldTypeFormService>(() => _i18.FieldTypeFormService(
        repository: gh<_i15.IFieldTypeFormRepository>()));
    gh.lazySingleton<_i19.IFieldTypeMediaProvider>(
        () => _i20.MediaSQLiteProvider());
    gh.lazySingleton<_i21.IFieldTypeMediaRepository>(() =>
        _i22.FieldTypeMediaRepository(
            provider: gh<_i11.IFieldTypeMediaProvider>()));
    gh.factory<_i17.IFieldTypeMediaService>(() => _i23.FieldTypeMediaService(
        repository: gh<_i21.IFieldTypeMediaRepository>()));
    gh.lazySingleton<_i24.IFieldTypeProvider>(
        () => _i25.FieldTypeSQLiteProvider());
    gh.lazySingleton<_i26.IFieldTypeRepository>(() =>
        _i27.FieldTypeRepository(provider: gh<_i11.IFieldTypeProvider>()));
    gh.lazySingleton<_i28.IFieldTypeService>(() =>
        _i29.FieldTypeService(repository: gh<_i26.IFieldTypeRepository>()));
    gh.lazySingleton<_i30.IFieldTypeStaticSelectionProvider>(
        () => _i31.StaticSelectionSQLiteProvider());
    gh.lazySingleton<_i32.IFieldTypeStaticSelectionRepository>(() =>
        _i33.FieldTypeStaticSelectionRepository(
            provider: gh<_i11.IFieldTypeStaticSelectionProvider>()));
    gh.factory<_i17.IFieldTypeStaticSelectionService>(() =>
        _i34.FieldTypeStaticSelectionService(
            repository: gh<_i32.IFieldTypeStaticSelectionRepository>()));
    gh.lazySingleton<_i11.IFieldValueProvider>(
        () => _i35.FieldValueSQLiteProvider());
    gh.lazySingleton<_i36.IFieldValueRepository>(() =>
        _i37.FieldValueRepository(provider: gh<_i11.IFieldValueProvider>()));
    gh.lazySingleton<_i11.IGeodataProvider>(() => _i38.GeodataSQLiteProvider());
    gh.factory<_i9.IGeodataRepository>(
        () => _i39.GeodataRepository(provider: gh<_i11.IGeodataProvider>()));
    gh.lazySingleton<_i17.IGeodataService>(
        () => _i40.GeodataService(gh<_i9.IGeodataRepository>()));
    gh.lazySingleton<_i41.ILocalPreferencesProvider>(
        () => _i42.LocalPreferencesProvider());
    gh.lazySingleton<_i43.ILocationProvider>(() => _i44.LocationProvider());
    gh.lazySingleton<_i9.ILocationRepository>(
        () => _i45.LocationRepository(gh<_i11.ILocationProvider>()));
    gh.lazySingleton<_i17.IMarkerGetterService>(
        () => _i46.GetMarkers(gh<_i9.IGeodataRepository>()));
    await gh.factoryAsync<_i47.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i48.SlidingUpPanelCubit>(() => _i48.SlidingUpPanelCubit());
    gh.factory<_i49.StaticSelectionCreateFormBloc>(
        () => _i49.StaticSelectionCreateFormBloc(
              service: gh<_i17.IFieldTypeStaticSelectionService>(),
              fieldTypeService: gh<_i17.IFieldTypeService>(),
            ));
    gh.factory<_i50.StaticSelectionListCubit>(() =>
        _i50.StaticSelectionListCubit(
            gh<_i17.IFieldTypeStaticSelectionService>()));
    gh.factory<_i51.StaticSelectionViewCubit>(() =>
        _i51.StaticSelectionViewCubit(
            gh<_i17.IFieldTypeStaticSelectionService>()));
    gh.factory<_i52.FormCreateFormBloc>(() => _i52.FormCreateFormBloc(
          formService: gh<_i53.IFieldTypeFormService>(),
          fieldTypeService: gh<_i53.IFieldTypeService>(),
        ));
    gh.factory<_i54.FormListCubit>(
        () => _i54.FormListCubit(gh<_i17.IFieldTypeFormService>()));
    gh.factory<_i55.FormSelectorCubit>(
        () => _i55.FormSelectorCubit(gh<_i9.IFieldTypeFormRepository>()));
    gh.factory<_i56.FormViewCubit>(
        () => _i56.FormViewCubit(gh<_i53.IFieldTypeFormService>()));
    gh.factory<_i57.GeodataEditCubit>(
        () => _i57.GeodataEditCubit(gh<_i53.IGeodataService>()));
    gh.factory<_i58.GeodataExporterCubit>(
        () => _i58.GeodataExporterCubit(gh<_i17.IGeodataService>()));
    gh.factory<_i59.GeodataListBloc>(
        () => _i59.GeodataListBloc(gh<_i53.IGeodataService>()));
    gh.factory<_i60.GeodataPreviewCubit>(
        () => _i60.GeodataPreviewCubit(gh<_i17.IGeodataService>()));
    gh.factory<_i61.GeodataViewCubit>(
        () => _i61.GeodataViewCubit(gh<_i53.IGeodataService>()));
    gh.lazySingleton<_i17.ICategoryService>(() => _i62.CategoriesService(
          gh<_i9.ICategoriesRepository>(),
          gh<_i9.IGeodataRepository>(),
        ));
    gh.lazySingleton<_i63.IColumnRepository>(
        () => _i64.ColumnRepository(provider: gh<_i11.IColumnsProvider>()));
    gh.lazySingleton<_i17.IColumnService>(() => _i65.ColumnsService(
          gh<_i9.IColumnRepository>(),
          gh<_i9.IGeodataRepository>(),
        ));
    gh.factory<_i9.IConfigurationRepository>(() =>
        _i66.ConfigurationRepository(gh<_i41.ILocalPreferencesProvider>()));
    gh.factoryParam<_i67.IGeodataCreateFormBloc, _i68.GeodataCreateInitialData?,
        dynamic>((
      createInitialData,
      _,
    ) =>
        _i67.GeodataCreateFormBloc(
          geodataService: gh<_i53.IGeodataService>(),
          createInitialData: createInitialData,
        ));
    gh.factoryParam<_i69.IGeodataEditFormBloc, _i68.GeodataEditInitialData?,
        dynamic>((
      editInitialData,
      _,
    ) =>
        _i69.GeodataEditFormBloc(
          geodataService: gh<_i53.IGeodataService>(),
          editInitialData: editInitialData,
        ));
    gh.lazySingleton<_i53.ILocationReaderService>(
        () => _i70.LocationReaderService(gh<_i9.ILocationRepository>()));
    gh.lazySingleton<_i17.IMapConfigurationReaderService>(() =>
        _i71.MapConfigurationReaderService(gh<_i9.IConfigurationRepository>()));
    gh.lazySingleton<_i17.IMapConfigurationWritterService>(() =>
        _i72.MapConfigurationWritterService(
            gh<_i9.IConfigurationRepository>()));
    gh.lazySingleton<_i17.IUserPreferencesReaderService>(() =>
        _i73.UserPreferencesReaderService(gh<_i74.IConfigurationRepository>()));
    gh.lazySingleton<_i17.IUserPreferencesWritterService>(() =>
        _i75.UserPreferencesWritterService(
            gh<_i74.IConfigurationRepository>()));
    gh.factory<_i76.LocationCubit>(() =>
        _i76.LocationCubit(locationService: gh<_i53.ILocationReaderService>()));
    gh.factory<_i77.MapConfigurationFormBloc>(
        () => _i77.MapConfigurationFormBloc(
              readerService: gh<_i17.IMapConfigurationReaderService>(),
              writterService: gh<_i17.IMapConfigurationWritterService>(),
            ));
    gh.factoryParam<_i78.MapCubit, _i79.LatLng?, dynamic>((
      initialLocation,
      _,
    ) =>
        _i78.MapCubit(
          initialLocation: initialLocation,
          confReader: gh<_i53.IMapConfigurationReaderService>(),
          usPrefsReader: gh<_i53.IUserPreferencesReaderService>(),
          usPrefsWritter: gh<_i53.IUserPreferencesWritterService>(),
        ));
    gh.factory<_i80.MarkerCubit>(() => _i80.MarkerCubit(
          markerGetterService: gh<_i17.IMarkerGetterService>(),
          uPrefsReader: gh<_i17.IUserPreferencesReaderService>(),
        ));
    gh.factory<_i81.CategoriesExporterCubit>(
        () => _i81.CategoriesExporterCubit(gh<_i17.ICategoryService>()));
    gh.factory<_i82.CategoriesMapSelectorCubit>(
        () => _i82.CategoriesMapSelectorCubit(
              gh<_i17.ICategoryService>(),
              gh<_i17.IUserPreferencesReaderService>(),
            ));
    gh.factory<_i83.CategoriesShowerCubit>(
        () => _i83.CategoriesShowerCubit(gh<_i17.ICategoryService>()));
    gh.factory<_i84.CategoryCreateFormBloc>(() => _i84.CategoryCreateFormBloc(
          categoryService: gh<_i53.ICategoryService>(),
          fieldTypeService: gh<_i53.IFieldTypeService>(),
        ));
    gh.factoryParam<_i85.CategoryEditFormBloc, int?, dynamic>((
      categoryId,
      _,
    ) =>
        _i85.CategoryEditFormBloc(
          categoryId: categoryId,
          categoryService: gh<_i53.ICategoryService>(),
          fieldTypeService: gh<_i53.IFieldTypeService>(),
        ));
    gh.factory<_i86.CategoryListBloc>(
        () => _i86.CategoryListBloc(gh<_i53.ICategoryService>()));
    gh.factory<_i87.CategoryViewCubit>(
        () => _i87.CategoryViewCubit(gh<_i53.ICategoryService>()));
    gh.factory<_i88.GeodataCreateCubit>(() => _i88.GeodataCreateCubit(
          gh<_i53.ICategoryService>(),
          gh<_i53.ILocationReaderService>(),
        ));
    gh.factory<_i89.GeodataNewCubit>(
        () => _i89.GeodataNewCubit(gh<_i17.ICategoryService>()));
    return this;
  }
}

class _$RegisterModule extends _i90.RegisterModule {}
