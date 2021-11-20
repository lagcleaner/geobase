import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';

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
    return ListTile(
      key: key,
      title: Text(fieldValue.value != null ? '[File]' : ''),
      subtitle: Text(column.name),
      trailing: errorText != null
          ? Icon(
              Icons.info_outline_rounded,
              color: Colors.red.withOpacity(0.5),
            )
          : null,
      onLongPress: () async {
        //TODO: ALL OF THIS
        // final result = await showPhotoPicker(
        //   context: context,
        //   current: value,
        // );
        // // if (result != null)
        onChanged('');
      },
      onTap: () async {
        //show a preview
      },
    );
  }
}
