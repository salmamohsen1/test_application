import 'dart:math';

import 'package:application_test/constants.dart';
import 'package:flutter/material.dart';

/// A color service that provide a basic functionality to deal with colors.
class ColorService {
  Color _initialColor = Colors.white;

  final Random _random = Random();

  /// get a the generated random color, in case of non generated color,
  /// it returns white color.
  Color get getRandomColor => _initialColor;

  /// get a the inverted color of the generated random color.
  Color get getInvertedColor {
    // Subtract each component from 255 to get the inverse component
    final invertedRed = Constants.byteMax - _initialColor.red;
    final invertedGreen = Constants.byteMax - _initialColor.green;
    final invertedBlue = Constants.byteMax - _initialColor.blue;

    // Create a new color with the inverse components
    return Color.fromARGB(
      Constants.byteMax,
      invertedRed,
      invertedGreen,
      invertedBlue,
    );
  }

  /// Change the color randomly.
  void changeColorRandomly() =>
      _initialColor = Color(_random.nextInt(Constants.colorMax));
}
