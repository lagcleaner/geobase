import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/field_view_widgets/field_view_widget.dart';
import 'package:open_file/open_file.dart';

class MediaImageFieldView extends FieldViewWidget {
  const MediaImageFieldView({
    Key? key,
    required FieldValueGetEntity fieldValue,
  }) : super(
          key: key,
          fieldValue: fieldValue,
        );

  @override
  Widget build(BuildContext context) {
    // final Uint8List? imageBytes =
    //     fieldValue.value != null ? getFileBytes(fieldValue.value) : null;
    return ListTile(
      title: Text(
        fieldValue.value != null ? '[${fieldValue.value.split('/').last}]' : '',
      ),
      subtitle: Text(
        '${fieldValue.column.name} '
        '(${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
      ),
      //TODO: SAVE FILE

      // trailing: fieldValue.value != null
      //     ? Icon(
      //         Icons.file_download,
      //         color: Colors.green.withOpacity(0.5),
      //       )
      //     : null,
      onTap: () async {
        if ((fieldValue.value is String?) && fieldValue.value != null) {
          final outputFile = await OpenFile.open(fieldValue.value as String);
        }
      },
    );
  }
}
