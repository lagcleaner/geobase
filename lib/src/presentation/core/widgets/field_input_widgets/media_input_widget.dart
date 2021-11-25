import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/file_byte_converter.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class MediaFieldInputWidget extends FieldInputWidget {
  const MediaFieldInputWidget({
    Key? key,
    required ColumnGetEntity column,
    required FieldValueEntity fieldValue,
    String? errorText,
    required ValueChanged onChanged,
  }) : super(
          key: key,
          column: column,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );

  @override
  Widget build(BuildContext context) {
    final Uint8List? fileBytes =
        fieldValue.value != null ? getFileBytes(fieldValue.value) : null;
    return ListTile(
      key: key,
      title: Text(
          fieldValue.value != null ? '[Archivo de tipo personalizado]' : ''),
      subtitle: Text(column.name),
      leading: CircleAvatar(
        radius: 50,
        backgroundColor: Theme.of(context).primaryColor,
        child: Container(
          decoration: BoxDecoration(
            color: fileBytes != null ? Colors.white : Colors.grey[200],
            borderRadius: BorderRadius.circular(45),
          ),
          width: 80,
          height: 80,
          child: Icon(
            Icons.file_present_rounded,
            color: fileBytes != null ? Colors.green[300] : Colors.grey[800],
          ),
        ),
      ),
      trailing: errorText != null
          ? Icon(
              Icons.info_outline_rounded,
              color: Colors.red.withOpacity(0.5),
            )
          : null,
      onTap: () async {
        final result = await _showPicker(
          (column.type.extradata?['extensions'] as List?)
              ?.map((e) => e as String)
              .toList(),
        );
        if (result != null && fieldValue.value != result) {
          onChanged(result);
        }
      },
    );
  }
}

Future<Uint8List?> _showPicker(List<String>? extensions) async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    withData: true,
    allowedExtensions: extensions,
  );
  if (result?.files.isNotEmpty ?? false) {
    return result!.files.first.bytes;
  }
}
