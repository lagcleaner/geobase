import 'package:flutter/material.dart';

import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class DropdownButtonFormFieldWidget<T> extends StatelessWidget {
  const DropdownButtonFormFieldWidget({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.labelText,
    this.errorText,
    this.value,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;
  final String labelText;
  final String? errorText;
  final T? value;
  final IconData? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      items: items,
      value: value,
      onChanged: onChanged,
      icon: const SizedBox(),
      decoration: TextFieldDecorations.decoration(
        suffixIcon:
            suffixIcon ?? const Icon(Icons.arrow_drop_down_circle_outlined),
        prefixIcon: prefixIcon,
        labelText: labelText,
        errorText: errorText,
      ),
    );
  }
}
