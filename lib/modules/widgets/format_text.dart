import 'package:flutter/material.dart';

TextStyle formatText(double size) =>
    TextStyle(fontSize: size, color: Colors.white, shadows: const [
      Shadow(offset: Offset(0, 0), color: Color(0xffffffff), blurRadius: 6),
    ]);


TextStyle formatTextForName() {
  return const TextStyle(
      fontSize: 36,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      shadows: [
        Shadow(
// bottomLeft
            offset: Offset(0, 0),
            color: Color(0xffffffff),
            blurRadius: 7),
      ]);
}
