import 'package:bloc/bloc.dart';
import './bottom_nav_state.dart';

class BottomnavCubit extends Cubit<BottomNavState> {
  BottomnavCubit() : super(BottomNavState.initial());

  Future<void> tapOnMap() async => emit(state.copyWith(
        selectedItem: SelectedItem.map,
        currentPage: CurrentPage.mapPage,
      ));

  Future<void> tapOnHome() async => emit(state.copyWith(
        selectedItem: SelectedItem.home,
      ));

  Future<void> tapOnHelp() async => emit(state.copyWith(
        selectedItem: SelectedItem.help,
      ));

  Future<void> tapOnAbout() async => emit(state.copyWith(
        currentPage: CurrentPage.aboutPage,
      ));

  Future<void> switchToAboutPage() async => emit(state.copyWith(
        currentPage: CurrentPage.aboutPage,
      ));

  Future<void> hideMainMenu() async => emit(state.copyWith(
        showMainMenu: false,
      ));

  Future<void> showMainMenu() async => emit(state.copyWith(
        showMainMenu: true,
      ));
}
