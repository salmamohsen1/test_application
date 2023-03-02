import 'package:application_test/constants.dart';
import 'package:application_test/services/color_service.dart';
import 'package:flutter/material.dart';

/// This page is used to display a box which takes all the screen,
/// and change its color randomly based on a user click.
class RandomColorPage extends StatefulWidget {
  /// default constructor for the current page
  const RandomColorPage({super.key});

  @override
  State<RandomColorPage> createState() => _RandomColorPageState();
}

class _RandomColorPageState extends State<RandomColorPage> {

  final ColorService _colorService = ColorService();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: ColoredBox(
        color: _colorService.getRandomColor,
        child:  Center(
          child: Text(
            'Hey There',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: _colorService.getInvertedColor,
              fontSize: Constants.headerFontSize,
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
