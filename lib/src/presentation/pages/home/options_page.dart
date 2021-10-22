import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('Options'),
      title: 'Opciones',
      child: OptionsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const _OptionsInternalPage();
  }
}

class _OptionsInternalPage extends StatelessWidget {
  const _OptionsInternalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Row(
          children: const [
            Flexible(child: _LatitudeInput()),
            SizedBox(width: 8),
            Flexible(child: _LongitudeInput()),
          ],
        ),
      ],
    );
  }
}
