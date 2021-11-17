import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_local_preferences_provider.dart';

@LazySingleton(as: ILocalPreferencesProvider)
class LocalPreferencesProvider extends ILocalPreferencesProvider {}
