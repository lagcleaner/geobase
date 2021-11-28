import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  LocationRepository(
    this.provider,
  ) {
    _onLocationChangedStreamController = StreamController.broadcast();
    _onLocationChanged = provider.onLocationChanged.listen(
      (event) {
        if (_verifiedLocationStatus?.isActive ?? false) {
          _verifiedLocationStatus!.cancel();
        }
        _verifiedLocationStatus = Timer(
          const Duration(seconds: 15),
          () async {
            if (!await provider.isEnabled) {
              _onLocationChangedStreamController.add(
                const Left(Failure.connection()),
              );
            }
          },
        );
        _onLocationChangedStreamController.add(Right(event));
      },
      onError: (error) {
        _onLocationChangedStreamController.add(catchMethod(error as Object));
      },
    );
  }

  Timer? _verifiedLocationStatus;
  // ignore: cancel_subscriptions
  late final StreamSubscription _onLocationChanged;

  late final StreamController<Either<Failure, LatLng>>
      _onLocationChangedStreamController;
  final ILocationProvider provider;

  @override
  Future<Either<Failure, LatLng>> currentLocation() async {
    try {
      final result = await provider.location;
      return Right(result);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Stream<Either<Failure, LatLng>> get onLocationChanged =>
      _onLocationChangedStreamController.stream;

  @override
  Future<void> requestEnable() async {
    if (await provider.isEnabled) return;
    await provider.requestEnable();
  }
}
