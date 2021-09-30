import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/presentation/core/app.dart';

Future main() async {
  await initializeApp();

  runApp(GeoBaseApp());
}

Future initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.dev);

  Bloc.observer = getIt<BlocObserver>();
}
