import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class GeoDataPage extends StatelessWidget {
  const GeoDataPage({
    Key? key,
  }) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('GeoDataList'),
      title: 'Datos Georeferenciados',
      child: GeoDataPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
