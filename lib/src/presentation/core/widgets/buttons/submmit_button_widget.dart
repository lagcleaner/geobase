import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/presentation/core/widgets/buttons/main_button_widget.dart';

class SubmmitButton<T extends FormBloc> extends StatelessWidget {
  const SubmmitButton({required this.label}) : super();

  final String label;

  @override
  Widget build(BuildContext context) {
    return FormBlocBuilder<T>(
      onValid: () => MainButton(
        onPressed: context.read<T>().submit,
        text: label,
      ),
      onPure: () => MainButton(
        onPressed: context.read<T>().submit,
        text: label,
      ),
      onLoading: () => const MainButton.loading(),
      orElse: () => MainButton(
        onPressed: null,
        text: label,
      ),
    );
  }
}
