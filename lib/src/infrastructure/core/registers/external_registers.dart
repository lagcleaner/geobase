import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
