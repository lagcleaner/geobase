// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/domain/usecases/configurations/load_source_configuration.dart'
    as _i4;
import 'src/domain/usecases/configurations/load_user_preferences.dart' as _i5;
import 'src/domain/usecases/map/get_markers.dart' as _i3;
import 'src/presentation/views/home/blocs/map/map_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.GetMarkers>(() => _i3.GetMarkers());
  gh.lazySingleton<_i4.LoadSourceConfiguration>(
      () => _i4.LoadSourceConfiguration());
  gh.lazySingleton<_i5.LoadUserPreferences>(() => _i5.LoadUserPreferences());
  gh.factory<_i6.MapCubit>(
      () => _i6.MapCubit(loadSourceConfiguration: get<dynamic>()));
  return get;
}
