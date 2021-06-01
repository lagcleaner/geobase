import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'widgets/map/map.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(APP_NAME),
      ),
      body: Stack(
        children: [
          GeoBaseMap(),
        ],
      ),
    );
  }
}
