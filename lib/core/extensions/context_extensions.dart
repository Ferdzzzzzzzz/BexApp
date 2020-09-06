import 'package:flutter/material.dart';

import 'package:build_context/build_context.dart';

extension BuildContextX on BuildContext {
  double get maxH => mediaQuerySize.height;
  double get maxW => mediaQuerySize.width;
}
