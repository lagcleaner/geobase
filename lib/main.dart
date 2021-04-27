import 'app.dart';
import 'injection.dart';
import 'src/core/utils/simple_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  configureInjection(Environment.prod);

  runApp(GeoBaseApp());
}
