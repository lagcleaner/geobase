import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/field_view_widgets/field_view_widget.dart';

class MediaAudioFieldView extends FieldViewWidget {
  const MediaAudioFieldView({
    Key? key,
    required FieldValueGetEntity fieldValue,
  }) : super(
          key: key,
          fieldValue: fieldValue,
        );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(fieldValue.value != null ? '[SOUND]' : ''),
      subtitle: Text(
        '${fieldValue.column.name} '
        '(${fieldValue.column.type.metaType}.${fieldValue.column.type.name})',
      ),
      onTap: () {
        //TODO: PLAY SOUND.
      },
    );
  }
}
