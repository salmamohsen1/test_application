import 'dart:math';

import 'package:flutter/material.dart';

class ColorService{

  Color? _initialColor;

  final Random _random = Random();

   Color get getRandomColor => _initialColor ??= Colors.white;

   Color get getInvertedColor {

     _initialColor ??= Colors.white;

    // Subtract each component from 255 to get the inverse component
    int invertedRed = 255 - _initialColor!.red;
    int invertedGreen = 255 - _initialColor!.green;
    int invertedBlue = 255 - _initialColor!.blue;

    // Create a new color with the inverse components
    return Color.fromARGB(255, invertedRed, invertedGreen, invertedBlue);
  }

   void changeColorRandomly()=> _initialColor = Color(_random.nextInt(0xffffffff));

   void setDefaultColor(Color color) =>  _initialColor = color;
}