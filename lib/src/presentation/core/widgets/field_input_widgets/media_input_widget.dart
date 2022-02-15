import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/file_utilis.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class MediaFieldInputWidget extends FieldInputWidget {
  const MediaFieldInputWidget({
    Key? key,
    required ColumnGetEntity column,
    required InputBloc<FieldValueEntity> inputBloc,
  }) : super(
          key: key,
          column: column,
          inputBloc: inputBloc,
        );

  @override
  Widget build(BuildContext context) {
    return InputBlocBuilder<FieldValueEntity>(
      bloc: inputBloc,
      builder: (context, state) {
        return ListTile(
          key: key,
          title: Text(
            state.value.value != null
                ? '${state.value.value.split('/').last}'
                : '',
          ),
          subtitle: Text(column.name),
          leading: CircleAvatar(
            radius: 50,
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
            final result = await _showPicker(
              (column.type.extradata?['extensions'] as List?)
                  ?.map((e) => e as String)
                  .toList(),
            );
            if (result != null && state.value.value != result) {
              inputBloc.dirty(state.value.copyWithValue(result));
            }
          },
        );
      },
    );
  }
}

Future<String?> _showPicker(List<String>? extensions) async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    withData: true,
    allowedExtensions: extensions,
  );
  if ((result?.files.isNotEmpty ?? false) && result!.files.first.path != null) {
    final file = await saveFile(
      File(result.files.first.path!),
    );
    return file?.path;
  }
}
