import 'package:bex_app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxW = context.mediaQuerySize.width;
    final maxH = context.mediaQuerySize.height;

    return Scaffold(
      backgroundColor: bgColor,
      body: Align(
        child: Container(
          width: maxW * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                logoAssetPath,
                fit: BoxFit.contain,
              ),
              Image.asset(
                bexAssetPath,
                fit: BoxFit.contain,
              ),
              SizedBox(height: maxH * 0.1)
            ],
          ),
        ),
      ),
    );
  }
}
