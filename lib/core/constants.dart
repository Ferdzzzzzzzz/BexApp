import 'package:flutter/material.dart';

final materialBoxShadow = [
  BoxShadow(
    color: HSLColor.fromColor(Colors.black)
        .withHue(210)
        .withSaturation(0.08)
        .withLightness(0.54)
        .withAlpha(.2)
        .toColor(),
    offset: const Offset(0, 3),
    blurRadius: 6,
  ),
];
