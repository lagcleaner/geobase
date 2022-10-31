import 'package:flutter/material.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/utils.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    this.controller,
    this.onChanged,
    this.onTap,
    this.errorText,
    this.hintText,
    this.onSubmitted,
    this.labelText,
    this.focusNode,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController? controller;
  final TextInputType keyboardType;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      keyboardType: keyboardType,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      focusNode: focusNode,
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText,
      ),
    );
  }
}
