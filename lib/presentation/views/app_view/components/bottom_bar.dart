import 'package:Bex/application/map/bottom_nav/cubit.dart';
import 'package:Bex/core/constants.dart';
import 'package:Bex/gen/assets.gen.dart';
import 'package:Bex/presentation/views/app_view/components/render_help_dialog.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;
    final iconHeight = maxH * 0.05;

    return BlocBuilder<BottomnavCubit, BottomNavState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: bottomBarMaterialBoxShadow,
          ),
          child: BottomAppBar(
            child: Container(
              padding: EdgeInsets.only(
                left: maxW * 0.08,
                right: maxW * 0.08,
                top: maxH * 0.005,
              ),
              height: maxH * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _renderHomeBtn(context, iconHeight, state),
                  _renderMapBtn(context, iconHeight, state),
                  _renderHelpBtn(context, iconHeight, state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _renderHomeBtn(
    BuildContext context,
    double iconHeight,
    BottomNavState state,
  ) {
    final bottomNavCubit = context.bloc<BottomnavCubit>();

    return SizedBox(
      height: iconHeight,
      child: GestureDetector(
        onTap: () {
          if (state.selectedItem == SelectedItem.home) {
            bottomNavCubit.tapOnMap();
            bottomNavCubit.hideMainMenu();
            return;
          }

          bottomNavCubit.showMainMenu();
          bottomNavCubit.tapOnHome();
        },
        child: state.selectedItem == SelectedItem.home
            ? Assets.icons.navbarHome.image()
            : Assets.icons.navbarHomeOutline.image(),
      ),
    );
  }

  Widget _renderMapBtn(
    BuildContext context,
    double iconHeight,
    BottomNavState state,
  ) {
    final bottomNavCubit = context.bloc<BottomnavCubit>();
    final mapSelected = state.selectedItem == SelectedItem.map;
    return SizedBox(
      height: iconHeight,
      child: GestureDetector(
        onTap: () {
          if (mapSelected) return;
          bottomNavCubit.hideMainMenu();
          bottomNavCubit.tapOnMap();
        },
        child: mapSelected
            ? Assets.icons.navbarLocation.image()
            : Assets.icons.navbarLocationOutline.image(),
      ),
    );
  }

  Widget _renderHelpBtn(
    BuildContext context,
    double iconHeight,
    BottomNavState state,
  ) {
    final helpSelected = state.selectedItem == SelectedItem.help;
    final bottomNavCubit = context.bloc<BottomnavCubit>();
    final greyedOut = state.selectedItem == SelectedItem.home ||
        state.currentPage == CurrentPage.aboutPage;
    return SizedBox(
      height: iconHeight * 1.2,
      child: greyedOut
          ? Assets.icons.navbarHelpGreyed.image()
          : GestureDetector(
              onTap: () {
                if (helpSelected) {
                  bottomNavCubit.tapOnMap();
                  return;
                }
                bottomNavCubit.tapOnHelp();

                renderHelpDialog(context);
              },
              child: helpSelected
                  ? Assets.icons.navbarHelp.image()
                  : Assets.icons.navbarHelpOutline.image(),
            ),
    );
  }
}
