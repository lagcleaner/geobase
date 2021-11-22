import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/form_bloc/form_bloc_builder.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/blocs.dart';

class SourceOptionsSectionWidget extends StatelessWidget {
  const SourceOptionsSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBlocBuilder<
        MapConfigurationFormBloc,
        FormBlocState<MapConfigurationEntity, String>,
        MapConfigurationEntity,
        String>(
      bloc: context.read<MapConfigurationFormBloc>(),
      onLoadFailed: (failure) => FailureAndRetryWidget(
        errorText:
            'Tenemos problemas para cargar la configuración :( ${failure ?? ''}',
        onPressed: () {
          return context.read<MapConfigurationFormBloc>().emitLoading();
        },
      ),
      onFailure: (failure) => FailureAndRetryWidget(
        errorText:
            'Tenemos problemas para guardar la configuración :( ${failure ?? ''}',
        onPressed: () {
          return context.read<MapConfigurationFormBloc>().emitLoading();
        },
      ),
      onLoading: () => Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Theme.of(context).primaryColor,
        ),
      ),
      orElse: () => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Flexible(child: _SourceSelector()),
          const Flexible(child: _UrlTemplateInput()),
          const Flexible(child: _WMSBaseUrlInput()),
          const Flexible(child: _WMSFormatInput()),
          const Flexible(child: _WMSLayersInput()),
          const Flexible(child: _SubdomainsInput()),
          const SizedBox(height: 10),
          MainButton(
            text: 'Guardar Configuración',
            onPressed: context.read<MapConfigurationFormBloc>().submit,
          )
        ],
      ),
    );
  }
}

class _SourceSelector extends StatelessWidget {
  const _SourceSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<MapConfigurationFormBloc>();
    return DropdownFieldBlocBuilder<MapSource>(
      padding: const EdgeInsets.symmetric(vertical: 8),
      selectFieldBloc: formBloc.source,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Protocolo',
      ),
      itemBuilder: (context, value) => value.name,
    );
  }
}

class _UrlTemplateInput extends StatelessWidget {
  const _UrlTemplateInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<MapConfigurationFormBloc>();
    return TextFieldBlocBuilder(
      textFieldBloc: formBloc.urlTemplate,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: TextFieldDecorations.decoration(
        labelText: 'Url Plantilla*',
      ),
    );
  }
}

class _WMSBaseUrlInput extends StatelessWidget {
  const _WMSBaseUrlInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<MapConfigurationFormBloc>();
    return TextFieldBlocBuilder(
      textFieldBloc: formBloc.wmsBaseUrl,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: TextFieldDecorations.decoration(
        labelText: 'Url Base*',
      ),
    );
  }
}

class _WMSFormatInput extends StatelessWidget {
  const _WMSFormatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<MapConfigurationFormBloc>();
    return TextFieldBlocBuilder(
      textFieldBloc: formBloc.wmsBaseUrl,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: TextFieldDecorations.decoration(
        labelText: 'Url Base*',
      ),
    );
  }
}

class _WMSLayersInput extends StatelessWidget {
  const _WMSLayersInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<MapConfigurationFormBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        BlocBuilder<ListFieldBloc<TextFieldBloc>,
            ListFieldBlocState<TextFieldBloc>>(
          bloc: formBloc.wmsLayers,
          builder: (context, state) {
            if (state.fieldBlocs.isNotEmpty) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.fieldBlocs.length,
                itemBuilder: (context, i) {
                  return _WMSLayerInput(
                    bloc: state.fieldBlocs[i],
                    index: i,
                    onRemoved: () => formBloc.removeLayer(i),
                  );
                },
              );
            }
            return const SizedBox();
          },
        ),
        TextButton(
          onPressed: formBloc.addNewLayer,
          child: const Text('Añadir otra capa'),
        ),
        const SizedBox(height: 4),
        const Divider(),
      ],
    );
  }
}

class _WMSLayerInput extends StatelessWidget {
  const _WMSLayerInput({
    Key? key,
    required this.bloc,
    required this.index,
    required this.onRemoved,
  }) : super(key: key);

  final TextFieldBloc bloc;
  final int index;
  final VoidCallback onRemoved;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFieldBlocBuilder(
          textFieldBloc: bloc,
          padding: const EdgeInsets.symmetric(vertical: 4),
          decoration: TextFieldDecorations.decoration(
            labelText: 'Capa #(${index + 1})*',
          ),
        ),
        const SizedBox(width: 4),
        IconButton(
          onPressed: onRemoved,
          icon: const Icon(Icons.highlight_remove_rounded),
        )
      ],
    );
  }
}

class _SubdomainsInput extends StatelessWidget {
  const _SubdomainsInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<MapConfigurationFormBloc>();
    return CheckboxGroupFieldBlocBuilder<String>(
      padding: const EdgeInsets.symmetric(vertical: 8),
      multiSelectFieldBloc: formBloc.subdomains,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Subdominios a usar',
      ),
      itemBuilder: (context, value) => value,
    );
  }
}
