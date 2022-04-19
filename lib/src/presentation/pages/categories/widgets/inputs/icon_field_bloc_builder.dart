import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/pages/categories/misc/functions.dart';

class IconFieldBlocBuilder extends StatelessWidget {
  const IconFieldBlocBuilder({
    Key? key,
    required this.iconFieldBloc,
    // ignore: tighten_type_of_initializing_formals
    this.enableOnlyWhenFormBlocCanSubmit = false,
    this.isEnabled = true,
    this.errorBuilder,
    this.padding,
    this.decoration = const InputDecoration(),
    this.textAlign = TextAlign.start,
    this.initialIconName,
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
  final InputFieldBloc<String?, dynamic> iconFieldBloc;

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

  final String? initialIconName;
  final Locale? locale;
  final TextDirection? textDirection;
  final TransitionBuilder? pickerBuilder;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;

  final bool showClearIcon;

  final Icon? clearIcon;

  @override
  Widget build(BuildContext context) {
    return IconFieldBlocBuilderBase(
      iconFieldBloc: iconFieldBloc,
      decoration: decoration,
      enableOnlyWhenFormBlocCanSubmit: enableOnlyWhenFormBlocCanSubmit,
      errorBuilder: errorBuilder,
      isEnabled: isEnabled,
      padding: padding,
      initialIconName: initialIconName,
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

class IconFieldBlocBuilderBase extends StatefulWidget {
  const IconFieldBlocBuilderBase({
    Key? key,
    required this.iconFieldBloc,
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
    this.initialIconName,
    this.locale,
    this.textDirection,
    this.builder,
    required this.useRootNavigator,
    this.routeSettings,
  }) : super(key: key);

  /// {@macro flutter_form_bloc.FieldBlocBuilder.fieldBloc}
  final InputFieldBloc<String?, dynamic> iconFieldBloc;

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

  final String? initialIconName;
  final Locale? locale;
  final TextDirection? textDirection;
  final TransitionBuilder? builder;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;

  @override
  State<IconFieldBlocBuilderBase> createState() =>
      _IconFieldBlocBuilderBaseState();
}

class _IconFieldBlocBuilderBaseState extends State<IconFieldBlocBuilderBase> {
  final FocusNode _focusNode = FocusNode();

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

  Future<void> _showPicker(BuildContext context) async {
    FocusScope.of(context).unfocus();

    final IconData? iconPicked = await FlutterIconPicker.showIconPicker(
      context,
      iconPackModes: [IconPack.material],
      title: const Text('Seleccione un Icono'),
      closeChild: const Text('Cancelar'),
      searchHintText: 'Buscar por nombre',
    );

    //  showDialog<Map<String, dynamic>?>(
    //   context: context,
    //   useRootNavigator: widget.useRootNavigator,
    //   useSafeArea: true,
    //   builder: (BuildContext context) => const MyIconPickerDialog(
    //     title: 'Seleccione un Icono',
    //     iconCollection: MaterialIcons.mIcons,
    //     cancelBtn: 'Cancelar',
    //     searchHint: 'Buscar por Nombre',
    //   ),
    // );
    // final result = iconPicked?['name'] as String?;
    final result = iconPicked != null ? IconCodeUtils.encode(iconPicked) : null;
    if (result != null) {
      fieldBlocBuilderOnChange<String>(
        isEnabled: widget.isEnabled ?? true,
        nextFocusNode: widget.nextFocusNode,
        onChanged: (value) {
          widget.iconFieldBloc.updateValue(value);
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
        fieldBloc: widget.iconFieldBloc,
        animate: widget.animateWhenCanShow,
        builder: (_, __) {
          return BlocBuilder<InputFieldBloc<String?, dynamic>,
              InputFieldBlocState<String?, dynamic>>(
            bloc: widget.iconFieldBloc,
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
                child: Padding(
                  padding:
                      widget.padding ?? const EdgeInsets.symmetric(vertical: 7),
                  child: InputDecorator(
                    decoration:
                        _buildDecoration(context, state, isEnabled).copyWith(
                      prefixIcon: state.value != null
                          ? Icon(IconCodeUtils.decode(state.value))
                          : null,
                    ),
                    isEmpty: state.value == null &&
                        widget.decoration.hintText == null,
                    child: child,
                  ),
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
    InputFieldBlocState<String?, dynamic>? state,
    bool isEnabled,
  ) {
    final decoration = widget.decoration.copyWith(
      enabled: isEnabled,
      errorText: getErrorText(
        context: context,
        errorBuilder: widget.errorBuilder,
        fieldBlocState: state,
        fieldBloc: widget.iconFieldBloc,
      ),
      suffixIcon: widget.decoration.suffixIcon ??
          (widget.showClearIcon
              ? AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: widget.iconFieldBloc.state.value == null ? 0.0 : 1.0,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: widget.iconFieldBloc.state.value == null
                        ? null
                        : widget.iconFieldBloc.clear,
                    child: widget.clearIcon ?? const Icon(Icons.clear),
                  ),
                )
              : null),
    );

    return decoration;
  }

  String _tryFormat(String? value) {
    try {
      final res = IconCodeUtils.decode(value);
      return res?.toString() ?? '';
    } catch (e) {
      return value.toString();
    }
  }
}
