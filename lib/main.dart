import 'app.dart';
import 'injection.dart';
import 'src/core/utils/simple_bloc_observer.dart';

Future main() async {
  await initializeApp();

  runApp(GeoBaseApp());
}

Future initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  configureInjection(Environment.prod);
}
