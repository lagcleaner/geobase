import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
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
              GeoBaseMap(),
            ],
          ),
        ),
      ],
    );
  }
}
