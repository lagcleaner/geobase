import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/presentation/core/app.dart';

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
    return WillPopScope(
      onWillPop: () async {
        context.beamToNamed('/map');
        return false;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: const Text('Opciones'),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline6 = Theme.of(context).textTheme.headline6;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              'Categorías',
              style: headline6,
            ),
            trailing: const Icon(Icons.category),
            onTap: () => context.beamToNamed('/categories'),
          ),
          ExpansionTile(
            title: Text(
              'Tipos',
              style: headline6,
            ),
            children: [
              ListTile(
                title: Text(
                  'Selección Stática (StaticSelection)',
                  style: headline6?.copyWith(
                    color: headline6.color?.withOpacity(0.7),
                  ),
                ),
                trailing: const Icon(Icons.account_tree_rounded),
                onTap: () => context.beamToNamed('/staticselection'),
              ),
            ],
          ),
          ListTile(
            title: Text(
              'Servidor de Mapas',
              style: headline6,
            ),
            trailing: const Icon(Icons.map_outlined),
            onTap: () => context.beamToNamed('/options/mapserver'),
          ),
        ],
      ),
    );
  }
}
