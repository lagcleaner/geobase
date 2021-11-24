import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class AutoremovableListFieldBlocInput extends StatelessWidget {
  const AutoremovableListFieldBlocInput({
    Key? key,
    required this.bloc,
    required this.index,
    required this.label,
  }) : super(key: key);

  final TextFieldBloc bloc;
  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFieldBlocBuilder(
      textFieldBloc: bloc,
      // padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: TextFieldDecorations.decoration(
        labelText: label,
      ),
    );
  }
}
