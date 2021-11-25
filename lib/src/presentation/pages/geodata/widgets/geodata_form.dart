import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';

class GeodataForm<T extends IGeodataFormBloc> extends StatelessWidget {
  const GeodataForm({
    Key? key,
    required this.submmitButtonText,
  }) : super(key: key);

  final String submmitButtonText;

  @override
  Widget build(BuildContext context) {
    final T formBloc = context.watch<T>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: _Inputs<T>(formBloc: formBloc)),
        SubmmitButton<T>(label: submmitButtonText),
      ],
    );
  }
}

class _Inputs<T extends IGeodataFormBloc> extends StatelessWidget {
  const _Inputs({
    Key? key,
    required this.formBloc,
  }) : super(key: key);

  final T formBloc;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Flexible(child: _LatitudeInput<T>()),
              const SizedBox(width: 8),
              Flexible(child: _LongitudeInput<T>()),
            ],
          ),
          const Divider(height: 10),
          if (formBloc.fieldValues.isNotEmpty)
            ...formBloc.fieldValues.entries
                .map(
                  (e) => [
                    Flexible(
                      child: FieldRenderResolver.getInputWidget(e.key, e.value),
                    ),
                    const SizedBox(height: 8),
                  ],
                )
                .reduce((value, element) => value..addAll(element)),
        ],
      ),
    );
  }
}

class _LatitudeInput<T extends IGeodataFormBloc> extends StatefulWidget {
  const _LatitudeInput({Key? key}) : super(key: key);

  @override
  State<_LatitudeInput<T>> createState() => _LatitudeInputState<T>();
}

class _LatitudeInputState<T extends IGeodataFormBloc>
    extends State<_LatitudeInput<T>> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<T>();
    return InputBlocBuilder<String>(
      bloc: formBloc.latitude,
      builder: (context, state) => TextInputWidget(
        controller: _controller..setValue(state.value),
        labelText: 'Latitud*',
        errorText: state.error,
        onChanged: (value) => formBloc.latitude.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _LongitudeInput<T extends IGeodataFormBloc> extends StatefulWidget {
  const _LongitudeInput({Key? key}) : super(key: key);

  @override
  State<_LongitudeInput<T>> createState() => _LongitudeInputState<T>();
}

class _LongitudeInputState<T extends IGeodataFormBloc>
    extends State<_LongitudeInput<T>> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<T>();
    return InputBlocBuilder<String>(
      bloc: formBloc.longitude,
      builder: (context, state) => TextInputWidget(
        controller: _controller..setValue(state.value),
        labelText: 'Longitud*',
        errorText: state.error,
        onChanged: (value) => formBloc.longitude.dirty(
          value.trim(),
        ),
      ),
    );
  }
}
