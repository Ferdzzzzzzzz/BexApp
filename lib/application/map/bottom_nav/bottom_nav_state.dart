import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_state.freezed.dart';

enum CurrentPage { aboutPage, mapPage, storyPage }

enum SelectedItem { map, home, help, none }

@freezed
abstract class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    @required CurrentPage currentPage,
    @required SelectedItem selectedItem,
    @required bool showMainMenu,
  }) = _BottomNavState;

  factory BottomNavState.initial() => const BottomNavState(
        currentPage: CurrentPage.mapPage,
        selectedItem: SelectedItem.map,
        showMainMenu: false,
      );
}
