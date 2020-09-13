import 'package:Bex/application/map/bottom_nav/cubit.dart';
import 'package:Bex/presentation/views/about_view/about_view.dart';
import 'package:Bex/presentation/views/app_view/components/bottom_bar.dart';
import 'package:Bex/presentation/views/app_view/components/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);
    return BlocConsumer<BottomnavCubit, BottomNavState>(
      listener: (context, state) => _handlePageTransitionListener(
        context,
        state,
        controller,
      ),
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomBar(),
          resizeToAvoidBottomPadding: false,
          body: PageView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              AboutView(),
              Map(),
            ],
          ),
        );
      },
    );
  }

  void _handlePageTransitionListener(
    BuildContext context,
    BottomNavState state,
    PageController controller,
  ) {
    controller.animateToPage(
      state.currentPage == CurrentPage.aboutPage ? 0 : 1,
      duration: const Duration(milliseconds: 250),
      curve: Curves.ease,
    );
  }
}
