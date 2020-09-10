import 'package:Bex/application/bootstrap/cubit.dart';
import 'package:Bex/application/map/about/about_cubit.dart';
import 'package:Bex/application/map/main_menu/main_menu_cubit.dart';
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

    final mainMenuProvider = BlocProvider(
      create: (_) => MainMenuCubit(),
    );

    final aboutPageProvider = BlocProvider(
      create: (_) => AboutCubit(),
    );

    return MultiBlocProvider(
      providers: [
        bootstrapProvider,
        mainMenuProvider,
        aboutPageProvider,
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
