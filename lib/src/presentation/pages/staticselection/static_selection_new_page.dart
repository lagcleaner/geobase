import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class StaticSelectionNewPage extends StatelessWidget {
  const StaticSelectionNewPage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('StaticSelectionNew'),
      title: 'Nueva Selección Estática',
      child: StaticSelectionNewPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const _StaticSelectionNewInternalPage();
  }
}

class _StaticSelectionNewInternalPage extends StatelessWidget {
  const _StaticSelectionNewInternalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text('Nueva Selección Estática'),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
