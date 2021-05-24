import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

import '../../misc/cached_tile_provider.dart';

class GeoBaseMap extends StatelessWidget {
  const GeoBaseMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        controller: MapControllerImpl(),
        bounds: LatLngBounds(LatLng(20.11, -78.35), LatLng(25.0, -86.34)),
        boundsOptions: const FitBoundsOptions(padding: EdgeInsets.all(8.0)),
        center: LatLng(23.11, -82.35),
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c'],
          tileProvider: const CachedTileProvider(),
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 50.0,
              height: 50.0,
              point: LatLng(23.11, -82.35),
              builder: (ctx) => Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
