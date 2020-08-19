import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;

    return BottomAppBar(
      child: Container(
        height: maxH * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('1'),
            Text('2'),
            Text('3'),
          ],
        ),
      ),
    );
  }
}
