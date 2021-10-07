import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class CategoryNewPage extends StatelessWidget {
  const CategoryNewPage({
    Key? key,
  }) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('CategoryNew'),
      title: 'Nueva Categoría',
      child: CategoryNewPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
