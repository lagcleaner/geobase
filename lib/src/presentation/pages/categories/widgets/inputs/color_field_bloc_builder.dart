import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/src/presentation/pages/categories/misc/functions.dart';

class ColorFieldBlocBuilder extends StatelessWidget {
  const ColorFieldBlocBuilder({
    Key? key,
    required this.colorFieldBloc,
    this.enableOnlyWhenFormBlocCanSubmit = false,
    this.isEnabled = true,
    this.errorBuilder,
    this.padding,
    this.decoration = const InputDecoration(),
    this.textAlign = TextAlign.start,
    this.initialColor,
    this.locale,
    this.textDirection,
    this.pickerBuilder,
    this.useRootNavigator = false,
    this.routeSettings,
    this.animateWhenCanShow = true,
    this.showClearIcon = true,
    this.clearIcon,
    this.nextFocusNode,
    this.focusNode,
    this.style,
  })  : assert(enableOnlyWhenFormBlocCanSubmit != null),
        super(key: key);

  /// {@macro flutter_form_bloc.FieldBlocBuilder.fieldBloc}
  final InputFieldBloc<Color?, dynamic> colorFieldBloc;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.errorBuilder}
  final FieldBlocErrorBuilder? errorBuilder;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.enableOnlyWhenFormBlocCanSubmit}
  final bool? enableOnlyWhenFormBlocCanSubmit;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.isEnabled}
  final bool isEnabled;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.padding}
  final EdgeInsetsGeometry? padding;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.decoration}
  final InputDecoration decoration;

  /// {@macro  flutter_form_bloc.FieldBlocBuilder.animateWhenCanShow}
  final bool animateWhenCanShow;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.nextFocusNode}
  final FocusNode? nextFocusNode;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.textAlign}
  final TextAlign textAlign;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.style}
  final TextStyle? style;

  final Color? initialColor;
  final Locale? locale;
  final TextDirection? textDirection;
  final TransitionBuilder? pickerBuilder;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;

  final bool showClearIcon;

  final Icon? clearIcon;

  @override
  Widget build(BuildContext context) {
    return ColorFieldBlocBuilderBase(
      colorFieldBloc: colorFieldBloc,
      decoration: decoration,
      enableOnlyWhenFormBlocCanSubmit: enableOnlyWhenFormBlocCanSubmit,
      errorBuilder: errorBuilder,
      isEnabled: isEnabled,
      padding: padding,
      initialColor: initialColor,
      builder: pickerBuilder,
      locale: locale,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      textDirection: textDirection,
      animateWhenCanShow: animateWhenCanShow,
      clearIcon: clearIcon,
      showClearIcon: showClearIcon,
      nextFocusNode: nextFocusNode,
      focusNode: focusNode,
      textAlign: textAlign,
      style: style,
    );
  }
}

class ColorFieldBlocBuilderBase extends StatefulWidget {
  const ColorFieldBlocBuilderBase({
    Key? key,
    required this.colorFieldBloc,
    this.errorBuilder,
    this.enableOnlyWhenFormBlocCanSubmit,
    this.isEnabled,
    this.padding,
    required this.decoration,
    required this.animateWhenCanShow,
    this.nextFocusNode,
    this.focusNode,
    required this.textAlign,
    this.style,
    required this.showClearIcon,
    this.clearIcon,
    this.initialColor,
    this.locale,
    this.textDirection,
    this.builder,
    required this.useRootNavigator,
    this.routeSettings,
  }) : super(key: key);

  /// {@macro flutter_form_bloc.FieldBlocBuilder.fieldBloc}
  final InputFieldBloc<Color?, dynamic> colorFieldBloc;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.errorBuilder}
  final FieldBlocErrorBuilder? errorBuilder;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.enableOnlyWhenFormBlocCanSubmit}
  final bool? enableOnlyWhenFormBlocCanSubmit;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.isEnabled}
  final bool? isEnabled;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.padding}
  final EdgeInsetsGeometry? padding;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.decoration}
  final InputDecoration decoration;

  /// {@macro  flutter_form_bloc.FieldBlocBuilder.animateWhenCanShow}
  final bool animateWhenCanShow;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.nextFocusNode}
  final FocusNode? nextFocusNode;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.textAlign}
  final TextAlign textAlign;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.style}
  final TextStyle? style;

  final bool showClearIcon;

  final Icon? clearIcon;

  final Color? initialColor;
  final Locale? locale;
  final TextDirection? textDirection;
  final TransitionBuilder? builder;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;

  @override
  State<ColorFieldBlocBuilderBase> createState() =>
      _ColorFieldBlocBuilderBaseState();
}

class _ColorFieldBlocBuilderBaseState extends State<ColorFieldBlocBuilderBase> {
  FocusNode _focusNode = FocusNode();

  FocusNode get _effectiveFocusNode => widget.focusNode ?? _focusNode;

  @override
  void initState() {
    _effectiveFocusNode.addListener(_onFocusRequest);
    super.initState();
  }

  @override
  void dispose() {
    _effectiveFocusNode.removeListener(_onFocusRequest);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusRequest() {
    if (_effectiveFocusNode.hasFocus) {
      _showPicker(context);
    }
  }

  void _showPicker(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    final Color? result = await showDialog(
      context: context,
      useRootNavigator: widget.useRootNavigator,
      builder: (BuildContext context) => AlertDialog(
        titlePadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: widget.colorFieldBloc.value ?? Colors.white,
            onColorChanged: (newColor) => Navigator.pop(context, newColor),
            pickerAreaHeightPercent: 0.7,
            displayThumbColor: true,
            pickerAreaBorderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
    if (result != null) {
      fieldBlocBuilderOnChange<Color>(
        isEnabled: widget.isEnabled ?? true,
        nextFocusNode: widget.nextFocusNode,
        onChanged: (value) {
          widget.colorFieldBloc.updateValue(value);
          // Used for hide keyboard
          // FocusScope.of(context).requestFocus(FocusNode());
        },
      )!(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _effectiveFocusNode,
      child: CanShowFieldBlocBuilder(
        fieldBloc: widget.colorFieldBloc,
        animate: widget.animateWhenCanShow,
        builder: (_, __) {
          return BlocBuilder<InputFieldBloc<Color?, dynamic>,
              InputFieldBlocState<Color?, dynamic>>(
            bloc: widget.colorFieldBloc,
            builder: (context, state) {
              final isEnabled = fieldBlocIsEnabled(
                isEnabled: widget.isEnabled ?? true,
                enableOnlyWhenFormBlocCanSubmit:
                    widget.enableOnlyWhenFormBlocCanSubmit,
                fieldBlocState: state,
              );
              Widget child;

              if (state.value == null && widget.decoration.hintText != null) {
                child = Text(
                  widget.decoration.hintText!,
                  style: widget.style == null
                      ? widget.decoration.hintStyle
                      : isEnabled
                          ? widget.style
                          : widget.style!
                              .copyWith(color: Theme.of(context).disabledColor),
                  overflow: TextOverflow.ellipsis,
                  maxLines: widget.decoration.hintMaxLines,
                );
              } else {
                child = Text(
                  state.value != null ? _tryFormat(state.value) : '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  textAlign: widget.textAlign,
                  style: widget.style == null
                      ? getDefaultTextStyle(
                          context: context,
                          isEnabled: isEnabled,
                        )
                      : isEnabled
                          ? widget.style
                          : widget.style!
                              .copyWith(color: Theme.of(context).disabledColor),
                );
              }

              return GestureDetector(
                onTap: !isEnabled ? null : () => _showPicker(context),
                child: InputDecorator(
                  decoration:
                      _buildDecoration(context, state, isEnabled).copyWith(
                    prefixIcon: state.value != null
                        ? Icon(
                            Icons.circle,
                            color: state.value,
                          )
                        : null,
                  ),
                  isEmpty:
                      state.value == null && widget.decoration.hintText == null,
                  child: child,
                ),
              );
            },
          );
        },
      ),
    );
  }

  InputDecoration _buildDecoration(
    BuildContext context,
    InputFieldBlocState<Color?, dynamic>? state,
    bool isEnabled,
  ) {
    final decoration = widget.decoration.copyWith(
      enabled: isEnabled,
      errorText: getErrorText(
        context: context,
        errorBuilder: widget.errorBuilder,
        fieldBlocState: state,
        fieldBloc: widget.colorFieldBloc,
      ),
      suffixIcon: widget.decoration.suffixIcon ??
          (widget.showClearIcon
              ? AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity:
                      widget.colorFieldBloc.state.value == null ? 0.0 : 1.0,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: widget.colorFieldBloc.state.value == null
                        ? null
                        : widget.colorFieldBloc.clear,
                    child: widget.clearIcon ?? const Icon(Icons.clear),
                  ),
                )
              : null),
    );

    return decoration;
  }

  String _tryFormat(Color? value) {
    return value.toString();
  }
}
