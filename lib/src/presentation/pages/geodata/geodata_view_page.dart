import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class GeoDataViewPage extends StatelessWidget {
  const GeoDataViewPage({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  static BeamPage getPage(BuildContext context, int geodataId) {
    return BeamPage(
      key: const ValueKey('GeoDataDetails'),
      title: 'Detalles del Punto',
      child: GeoDataViewPage(
        geodataId: geodataId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
