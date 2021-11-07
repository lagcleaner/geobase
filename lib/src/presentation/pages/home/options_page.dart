import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/source_section/source_section.dart';

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
          children: [
            const SizedBox(width: 8),
            Flexible(
              child: BlocProvider<MapSourceInputCubit>(
                create: (context) => getIt<MapSourceInputCubit>(),
                child: const SourceOptionsSectionWidget(),
              ),
            ),
            const Divider(height: 16),
            // Flexible(child: _LongitudeInput()),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
