import 'injection.dart';
import 'src/presentation/core/app.dart';
import 'src/presentation/core/utils/simple_bloc_observer.dart';

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

  Bloc.observer = SimpleBlocObserver();

  configureInjection(Environment.dev);
}
