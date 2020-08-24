// import 'package:bex_app/application/bootstrap/cubit.dart';
import 'package:bex_app/presentation/views/app_view/components/bottom_bar.dart';
import 'package:bex_app/presentation/views/app_view/components/map.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Map(),
    );
  }
}
