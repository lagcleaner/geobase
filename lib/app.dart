import 'package:flutter/material.dart';

import 'src/presentation/pages/home/home_page.dart';

export 'package:flutter/material.dart';

class GeoBaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoBase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Home Page'),
    );
  }
}
