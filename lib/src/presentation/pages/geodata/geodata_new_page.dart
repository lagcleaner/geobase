import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/presentation/core/utils/notification_helper.dart';
import 'package:latlong2/latlong.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/geodata/blocs/blocs.dart';
import 'package:geobase/src/presentation/pages/geodata/widgets/widgets.dart';

class GeodataNewPage extends StatelessWidget {
  const GeodataNewPage({
    Key? key,
    this.ubication,
    this.categoryId,
  }) : super(key: key);

  final LatLng? ubication;
  final int? categoryId;

  static BeamPage getPage(
    BuildContext context,
    LatLng? latLng,
    int? categoryId,
  ) {
    // navigate from map with latLng, or from geodata list to manually enter the latLng
    return BeamPage(
      key: const ValueKey('GeodataNew'),
      title: 'Nuevo punto georeferenciado',
      child: GeodataNewPage(
        ubication: latLng,
        categoryId: categoryId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GeodataCreateCubit>(
      create: (_) => getIt<GeodataCreateCubit>()
        ..initialize(
          GeodataCreateParameters(
            categoryId: categoryId,
            latlong: ubication,
          ),
        ),
      child: const _GeodataCreatePageInternal(),
    );
  }
}

class _GeodataCreatePageInternal extends StatelessWidget {
  const _GeodataCreatePageInternal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: const Text('Nuevo Punto de Interés'),
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
        ),
        body: BlocBuilder<GeodataCreateCubit, GeodataCreateState>(
          bloc: context.read<GeodataCreateCubit>(),
          builder: (context, state) => state.maybeMap(
            categorySelection: (categorySelection) =>
                _GeodataCategorySelectionBody(
              categories: categorySelection.categories,
              onSelectedCategory: (categoryId) =>
                  context.read<GeodataCreateCubit>().loadTemplate(categoryId),
            ),
            inputData: (inputData) => BlocProvider<IGeodataCreateFormBloc>(
              create: (context) =>
                  getIt<IGeodataCreateFormBloc>(param1: inputData.fetchData),
              child: const _GeodataCreateFormBody(),
            ),
            failure: (failureState) => FailureAndRetryWidget(
              errorText: failureState.failure.message?.toString() ?? '',
              onPressed: () =>
                  context.read<GeodataCreateCubit>().loadCategories(),
            ),
            orElse: () => Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
                strokeWidth: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GeodataCategorySelectionBody extends StatelessWidget {
  const _GeodataCategorySelectionBody({
    Key? key,
    required this.categories,
    required this.onSelectedCategory,
  }) : super(key: key);

  final Function(int categoryId) onSelectedCategory;
  final List<CategoryGetEntity> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Seleccione una categoría para el nuevo punto.',
                style: Theme.of(context).textTheme.headline6,
                textScaleFactor: 0.9,
              ),
            ),
          ),
          Expanded(
            child: DropdownButtonFormField<int>(
              items: categories.map((CategoryGetEntity categ) {
                return DropdownMenuItem(
                  value: categ.id,
                  child: Row(
                    children: <Widget>[
                      Text(categ.name),
                    ],
                  ),
                );
              }).toList(),
              icon: const SizedBox(),
              onChanged: (selected) =>
                  selected != null ? onSelectedCategory(selected) : null,
              decoration: TextFieldDecorations.decoration(
                suffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined),
                prefixIcon: Icons.category,
                labelText: 'Categoría',
              ),
            ),
          ),
          const Expanded(flex: 5, child: SizedBox()),
          Expanded(
            child: Icon(
              Icons.info_outline_rounded,
              size: 30,
              color: Colors.orange[200],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Si su ubicación es accesible sus datos se entrarán de forma predeterminada para el nuevo punto, no obstante se mantiene editable.',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}

class _GeodataCreateFormBody extends StatelessWidget {
  const _GeodataCreateFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<IGeodataCreateFormBloc, void, Failure>(
      bloc: context.read<IGeodataCreateFormBloc>(),
      onSuccess: (_) => NotificationHelper.showSuccessSnackbar(
        context,
        message: 'El punto fue correctamente añadido.',
        onShow: () => context.beamToNamed('/geodata'),
      ),
      onError: (error) => NotificationHelper.showErrorSnackbar(
        context,
        message: error.message ?? 'Ha ocurrido un error, vuelve a intentarlo.',
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: GeodataForm<IGeodataCreateFormBloc>(
          submmitButtonText: 'Añadir Punto',
        ),
      ),
    );
  }
}
