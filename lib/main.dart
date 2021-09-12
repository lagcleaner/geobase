import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection.dart';
import 'src/presentation/core/app.dart';

Future main() async {
  await initializeApp();

  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => GeoBaseApp(true),
  // ));
  runApp(GeoBaseApp());
}

Future initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.dev);

  Bloc.observer = getIt<BlocObserver>();
}
