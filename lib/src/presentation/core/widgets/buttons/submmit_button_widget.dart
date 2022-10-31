import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/presentation/core/widgets/buttons/main_button_widget.dart';

class SubmmitButton<T extends LyForm> extends StatelessWidget {
  const SubmmitButton({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return LyFormBuilder<T>(
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
