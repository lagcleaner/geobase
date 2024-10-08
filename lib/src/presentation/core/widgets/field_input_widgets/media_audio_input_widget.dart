import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/file_utilis.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class MediaAudioFieldInputWidget extends FieldInputWidget {
  const MediaAudioFieldInputWidget({
    super.key,
    required super.column,
    required super.inputBloc,
  });

  @override
  Widget build(BuildContext context) {
    return LyInputBuilder<FieldValueEntity>(
      lyInput: inputBloc,
      builder: (context, state) {
        return ListTile(
          title: Text(
            state.value.value != null
                ? '${state.value.value.split('/').last}'
                : '',
          ),
          subtitle: Text(column.name),
          leading: CircleAvatar(
            radius: 50,
            backgroundColor: Theme.of(context).primaryColor,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(45),
              ),
              width: 80,
              height: 80,
              child: Icon(
                Icons.file_present_rounded,
                color: state.value.value != null
                    ? Colors.green[300]
                    : Colors.grey[800],
              ),
            ),
          ),
          trailing: state.error != null
              ? Icon(
                  Icons.info_outline_rounded,
                  color: Colors.red.withOpacity(0.5),
                )
              : null,
          onTap: () async {
            final result = await _showPicker(context);
            if (result != null && state.value.value != result) {
              inputBloc.dirty(state.value.copyWithValue(result));
            }
          },
        );
      },
    );
  }
}

Future<String?> _audioFromFiles() async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.audio,
    withData: true,
  );
  if ((result?.files.isNotEmpty ?? false) && result!.files.first.path != null) {
    final file = await saveFile(
      File(result.files.first.path!),
    );
    return file?.path;
  }
  return null;
}

Future<String?> _showPicker(BuildContext context) async {
  return showModalBottomSheet<String?>(
    context: context,
    builder: (BuildContext bc) {
      return SafeArea(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.file_present),
              title: const Text('Notas Almacenadas'),
              onTap: () async {
                await _audioFromFiles()
                    .then((value) => Navigator.of(context).pop(value));
              },
            ),

            //TODO: DO THIS WITH MICROPHONE
            //
            // ListTile(
            //   leading: const Icon(Icons.mic),
            //   title: const Text('Grabar Sonido'),
            //   onTap: () async {
            //     await _audioFromMicrofone(context)
            //         .then((value) => Navigator.of(context).pop(value));
            //   },
            // ),
          ],
        ),
      );
    },
  );
}

// Future<String?> _audioFromMicrofone(BuildContext context) async {
//   final audioPath = showDialog(
//     context: context,
//     builder: (context) => Dialog(
//       child: Padding(
//         padding: EdgeInsets.all(8),
//         child: SimpleRecorder,
//       ),
//     ),
//   );

//   return audioPath;
// }
