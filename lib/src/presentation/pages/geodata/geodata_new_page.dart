import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:latlong2/latlong.dart';

class GeoDataNewPage extends StatelessWidget {
  const GeoDataNewPage({
    Key? key,
    this.ubication,
  }) : super(key: key);

  final LatLng? ubication;

  static BeamPage getPage(
    BuildContext context,
    LatLng? latLng,
  ) {
    // navigate from map with latLng, or from geodata list to manually enter the latLng
    return BeamPage(
      key: const ValueKey('GeoDataNew'),
      title: 'Nuevo punto georeferenciado',
      child: GeoDataNewPage(
        ubication: latLng,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
