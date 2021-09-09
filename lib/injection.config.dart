// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/domain/services/configurations/configuration_service.dart' as _i8;
import 'src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart'
    as _i7;
import 'src/domain/services/map/filters_service.dart' as _i6;
import 'src/domain/services/map/interfaces/i_filters.dart' as _i5;
import 'src/domain/services/map/interfaces/i_location.dart' as _i3;
import 'src/domain/services/map/interfaces/i_markers.dart' as _i9;
import 'src/domain/services/map/location_service.dart' as _i4;
import 'src/domain/services/map/markers_service.dart' as _i10;
import 'src/presentation/views/home/blocs/map/map_cubit.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ILocationConfigurationService>(
      () => _i4.GetCurrentLocation());
  gh.lazySingleton<_i5.IMapFiltersOptionsLoaderService>(
      () => _i6.MapFilterService());
  gh.lazySingleton<_i7.IMapSourceConfigurationChangesListenerService>(
      () => _i8.ConfigurationService());
  gh.lazySingleton<_i9.IMarkerGetterService>(() => _i10.GetMarkers());
  gh.factory<_i11.MapCubit>(() => _i11.MapCubit(
      sourceConfReader: get<_i7.IMapSourceConfigurationReaderService>()));
  return get;
}
