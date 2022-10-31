import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.child,
    this.text,
    required this.onPressed,
    this.color,
    this.side,
  }) : assert(child != null || text != null);

  const MainButton.danger({
    super.key,
    this.child,
    this.text,
    required this.onPressed,
    this.side,
  })  : color = const Color(0xFFE53935),
        assert(child != null || text != null);

  const MainButton.loading({super.key})
      : onPressed = null,
        text = null,
        color = null,
        child = const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 2,
        ),
        side = null;

  final Widget? child;
  final String? text;
  final Function()? onPressed;
  final Color? color;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    final textStyleButton = Theme.of(context).primaryTextTheme.button;
    return ConstrainedBox(
      constraints: BoxConstraints.tightForFinite(
        height: 50,
        width: MediaQuery.of(context).size.width,
      ),
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).primaryColor,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: side ?? BorderSide.none,
          ),
        ),
        child: child ??
            Text(
              text!,
              style: textStyleButton?.copyWith(
                fontSize: (textStyleButton.fontSize ?? 14) + 2,
                backgroundColor: Colors.transparent,
              ),
            ),
      ),
    );
  }
}
