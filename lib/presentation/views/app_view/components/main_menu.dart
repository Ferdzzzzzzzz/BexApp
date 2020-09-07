import 'package:bex_app/application/bootstrap/cubit.dart';
import 'package:bex_app/application/map/about/about_cubit.dart';
import 'package:bex_app/application/map/main_menu/main_menu_cubit.dart';
import 'package:bex_app/core/hooks/animation_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bex_app/core/extensions/context_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

const _offsetHiddenMultiplier = 0.26;
const _offsetShowMultiplier = 0.01;
const _slideDuration = 250;
const _borderRadius = BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

class MainMenu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final offset = useState(context.maxH * _offsetHiddenMultiplier);

    final offsetAnimation = useAnimatedDouble(
      useValueListenable(offset),
      duration: const Duration(milliseconds: _slideDuration),
      curve: Curves.easeOut,
    );

    return BlocListener<MainMenuCubit, bool>(
      listener: (context, state) => _handleMainMenuListener(
        context,
        state,
        offset,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: context.maxW * 0.05),
        child: Transform.translate(
          offset: Offset(0, offsetAnimation),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: _renderMenu(context),
          ),
        ),
      ),
    );
  }

  Widget _renderMenu(BuildContext context) {
    return Container(
      width: context.maxW * 0.42,
      height: context.maxH * 0.26,
      child: Stack(
        children: [
          _renderBase(context),
          _renderOutline(context),
          _renderButtons(context),
        ],
      ),
    );
  }

  Widget _renderBase(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: context.maxW * 0.4,
        height: context.maxH * 0.25,
        decoration: const BoxDecoration(
          borderRadius: _borderRadius,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _renderOutline(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: context.maxW * 0.4,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(),
          borderRadius: _borderRadius,
        ),
      ),
    );
  }

  Widget _renderButtons(BuildContext context) {
    final bootstrapCubit = context.bloc<BootstrapCubit>();
    final aboutCubit = context.bloc<AboutCubit>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _renderMenuButton(
            'Home',
            context,
            () => bootstrapCubit.switchAppSettings(),
          ),
          _renderMenuButton(
            'About',
            context,
            () => aboutCubit.switchToAbout(),
          ),
        ],
      ),
    );
  }

  Widget _renderMenuButton(
    String title,
    BuildContext context,
    VoidCallback ontap,
  ) {
    return RawMaterialButton(
      onPressed: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.maxH * 0.01),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            decoration: TextDecoration.underline,
            fontSize: 20,
          ),
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
      offset.value = context.maxH * _offsetShowMultiplier;
    } else {
      offset.value = context.maxH * _offsetHiddenMultiplier;
    }
  }
}
