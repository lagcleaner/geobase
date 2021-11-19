import 'package:flutter/widgets.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/base_input_widget.dart';

class LocalFileInputWidget extends BaseInputWidget {
  const LocalFileInputWidget({
    Key? key,
    required String name,
    required FieldValueEntity fieldValue,
    String? errorText,
    ValueChanged? onChanged,
  }) : super(
          key: key,
          name: name,
          fieldValue: fieldValue,
          onChanged: onChanged,
          errorText: errorText,
        );

  @override
  Widget build(BuildContext context) {
    final value = fieldValue.getValueOrNull<String>();
    return ListTile(
      key: key,
      title: Text(value != null ? '[File]' : ''),
      subtitle: Text(name),
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
        onChanged?.call('mocked local file url');
      },
    );
  }
}
