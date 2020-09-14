import 'package:Bex/gen/assets.gen.dart';
import 'package:Bex/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxW = context.mediaQuerySize.width;
    final maxH = context.mediaQuerySize.height;

    return Scaffold(
      backgroundColor: ColorName.bgColor,
      body: Container(
        width: maxW,
        height: maxH,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.splash.path),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
