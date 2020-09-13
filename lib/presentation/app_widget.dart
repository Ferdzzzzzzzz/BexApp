import 'package:Bex/application/bootstrap/cubit.dart';
import 'package:Bex/application/map/bottom_nav/bottom_nav_cubit.dart';
import 'package:Bex/presentation/views/app_view/app_view.dart';
import 'package:Bex/presentation/views/settings_select/settings_select_view.dart';
import 'package:Bex/presentation/widgets/splash.dart';
import 'package:Bex/sl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bootstrapProvider = BlocProvider(
      create: (_) => sl<BootstrapCubit>()..checkAppSettings(),
    );

    final bottomNavProvider = BlocProvider(
      create: (_) => BottomnavCubit(),
    );

    return MultiBlocProvider(
      providers: [
        bootstrapProvider,
        bottomNavProvider,
      ],
      child: BlocBuilder<BootstrapCubit, BootstrapState>(
        builder: (_, state) => state.when(
          initial: () => Splash(),
          hasSettings: (_) => AppView(),
          chooseSettings: () => SettingsSelectView(),
        ),
      ),
    );
  }
}
