import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/field_view_widgets/field_view_widget.dart';

class MediaFieldView extends FieldViewWidget {
  const MediaFieldView({
    Key? key,
    required FieldValueGetEntity fieldValue,
  }) : super(
          key: key,
          fieldValue: fieldValue,
        );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(fieldValue.value != null ? '[FILE]' : ''),
      subtitle: Text(
        '${fieldValue.column.name} '
        '(${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
      ),
      trailing: const Icon(Icons.file_download),
      onTap: () {
        //TODO: DOWNLOAD THE FILE TO LOCAL(WRITE IN DOWNLOADS)
      },
    );
  }
}
