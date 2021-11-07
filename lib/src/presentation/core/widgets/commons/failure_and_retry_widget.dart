import 'package:flutter/material.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class FailureAndRetryWidget extends StatelessWidget {
  const FailureAndRetryWidget({
    Key? key,
    required this.errorText,
    required this.onPressed,
  }) : super(key: key);

  final String errorText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const Text("Ha ocurrido un error :'("),
          Text(errorText),
          const SizedBox(height: 16),
          MainButton(
            text: 'Reintentar',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
