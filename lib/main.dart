import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/main.reflectable.dart';
import 'package:geobase/src/infrastructure/core/extensions/sqlite_db_extension.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';

Future main() async {
  await initializeApp();

  runApp(GeoBaseApp());
}

Future initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);

  await GeobaseModel().initialize();

  initializeReflectable();

  FieldRenderResolver.initializResolver();

  Bloc.observer = getIt<BlocObserver>();
}
