import 'package:bex_app/gen/assets.gen.dart';
import 'package:bex_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxW = context.mediaQuerySize.width;
    final maxH = context.mediaQuerySize.height;

    return Scaffold(
      backgroundColor: ColorName.bgColor,
      body: Align(
        child: Container(
          width: maxW * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.logo.image(fit: BoxFit.contain),
              Assets.images.bex.image(fit: BoxFit.contain),
              SizedBox(height: maxH * 0.1)
            ],
          ),
        ),
      ),
    );
  }
}
