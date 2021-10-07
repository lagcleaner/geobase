import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

class CategoryEditPage extends StatelessWidget {
  const CategoryEditPage({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int categoryId;

  static BeamPage getPage(BuildContext context, int categoryId) {
    return BeamPage(
      key: const ValueKey('CategoryEdit'),
      title: 'Editar Categoría',
      child: CategoryEditPage(
        categoryId: categoryId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
