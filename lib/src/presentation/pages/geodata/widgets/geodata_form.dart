import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/src/presentation/core/utils/utils.dart';
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
    final IGeodataFormBloc formBloc = context.watch<T>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Row(
          children: const [
            Flexible(child: _LatitudeInput()),
            SizedBox(width: 8),
            Flexible(child: _LongitudeInput()),
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
        SubmmitButton<T>(label: submmitButtonText),
      ],
    );
  }
}

class _LatitudeInput<T extends IGeodataFormBloc> extends StatelessWidget {
  const _LatitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<T>();
    return InputBlocBuilder<String>(
      bloc: formBloc.latitude,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value),
        labelText: 'Latitud',
        errorText: state.error,
        onChanged: (value) => formBloc.latitude.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _LongitudeInput<T extends IGeodataFormBloc> extends StatelessWidget {
  const _LongitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<T>();
    return InputBlocBuilder<String>(
      bloc: formBloc.longitude,
      builder: (context, state) => TextInputWidget(
        controller: TextEditingCustom.fromValue(state.value),
        labelText: 'Longitud',
        errorText: state.error,
        onChanged: (value) => formBloc.longitude.dirty(
          value.trim(),
        ),
      ),
    );
  }
}
