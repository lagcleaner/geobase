import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../core/constants/constants.dart';
import 'blocs/location/location_cubit.dart';
import 'blocs/map/map_cubit.dart';
import 'blocs/markers/marker_cubit.dart';
import 'widgets/map/map.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: const Color(0x33000000),
            title: const Text(APP_NAME),
          ),
          body: Stack(
            children: [
              MultiBlocProvider(
                providers: [
                  BlocProvider<MapCubit>(
                    create: (context) => getIt<MapCubit>(),
                  ),
                  BlocProvider<MarkerCubit>(
                    create: (context) => getIt<MarkerCubit>(),
                  ),
                  BlocProvider<LocationCubit>(
                    create: (context) => getIt<LocationCubit>(),
                  ),
                ],
                child: GeoBaseMap(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
