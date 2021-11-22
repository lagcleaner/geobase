import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/src/domain/entities/entities.dart';

class ColumnFieldBloc extends GroupFieldBloc {
  ColumnFieldBloc({
    required this.columnName,
    required this.type,
  }) : super([columnName, type]);

  final TextFieldBloc columnName;
  final SelectFieldBloc<FieldTypeGetEntity, dynamic> type;
}
