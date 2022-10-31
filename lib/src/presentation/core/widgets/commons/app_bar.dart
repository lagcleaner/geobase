import 'package:beamer/beamer.dart';
import 'package:geobase/src/presentation/core/app.dart';

class GeoAppBar extends AppBar {
  GeoAppBar({
    super.key,
    super.leading = const AppBarBackButton(),
    super.title,
    super.actions,
    super.flexibleSpace,
    super.elevation = 4.0,
    super.shape,
    super.backgroundColor,
    super.brightness,
    super.iconTheme,
    super.actionsIconTheme,
    super.textTheme,
    super.primary = true,
    super.centerTitle = true,
    super.titleSpacing = NavigationToolbar.kMiddleSpacing,
    super.bottomOpacity = 1.0,
    super.toolbarHeight = kToolbarHeight,
    super.leadingWidth,
    super.toolbarTextStyle,
    super.titleTextStyle,
    super.systemOverlayStyle,
    super.excludeHeaderSemantics = false,
  });
}

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const BackButtonIcon(),
      color: color ?? Colors.white,
      tooltip: 'Volver',
      onPressed: () => context.beamBack(),
    );
  }
}
