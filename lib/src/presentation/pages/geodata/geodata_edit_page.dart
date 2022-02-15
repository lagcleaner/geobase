import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/notification_helper.dart';
import 'package:geobase/src/presentation/core/widgets/commons/commons.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/geodata/widgets/widgets.dart';

class GeodataEditPage extends StatelessWidget {
  const GeodataEditPage({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  static BeamPage getPage(BuildContext context, int geodataId) {
    return BeamPage(
      key: const ValueKey('GeodataEdit'),
      title: 'Editar Información del punto',
      child: GeodataEditPage(
        geodataId: geodataId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeodataEditCubit>(
      create: (_) => getIt()..loadInputs(geodataId),
      child: _GeodataEditPageInternal(
        geodataId: geodataId,
      ),
    );
  }
}

class _GeodataEditPageInternal extends StatelessWidget {
  const _GeodataEditPageInternal({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: const Text('Editar información del Punto'),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: BlocBuilder<GeodataEditCubit, GeodataEditState>(
          bloc: context.read(),
          builder: (context, state) => state.maybeMap(
            edit: (editState) => BlocProvider<IGeodataEditFormBloc>(
              create: (context) =>
                  getIt<IGeodataEditFormBloc>(param1: editState.fetchData),
              child: _GeodataEditFormBody(geodataId: geodataId),
            ),
            failure: (failureState) => FailureAndRetryWidget(
              errorText: failureState.failure.message?.toString() ?? '',
              onPressed: () =>
                  context.read<GeodataEditCubit>().loadInputs(geodataId),
            ),
            orElse: () => Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GeodataEditFormBody extends StatelessWidget {
  const _GeodataEditFormBody({
    Key? key,
    required this.geodataId,
  }) : super(key: key);

  final int geodataId;

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<IGeodataEditFormBloc, void, Failure>(
      bloc: context.read<IGeodataEditFormBloc>(),
      onSuccess: (_) => NotificationHelper.showSuccessSnackbar(
        context,
        message: 'El punto fue correctamente actualizado.',
        onShow: () => context.beamToNamed('/geodata/$geodataId'),
      ),
      onError: (error) => NotificationHelper.showSuccessSnackbar(
        context,
        message: error.message ?? 'Ha ocurrido un error, vuelve a intentarlo.',
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: GeodataForm<IGeodataEditFormBloc>(
          submmitButtonText: 'Aplicar cambios',
        ),
      ),
    );
  }
}
