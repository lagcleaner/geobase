import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';

class GeodataForm extends StatelessWidget {
  const GeodataForm({
    Key? key,
    required this.submmitButtonText,
  }) : super(key: key);

  final String submmitButtonText;

  @override
  Widget build(BuildContext context) {
    final formBloc = context.watch<IGeodataFormBloc>();
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
        SubmmitButton<IGeodataFormBloc>(label: submmitButtonText),
      ],
    );
  }
}

class _LatitudeInput extends StatelessWidget {
  const _LatitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<IGeodataFormBloc>();
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

class _LongitudeInput extends StatelessWidget {
  const _LongitudeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<IGeodataFormBloc>();
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
