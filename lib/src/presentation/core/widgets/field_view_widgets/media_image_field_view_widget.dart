import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/file_byte_converter.dart';
import 'package:geobase/src/presentation/core/widgets/field_view_widgets/field_view_widget.dart';

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
    final Uint8List? imageBytes =
        fieldValue.value != null ? getFileBytes(fieldValue.value) : null;
    return ListTile(
      title: Text(fieldValue.value != null ? '[Imagen]' : ''),
      subtitle: Text(
        '${fieldValue.column.name} '
        '(${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
      ),
      trailing: fieldValue.value != null
          ? Icon(
              Icons.file_download,
              color: Colors.green.withOpacity(0.5),
            )
          : null,
      onTap: () async {
        //TODO: SAVE FILE
        // String? outputFile = await FilePicker.platform.saveFile(
        //   dialogTitle: 'Please select an output file:',
        //   fileName: 'output-file.pdf',
        // );
      },
    );
  }
}
