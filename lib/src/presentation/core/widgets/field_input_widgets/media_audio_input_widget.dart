import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/file_byte_converter.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class MediaAudioFieldInputWidget extends FieldInputWidget {
  const MediaAudioFieldInputWidget({
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
      title: Text(fieldValue.value != null ? '[Sonido]' : ''),
      subtitle: Text(column.name),
      leading: CircleAvatar(
        radius: 50,
        backgroundColor: Theme.of(context).primaryColor,
        child: Container(
          decoration: BoxDecoration(
            color: fileBytes != null ? Colors.transparent : Colors.grey[200],
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
        final result = await _showPicker(context);
        if (result != null && fieldValue.value != result) {
          onChanged(result);
        }
      },
    );
  }
}

Future<Uint8List?> _imgFromMicrofone() async {
  //TODO: HEERREE

  // final XFile? image = await ImagePicker().pickImage(
  //   source: ImageSource.camera,
  //   imageQuality: 10,
  // );
  // return await image?.readAsBytes();
}

Future<Uint8List?> _imgFromFiles() async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.audio,
    withData: true,
    // allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if (result?.files.isNotEmpty ?? false) {
    return result!.files.first.bytes;
  }
}

Future<Uint8List?> _showPicker(BuildContext context) async {
  return showModalBottomSheet<Uint8List?>(
    context: context,
    builder: (BuildContext bc) {
      return SafeArea(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.file_present),
              title: const Text('Notas Almacenadas'),
              onTap: () async {
                await _imgFromFiles()
                    .then((value) => Navigator.of(context).pop(value));
              },
            ),

            //TODO: DO THIS WITH MICROPHONE
            //
            // ListTile(
            //   leading: const Icon(Icons.mic),
            //   title: const Text('Grabar Sonido'),
            //   onTap: () async {
            //     await _imgFromMicrofone()
            //         .then((value) => Navigator.of(context).pop(value));
            //   },
            // ),
          ],
        ),
      );
    },
  );
}
