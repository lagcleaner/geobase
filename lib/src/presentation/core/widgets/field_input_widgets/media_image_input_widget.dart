import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/file_utilis.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';
import 'package:image_picker/image_picker.dart';

class MediaImageFieldInputWidget extends FieldInputWidget {
  const MediaImageFieldInputWidget({
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
            backgroundColor: Colors.transparent,
            child: state.value.value != null
                ? ClipRRect(
                    key: Key(column.name),
                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(
                      File(state.value.value.toString()),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(45),
                    ),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
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

Future<String?> _imgFromCamera() async {
  final XFile? result = await ImagePicker().pickImage(
    source: ImageSource.camera,
    imageQuality: 10,
  );
  if (result?.path != null) {
    final file = await saveFile(
      File(result!.path),
    );
    return file?.path;
  }
  return null;
}

Future<String?> _imgFromGallery() async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.image,
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
              leading: const Icon(Icons.photo_library),
              title: const Text('Galería'),
              onTap: () async {
                await _imgFromGallery()
                    .then((value) => Navigator.of(context).pop(value));
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('Cámara'),
              onTap: () async {
                await _imgFromCamera()
                    .then((value) => Navigator.of(context).pop(value));
              },
            ),
          ],
        ),
      );
    },
  );
}
