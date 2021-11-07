import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/home/widgets/source_section/source_section.dart';

class SourceOptionsSectionWidget extends StatelessWidget {
  const SourceOptionsSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapSourceInputCubit, MapSourceInputState>(
      bloc: context.read<MapSourceInputCubit>(),
      builder: (context, state) => state.map(
        initial: (_) {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Theme.of(context).primaryColor,
            ),
          );
        },
        sourceInput: (state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: _SourceSelector(
                  onChanged: context.read<MapSourceInputCubit>().select,
                  sourceType: state.selectedType,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              BlocProvider<IMapSourceFormBloc>(
                create: (context) => getIt(
                  param1: state.selectedType,
                  param2: state.source,
                ),
                child: MapSourceForm(
                  selectedType: state.selectedType,
                  onSuccessSubmit: context.read<MapSourceInputCubit>().save,
                ),
              ),
            ],
          );
        },
        failureLoading: (state) {
          return FailureAndRetryWidget(
            errorText: state.failure.message ?? '',
            onPressed: () {
              return context.read<MapSourceInputCubit>().load();
            },
          );
        },
        failureSaving: (state) {
          return FailureAndRetryWidget(
            errorText: state.failure.message ?? '',
            onPressed: () {
              return context.read<MapSourceInputCubit>().save(state.source);
            },
          );
        },
      ),
    );
  }
}

class MapSourceForm extends StatelessWidget {
  const MapSourceForm({
    Key? key,
    required this.selectedType,
    required this.onSuccessSubmit,
  }) : super(key: key);

  final MapSource selectedType;
  final Function(MapSourceConfiguration) onSuccessSubmit;

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<IMapSourceFormBloc, MapSourceConfiguration,
        Failure>(
      onSuccess: onSuccessSubmit,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (selectedType == MapSource.Assets) ...[
            const SizedBox(height: 4),
            const Text(
              'Esta opción solo es configurable, tras '
              'haber compilado la applicación junto '
              'a los archivos de mapa en "assets/map". ',
            ),
          ],
          if (selectedType == MapSource.File) ...[
            const SizedBox(height: 4),
            const Text(
              'Esta opción admite por el momento '
              'base de datos de imágenes para mapas '
              'ubicados de la forma "<dir>/x/y/z.png". ',
            ),
            const SizedBox(height: 8),
            const Flexible(child: UrlTemplateInput()),
            const SizedBox(height: 8),
            const Flexible(child: AditionalOptionsInput()),
          ],
          if (selectedType == MapSource.TMS) ...[
            const SizedBox(height: 4),
            const Text(
              'Esta opción permite el acceso a '
              'servicios remotos que usen el protocolo TMS. ',
            ),
            const SizedBox(height: 8),
            const Flexible(child: UrlTemplateInput()),
            const SizedBox(height: 8),
            const Flexible(child: AditionalOptionsInput()),
          ],
          if (selectedType == MapSource.WMS) ...[
            const SizedBox(height: 4),
            const Text(
              'Esta opción permite el acceso a '
              'servicios remotos que usen el protocolo WMS. ',
            ),
            const SizedBox(height: 8),
            const Flexible(child: WMSBaseUrlInput()),
            const SizedBox(height: 8),
            const Flexible(child: WMSFormatInput()),
            const SizedBox(height: 8),
            const Flexible(child: WMSLayersInput()),
            const SizedBox(height: 8),
            const Flexible(child: WMSOtherParamsInput()),
            const SizedBox(height: 8),
            const Flexible(child: SubdomainsInput()),
            const SizedBox(height: 8),
            const Flexible(child: AditionalOptionsInput()),
          ],
          if (selectedType == MapSource.CustomRemote) ...[
            const SizedBox(height: 4),
            const Text(
              'Esta opción permite el acceso a '
              'servicios remotos standard. ',
            ),
            const SizedBox(height: 8),
            const Flexible(child: UrlTemplateInput()),
            const SizedBox(height: 8),
            const Flexible(child: SubdomainsInput()),
            const SizedBox(height: 8),
            const Flexible(child: AditionalOptionsInput()),
          ],
          if (selectedType == MapSource.Empty)
            const Text(
              'Sin configuraciones para mapas.',
            ),
          const SizedBox(
            height: 8,
          ),
          const SubmmitButton<IMapSourceFormBloc>(label: 'Aceptar'),
        ],
      ),
    );
  }
}

class _SourceSelector extends StatelessWidget {
  const _SourceSelector({
    Key? key,
    required this.onChanged,
    required this.sourceType,
  }) : super(key: key);

  final ValueChanged<MapSource> onChanged;
  final MapSource sourceType;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<MapSource>(
      items: MapSource.values
          .map((e) => DropdownMenuItem(value: e, child: Text(e.visualName())))
          .toList(),
      value: sourceType,
      onChanged: (value) => value != null ? onChanged(value) : null,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Tipo de Fuente',
      ),
    );
  }
}
