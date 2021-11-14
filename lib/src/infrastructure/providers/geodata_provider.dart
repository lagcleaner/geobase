import 'package:geobase/injection.dart';

import 'package:geobase/src/infrastructure/providers/interfaces/i_geodata_provider.dart';

@LazySingleton(as: IGeodataProvider)
class GeodataSQLiteProvider {}
