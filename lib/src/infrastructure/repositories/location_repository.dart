import 'package:injectable/injectable.dart';

import '../../domain/repositories/repositories.dart';

@Injectable(as: ILocationRepository)
class LocationRepository implements ILocationRepository {}
