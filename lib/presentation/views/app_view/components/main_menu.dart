import 'package:bex_app/application/map/main_menu/main_menu_cubit.dart';
import 'package:bex_app/core/hooks/animation_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bex_app/core/extensions/context_extensions.dart';

class MainMenu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final offset = useState(200.0);

    final offsetAnimation = useAnimatedDouble(
      useValueListenable(offset),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );

    return BlocListener<MainMenuCubit, bool>(
      listener: (context, state) => _handleMainMenuListener(
        context,
        state,
        offset,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Transform.translate(
          offset: Offset(0, offsetAnimation),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Stack(
              children: [
                _renderBase(),
                _renderOutline(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderBase() {
    return Transform.translate(
      offset: const Offset(0, 50),
      child: Container(
        width: 180,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: const Center(
          child: Text('mainMenyy'),
        ),
      ),
    );
  }

  void _handleMainMenuListener(
    BuildContext context,
    bool state,
    ValueNotifier<double> offset,
  ) {
    if (state) {
      offset.value = 0;
    } else {
      offset.value = 200;
    }
  }

  Widget _renderOutline(BuildContext context) {
    final maxW = context.maxW;
    final maxH = context.maxH;

    return Transform.translate(
      offset: Offset(maxW * 0.01, maxH * -0.005 + 50),
      child: Container(
        width: 180,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
