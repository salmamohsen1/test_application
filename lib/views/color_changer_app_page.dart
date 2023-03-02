import 'package:application_test/views/random_color_page.dart';
import 'package:flutter/material.dart';

/// The main page to lunch the app
class ColorChangerAppPage extends StatelessWidget {
  /// default constructor
  const ColorChangerAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RandomColorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
