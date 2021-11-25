import 'dart:developer';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/file_byte_converter.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';
import 'package:image_picker/image_picker.dart';

class MediaImageFieldInputWidget extends FieldInputWidget {
  const MediaImageFieldInputWidget({
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
    final Uint8List? imageBytes =
        fieldValue.value != null ? getFileBytes(fieldValue.value) : null;
    return ListTile(
      title: Text(fieldValue.value != null ? '[Imagen]' : ''),
      subtitle: Text(column.name),
      leading: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.transparent,
        child: imageBytes != null
            ? ClipRRect(
                key: Key(column.name),
                borderRadius: BorderRadius.circular(100),
                child: Image.memory(
                  imageBytes,
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

Future<Uint8List?> _imgFromCamera() async {
  final XFile? image = await ImagePicker().pickImage(
    source: ImageSource.camera,
    imageQuality: 10,
  );
  return await image?.readAsBytes();
}

Future<Uint8List?> _imgFromGallery() async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.image,
    withData: true,
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
