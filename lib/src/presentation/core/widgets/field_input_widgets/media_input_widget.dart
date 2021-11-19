import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widgets_reflect.dart';

class MediaFieldValueInputWidget extends FieldValueInputWidget {
  const MediaFieldValueInputWidget({
    Key? key,
    required FieldValueGetEntity fieldValue,
    String? errorText,
    required ValueChanged onChanged,
  }) : super(
          key: key,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: key,
      title: Text(fieldValue.value != null ? '[File]' : ''),
      subtitle: Text(fieldValue.column.name),
      trailing: errorText != null
          ? Icon(
              Icons.info_outline_rounded,
              color: Colors.red.withOpacity(0.5),
            )
          : null,
      onTap: () async {
        //TODO: ALL OF THIS
        // final result = await showFilePicker(
        //   context: context,
        //   current: value,
        // );
        // // if (result != null)
        //TODO: WHAT EXPLAINS https://stackoverflow.com/questions/54123131/how-to-import-file-from-local-storage-into-db-in-flutter
        onChanged?.call('');
      },
    );
  }
}
