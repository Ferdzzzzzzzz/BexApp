import 'package:bex_app/application/map/about/about_cubit.dart';
import 'package:bex_app/application/map/main_menu/main_menu_cubit.dart';
import 'package:bex_app/gen/assets.gen.dart';
import 'package:bex_app/presentation/views/app_view/components/render_help_dialog.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum SelectedItem {
  map,
  home,
  help,
}

class BottomBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;
    final selectedMenuItem = useState(SelectedItem.map);
    final iconHeight = maxH * 0.05;

    return BottomAppBar(
      elevation: 100,
      child: Container(
        padding: EdgeInsets.only(
          left: maxW * 0.08,
          right: maxW * 0.08,
          top: maxH * 0.005,
        ),
        height: maxH * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _renderHomeBtn(context, selectedMenuItem, iconHeight),
            _renderMapBtn(context, selectedMenuItem, iconHeight),
            _renderHelpBtn(
              context,
              selectedMenuItem,
              iconHeight,
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderHomeBtn(
    BuildContext context,
    ValueNotifier<SelectedItem> selectedMenuItem,
    double iconHeight,
  ) {
    final mainMenuCubit = context.bloc<MainMenuCubit>();
    final homeSelected = selectedMenuItem.value == SelectedItem.home;
    return SizedBox(
      height: iconHeight,
      child: GestureDetector(
        onTap: () {
          if (homeSelected) {
            selectedMenuItem.value = SelectedItem.map;
            mainMenuCubit.hideMenu();
            return;
          }
          mainMenuCubit.showMenu();
          selectedMenuItem.value = SelectedItem.home;
        },
        child: homeSelected
            ? Assets.icons.navbarHome.image()
            : Assets.icons.navbarHomeOutline.image(),
      ),
    );
  }

  Widget _renderMapBtn(
    BuildContext context,
    ValueNotifier<SelectedItem> selectedMenuItem,
    double iconHeight,
  ) {
    final mainMenuCubit = context.bloc<MainMenuCubit>();
    final aboutCubit = context.bloc<AboutCubit>();
    final mapSelected = selectedMenuItem.value == SelectedItem.map;
    return SizedBox(
      height: iconHeight,
      child: GestureDetector(
        onTap: () {
          if (mapSelected) {
            selectedMenuItem.value = SelectedItem.map;
            return;
          }
          mainMenuCubit.hideMenu();
          aboutCubit.switchToMap();
          selectedMenuItem.value = SelectedItem.map;
        },
        child: mapSelected
            ? Assets.icons.navbarLocation.image()
            : Assets.icons.navbarLocationOutline.image(),
      ),
    );
  }

  Widget _renderHelpBtn(
    BuildContext context,
    ValueNotifier<SelectedItem> selectedMenuItem,
    double iconHeight,
  ) {
    final helpSelected = selectedMenuItem.value == SelectedItem.help;

    return BlocBuilder<AboutCubit, CurrentPage>(
      builder: (context, state) {
        return SizedBox(
          height: iconHeight * 1.2,
          child: state == CurrentPage.aboutPage
              ? Assets.icons.navbarHelpGreyed.image()
              : GestureDetector(
                  onTap: () {
                    if (helpSelected) {
                      selectedMenuItem.value = SelectedItem.map;
                      return;
                    }
                    selectedMenuItem.value = SelectedItem.help;
                    renderHelpDialog(context, selectedMenuItem);
                  },
                  child: helpSelected
                      ? Assets.icons.navbarHelp.image()
                      : Assets.icons.navbarHelpOutline.image(),
                ),
        );
      },
    );
  }
}
