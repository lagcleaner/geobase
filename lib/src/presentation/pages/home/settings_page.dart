import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('Settings'),
      title: 'Configuraciones',
      child: SettingsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
