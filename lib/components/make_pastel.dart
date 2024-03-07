import 'package:flutter/material.dart';

Color makePastel(Color color, [double amount = 0.5]) {
  // Ensure the amount is between 0 and 1
  amount = amount.clamp(0.0, 1.0);
  final r = (color.red + (255 - color.red) * amount).round();
  final g = (color.green + (255 - color.green) * amount).round();
  final b = (color.blue + (255 - color.blue) * amount).round();
  return Color.fromARGB(color.alpha, r, g, b);
}
