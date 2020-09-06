// import 'package:bex_app/application/bootstrap/cubit.dart';
import 'package:bex_app/application/map/about/about_cubit.dart';
import 'package:bex_app/presentation/views/app_view/components/bottom_bar.dart';
import 'package:bex_app/presentation/views/app_view/components/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);
    return BlocConsumer<AboutCubit, CurrentPage>(
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
            physics: state == CurrentPage.mapPage
                ? const NeverScrollableScrollPhysics()
                : const PageScrollPhysics(),
            children: [
              const Center(
                child: Text('some menu'),
              ),
              Map(),
            ],
          ),
        );
      },
    );
  }

  void _handlePageTransitionListener(
    BuildContext context,
    CurrentPage state,
    PageController controller,
  ) {
    if (state == CurrentPage.aboutPage) {
      controller.animateToPage(
        0,
        duration: const Duration(milliseconds: 100),
        curve: ,
      );
    }
  }
}
