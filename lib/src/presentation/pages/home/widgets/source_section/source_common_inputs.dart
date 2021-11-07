import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';

class UrlTemplateInput extends StatelessWidget {
  const UrlTemplateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IMapSourceFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.urlTemplate,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value ?? ''),
        labelText: 'URL plantilla',
        errorText: state.error,
        onChanged: (value) => form.urlTemplate.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class SubdomainsInput extends StatelessWidget {
  const SubdomainsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AditionalOptionsInput extends StatelessWidget {
  const AditionalOptionsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class WMSFormatInput extends StatelessWidget {
  const WMSFormatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IMapSourceFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.wmsFormat,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value ?? ''),
        labelText: 'Formato (WMS)',
        errorText: state.error,
        hintText: 'ej: image/png',
        onChanged: (value) => form.wmsFormat.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class WMSLayersInput extends StatelessWidget {
  const WMSLayersInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class WMSBaseUrlInput extends StatelessWidget {
  const WMSBaseUrlInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IMapSourceFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.wmsBaseUrl,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value ?? ''),
        labelText: 'URL base (WMS)',
        errorText: state.error,
        onChanged: (value) => form.wmsBaseUrl.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class WMSOtherParamsInput extends StatelessWidget {
  const WMSOtherParamsInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _StringListInputWidget extends StatefulWidget {
  const _StringListInputWidget({
    Key? key,
    required this.labelTextInput,
    required this.labelListValue,
    required this.listValue,
    required this.onRemoved,
    required this.onAdded,
    required this.onCleared,
  }) : super(key: key);

  final String labelTextInput;
  final String labelListValue;
  final List<String> listValue;
  final Function(String) onRemoved;
  final Function(String) onAdded;
  final Function() onCleared;

  @override
  State<_StringListInputWidget> createState() => _StringListInputWidgetState();
}

class _StringListInputWidgetState extends State<_StringListInputWidget> {
  late TextEditingController _inputController;

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextInputWidget(
              controller: _inputController,
              labelText: widget.labelTextInput,
            ),
            IconButton(
              onPressed: _inputController.text != ''
                  ? () => widget.onAdded(_inputController.text)
                  : null,
              icon: const Icon(Icons.add),
            )
          ],
        ),
        const SizedBox(height: 4),
        Text(
          widget.labelListValue,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 3,
          children: widget.listValue
              .map(
                (e) => Chip(
                  label: Text(e),
                  onDeleted: () => widget.onRemoved(e),
                  padding: const EdgeInsets.all(3),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
