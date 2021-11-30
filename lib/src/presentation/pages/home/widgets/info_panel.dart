import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/home/blocs/panel_geodata_preview/geodata_preview_cubit.dart';
import 'package:icon_picker/material_icons.dart';

class SlideUpInformationalPanel extends StatelessWidget {
  const SlideUpInformationalPanel({
    Key? key,
    required this.geodataId,
    required this.panelHeight,
  }) : super(key: key);

  final int geodataId;
  final double panelHeight;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeodataPreviewCubit>(
      create: (context) => getIt<GeodataPreviewCubit>()..load(geodataId),
      child: _InternalPanel(
        geodataId: geodataId,
        panelHeight: panelHeight,
      ),
    );
  }
}

class _InternalPanel extends StatelessWidget {
  const _InternalPanel({
    Key? key,
    required this.geodataId,
    required this.panelHeight,
  }) : super(key: key);

  final int geodataId;
  final double panelHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        children: [
          const Icon(Icons.maximize_rounded),
          BlocBuilder<GeodataPreviewCubit, GeodataPreviewState>(
            bloc: context.read<GeodataPreviewCubit>(),
            builder: (context, state) {
              return state.maybeMap(
                loaded: (state) {
                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  MaterialIcons.mIcons[state.geodata.icon],
                                  color: state.geodata.color != null
                                      ? Color(state.geodata.color!)
                                      : Theme.of(context).primaryColor,
                                ),
                                Text(
                                  state.geodata.category.name,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                            Text(
                              '(${state.geodata.latitude.toStringAsFixed(6)}, ${state.geodata.longitude.toStringAsFixed(6)})',
                              style: Theme.of(context).textTheme.subtitle2,
                              textScaleFactor: 0.95,
                            ),
                          ],
                        ),
                        const Divider(),
                        SizedBox(
                          height: panelHeight * 0.5,
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            child: Column(
                              children: [
                                if (state.geodata.fields.isEmpty)
                                  ListTile(
                                    title: Text(
                                      'Sin Campos',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                if (state.geodata.fields.isNotEmpty) ...[
                                  for (final field
                                      in state.geodata.fields.take(3))
                                    FieldRenderResolver.getViewWidget(field)
                                ],
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        MainButton(
                          text: 'Ver detalles',
                          onPressed: () => context.beamToNamed(
                            '/geodata/$geodataId',
                            popToNamed: '/map',
                          ),
                        ),
                      ],
                    ),
                  );
                },
                failure: (failure) => FailureAndRetryWidget(
                  errorText: failure.error ?? '',
                  onPressed: () =>
                      context.read<GeodataPreviewCubit>().load(geodataId),
                ),
                orElse: () {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
