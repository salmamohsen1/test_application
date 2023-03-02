import 'package:application_test/services/color_service.dart';
import 'package:flutter/material.dart';

class RandomColorPage extends StatefulWidget {
  const RandomColorPage({super.key});

  @override
  State<RandomColorPage> createState() => _RandomColorPageState();
}

class _RandomColorPageState extends State<RandomColorPage> {

  final ColorService _colorService = ColorService()..setDefaultColor(Colors.white);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        color: _colorService.getRandomColor,
        child:  Center(
          child: Text(
            'Hey There',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _colorService.getInvertedColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      _colorService.changeColorRandomly();
    });
  }
}