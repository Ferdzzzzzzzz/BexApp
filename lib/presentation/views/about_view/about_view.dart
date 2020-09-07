import 'package:bex_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.aboutBackground.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
