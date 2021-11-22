import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/widgets.dart';

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
        //TODO: OPTION TO NAVEGATE TO CATEGORIES
        const Divider(
          height: 16,
          thickness: 1,
        ),
        Text(
          'Configuración de los tipos',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 5),
        Text(
          'Selección Statica (StaticSelection)', //TODO: NAVIGATE TO TYPE STATIC SELECTION LIST
          style: Theme.of(context).textTheme.headline6,
        ),
        const Divider(
          height: 16,
          thickness: 1,
        ),
        Text(
          'Configuración del Mapa',
          style: Theme.of(context).textTheme.headline4,
        ),
        Flexible(
          child: BlocProvider<MapConfigurationFormBloc>(
            create: (context) => getIt<MapConfigurationFormBloc>(),
            child: const SourceOptionsSectionWidget(),
          ),
        ),
        const Divider(
          height: 16,
          thickness: 1,
        ),
      ],
    );
  }
}
