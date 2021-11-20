import 'package:flutter/material.dart';

import 'package:geobase/src/domain/entities/column_get_entity.dart';

class NotImplementedListTile extends StatelessWidget {
  const NotImplementedListTile({
    Key? key,
    required this.column,
  }) : super(key: key);

  final ColumnGetEntity column;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: const Text(
        'Elemento no implementado.(Contacte con su administrador)',
      ),
      subtitle: Text(
        '${column.name} (${column.type.metaType}.${column.type.name})',
      ),
    );
  }
}
