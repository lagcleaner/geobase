// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:latlong2/latlong.dart' as _i62;

import 'src/domain/repositories/i_column_repository.dart' as _i21;
import 'src/domain/repositories/i_configuration_repository.dart' as _i58;
import 'src/domain/repositories/i_field_type_repository.dart' as _i32;
import 'src/domain/repositories/i_field_value_repository.dart' as _i40;
import 'src/domain/repositories/i_media_repository.dart' as _i27;
import 'src/domain/repositories/i_static_selection_repository.dart' as _i36;
import 'src/domain/repositories/repositories.dart' as _i16;
import 'src/domain/services/categories_service.dart' as _i20;
import 'src/domain/services/geodata_filter_service.dart' as _i46;
import 'src/domain/services/goedata_service.dart' as _i49;
import 'src/domain/services/interfaces/interfaces.dart' as _i19;
import 'src/domain/services/location_reader_service.dart' as _i65;
import 'src/domain/services/map_conf_reader_service.dart' as _i66;
import 'src/domain/services/map_conf_writter_service.dart' as _i67;
import 'src/domain/services/map_filters_service.dart' as _i55;
import 'src/domain/services/map_markers_service.dart' as _i56;
import 'src/domain/services/media_service.dart' as _i29;
import 'src/domain/services/services.dart' as _i6;
import 'src/domain/services/static_selection_service.dart' as _i38;
import 'src/domain/services/user_preferences_reader_service.dart' as _i57;
import 'src/domain/services/user_preferences_writter_service.dart' as _i59;
import 'src/infrastructure/providers/categories_provider.dart' as _i15;
import 'src/infrastructure/providers/columns_provider.dart' as _i24;
import 'src/infrastructure/providers/field_type_provider.dart' as _i31;
import 'src/infrastructure/providers/field_value_provider.dart' as _i39;
import 'src/infrastructure/providers/geodata_provider.dart' as _i47;
import 'src/infrastructure/providers/interfaces/i_columns_provider.dart'
    as _i23;
import 'src/infrastructure/providers/interfaces/i_field_type_provider.dart'
    as _i30;
import 'src/infrastructure/providers/interfaces/i_local_preferences_provider.dart'
    as _i50;
import 'src/infrastructure/providers/interfaces/i_location_provider.dart'
    as _i52;
import 'src/infrastructure/providers/interfaces/i_media_provider.dart' as _i25;
import 'src/infrastructure/providers/interfaces/i_static_selection_provider.dart'
    as _i34;
import 'src/infrastructure/providers/interfaces/interfaces.dart' as _i14;
import 'src/infrastructure/providers/local_preferences_provider.dart' as _i51;
import 'src/infrastructure/providers/location_provider.dart' as _i53;
import 'src/infrastructure/providers/media_provider.dart' as _i26;
import 'src/infrastructure/providers/static_selection_provider.dart' as _i35;
import 'src/infrastructure/repositories/categories_repository.dart' as _i17;
import 'src/infrastructure/repositories/columns_repository.dart' as _i22;
import 'src/infrastructure/repositories/configuration_repository.dart' as _i64;
import 'src/infrastructure/repositories/field_type_repository.dart' as _i33;
import 'src/infrastructure/repositories/field_values_repository.dart' as _i41;
import 'src/infrastructure/repositories/geodata_filters_repository.dart'
    as _i45;
import 'src/infrastructure/repositories/geodata_repository.dart' as _i48;
import 'src/infrastructure/repositories/location_repository.dart' as _i54;
import 'src/infrastructure/repositories/media_repository.dart' as _i28;
import 'src/infrastructure/repositories/static_selection_repository.dart'
    as _i37;
import 'src/presentation/core/utils/simple_bloc_observer.dart' as _i4;
import 'src/presentation/core/widgets/render_classes/reflect.dart' as _i10;
import 'src/presentation/pages/categories/blocs/categories/categories_bloc.dart'
    as _i5;
import 'src/presentation/pages/categories/blocs/category_create_form/categorycreate_form_bloc.dart'
    as _i18;
import 'src/presentation/pages/categories/blocs/category_view/categoryview_cubit.dart'
    as _i8;
import 'src/presentation/pages/categories/blocs/column/column_cubit.dart'
    as _i9;
import 'src/presentation/pages/geodata/blocs/blocs.dart' as _i43;
import 'src/presentation/pages/geodata/blocs/categories_shower/categoriesshower_cubit.dart'
    as _i7;
import 'src/presentation/pages/geodata/blocs/geodata_create/geodata_create_cubit.dart'
    as _i11;
import 'src/presentation/pages/geodata/blocs/geodata_form/create_form_bloc.dart'
    as _i42;
import 'src/presentation/pages/geodata/blocs/geodata_form/edit_form_bloc.dart'
    as _i44;
import 'src/presentation/pages/geodata/blocs/geodatalist/geodatalist_bloc.dart'
    as _i12;
import 'src/presentation/pages/geodata/blocs/geodataview/geodataview_cubit.dart'
    as _i13;
import 'src/presentation/pages/home/blocs/location/location_cubit.dart' as _i68;
import 'src/presentation/pages/home/blocs/map/map_cubit.dart' as _i61;
import 'src/presentation/pages/home/blocs/map_configuration_input/map_configuration_input_cubit.dart'
    as _i60;
import 'src/presentation/pages/home/blocs/markers/marker_cubit.dart'
    as _i63; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.ColumnCubit>(() => _i9.ColumnCubit());
  gh.lazySingleton<_i10.FieldRenderResolver>(() => _i10.FieldRenderResolver());
  gh.factory<_i11.GeodataCreateCubit>(
      () => _i11.GeodataCreateCubit(get<dynamic>(), get<dynamic>()));
  gh.factory<_i12.GeodataListBloc>(
      () => _i12.GeodataListBloc(get<_i6.IGeodataService>()));
  gh.factory<_i13.GeodataViewCubit>(
      () => _i13.GeodataViewCubit(get<dynamic>()));
  gh.lazySingleton<_i14.ICategoriesProvider>(
      () => _i15.CategoriesSQLiteProvider());
  gh.factory<_i16.ICategoriesRepository>(() =>
      _i17.CategoriesRepository(provider: get<_i14.ICategoriesProvider>()));
  gh.factory<_i18.ICategoryCreateFormBloc>(() => _i18.CategoryCreateFormBloc(
      categoryService: get<_i6.ICategoryService>()));
  gh.lazySingleton<_i19.ICategoryService>(
      () => _i20.CategoriesService(get<_i16.ICategoriesRepository>()));
  gh.lazySingleton<_i21.IColumnRepository>(
      () => _i22.ColumnRepository(provider: get<_i14.IColumnsProvider>()));
  gh.lazySingleton<_i23.IColumnsProvider>(() => _i24.ColumnsSQLiteProvider());
  gh.lazySingleton<_i25.IFieldTypeMediaProvider>(
      () => _i26.MediaSQLiteProvider());
  gh.lazySingleton<_i27.IFieldTypeMediaRepository>(() =>
      _i28.FieldTypeMediaRepository(
          provider: get<_i14.IFieldTypeMediaProvider>()));
  gh.factory<_i19.IFieldTypeMediaService>(() => _i29.FieldTypeMediaService(
      repository: get<_i27.IFieldTypeMediaRepository>()));
  gh.lazySingleton<_i30.IFieldTypeProvider>(
      () => _i31.FieldTypeSQLiteProvider());
  gh.lazySingleton<_i32.IFieldTypeRepository>(
      () => _i33.FieldTypeRepository(provider: get<_i14.IFieldTypeProvider>()));
  gh.lazySingleton<_i34.IFieldTypeStaticSelectionProvider>(
      () => _i35.StaticSelectionSQLiteProvider());
  gh.lazySingleton<_i36.IFieldTypeStaticSelectionRepository>(() =>
      _i37.FieldTypeStaticSelectionRepository(
          provider: get<_i14.IFieldTypeStaticSelectionProvider>()));
  gh.factory<_i19.IFieldTypeStaticSelectionService>(() =>
      _i38.FieldTypeStaticSelectionService(
          repository: get<_i36.IFieldTypeStaticSelectionRepository>()));
  gh.lazySingleton<_i14.IFieldValueProvider>(
      () => _i39.FieldValueSQLiteProvider());
  gh.lazySingleton<_i40.IFieldValueRepository>(() =>
      _i41.FieldValueRepository(provider: get<_i14.IFieldValueProvider>()));
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
  gh.lazySingleton<_i16.IGeodataFilterRepository>(
      () => _i45.GeodataFiltersRepository());
  gh.lazySingleton<_i19.IGeodataFiltersOptionsService>(
      () => _i46.GeodataFilterService(get<_i16.IGeodataFilterRepository>()));
  gh.lazySingleton<_i14.IGeodataProvider>(() => _i47.GeodataSQLiteProvider());
  gh.factory<_i16.IGeodataRepository>(
      () => _i48.GeodataRepository(provider: get<_i14.IGeodataProvider>()));
  gh.lazySingleton<_i19.IGeodataService>(
      () => _i49.GeodataService(get<_i16.IGeodataRepository>()));
  gh.lazySingleton<_i50.ILocalPreferencesProvider>(
      () => _i51.LocalPreferencesProvider());
  gh.lazySingleton<_i52.ILocationProvider>(() => _i53.LocationProvider());
  gh.lazySingleton<_i16.ILocationRepository>(
      () => _i54.LocationRepository(get<_i14.ILocationProvider>()));
  gh.lazySingleton<_i19.IMapFiltersOptionsService>(
      () => _i55.MapFiltersService(get<_i16.IMapFilterRepository>()));
  gh.lazySingleton<_i19.IMarkerGetterService>(
      () => _i56.GetMarkers(get<_i16.IGeodataRepository>()));
  gh.lazySingleton<_i19.IUserPreferencesReaderService>(() =>
      _i57.UserPreferencesReaderService(get<_i58.IConfigurationRepository>()));
  gh.lazySingleton<_i19.IUserPreferencesWritterService>(() =>
      _i59.UserPreferencesWritterService(get<_i58.IConfigurationRepository>()));
  gh.factory<_i60.MapConfigurationInputCubit>(() =>
      _i60.MapConfigurationInputCubit(
          readerService: get<_i6.IMapConfigurationReaderService>(),
          writterService: get<_i6.IMapConfigurationWritterService>()));
  gh.factoryParam<_i61.MapCubit, _i62.LatLng?, dynamic>((initialLocation, _) =>
      _i61.MapCubit(
          confReader: get<_i6.IMapConfigurationReaderService>(),
          initialLocation: initialLocation));
  gh.factory<_i63.MarkerCubit>(() =>
      _i63.MarkerCubit(markerGetterService: get<_i19.IMarkerGetterService>()));
  gh.factory<_i16.IConfigurationRepository>(() =>
      _i64.ConfigurationRepository(get<_i50.ILocalPreferencesProvider>()));
  gh.lazySingleton<_i6.ILocationReaderService>(() => _i65.LocationReaderService(
      get<_i16.IConfigurationRepository>(), get<_i16.ILocationRepository>()));
  gh.lazySingleton<_i19.IMapConfigurationReaderService>(() =>
      _i66.MapConfigurationReaderService(get<_i16.IConfigurationRepository>()));
  gh.lazySingleton<_i19.IMapConfigurationWritterService>(() =>
      _i67.MapConfigurationWritterService(
          get<_i16.IConfigurationRepository>()));
  gh.factory<_i68.LocationCubit>(() => _i68.LocationCubit(
      userPreferencesReaderService: get<_i6.IUserPreferencesReaderService>(),
      userPreferencesWritterService: get<_i6.IUserPreferencesWritterService>(),
      locationService: get<_i6.ILocationReaderService>()));
  return get;
}
