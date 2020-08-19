// import 'package:bex_app/application/bootstrap/cubit.dart';
import 'package:bex_app/presentation/views/app_view/components/bottom_bar.dart';
import 'package:bex_app/presentation/views/app_view/components/map.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final bootstrapCubit = context.bloc<BootstrapCubit>();
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: MapSample(),

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       FlatButton(
      //         onPressed: () {
      //           bootstrapCubit.switchAppSettings();
      //         },
      //         child: const Text('settings'),
      //       ),
      //       Text('${(bootstrapCubit.state as HasSettings).hasTypeOne}'),
      //     ],
      //   ),
      // ),
    );
  }
}
