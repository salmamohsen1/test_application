import 'package:application_test/views/random_color_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  const ColorChangerApp({super.key});

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
