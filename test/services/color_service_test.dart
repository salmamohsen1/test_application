import 'package:application_test/services/color_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Color should not be null', () {
    final ColorService _colorService = ColorService();

    _colorService.changeColorRandomly();

    expect(_colorService.getRandomColor,isNotNull);
  });
}