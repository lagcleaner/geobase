import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class GeoDataEditPage extends StatelessWidget {
  const GeoDataEditPage({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  static BeamPage getPage(BuildContext context, int geodataId) {
    return BeamPage(
      key: const ValueKey('GeoDataEdit'),
      title: 'Editar Información del punto',
      child: GeoDataEditPage(
        geodataId: geodataId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
