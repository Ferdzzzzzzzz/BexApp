// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bottom_nav_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BottomNavStateTearOff {
  const _$BottomNavStateTearOff();

// ignore: unused_element
  _BottomNavState call(
      {@required CurrentPage currentPage,
      @required SelectedItem selectedItem,
      @required bool showMainMenu}) {
    return _BottomNavState(
      currentPage: currentPage,
      selectedItem: selectedItem,
      showMainMenu: showMainMenu,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BottomNavState = _$BottomNavStateTearOff();

/// @nodoc
mixin _$BottomNavState {
  CurrentPage get currentPage;
  SelectedItem get selectedItem;
  bool get showMainMenu;

  $BottomNavStateCopyWith<BottomNavState> get copyWith;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res>;
  $Res call(
      {CurrentPage currentPage, SelectedItem selectedItem, bool showMainMenu});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  final BottomNavState _value;
  // ignore: unused_field
  final $Res Function(BottomNavState) _then;

  @override
  $Res call({
    Object currentPage = freezed,
    Object selectedItem = freezed,
    Object showMainMenu = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage as CurrentPage,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as SelectedItem,
      showMainMenu:
          showMainMenu == freezed ? _value.showMainMenu : showMainMenu as bool,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavStateCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$BottomNavStateCopyWith(
          _BottomNavState value, $Res Function(_BottomNavState) then) =
      __$BottomNavStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CurrentPage currentPage, SelectedItem selectedItem, bool showMainMenu});
}

/// @nodoc
class __$BottomNavStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res>
    implements _$BottomNavStateCopyWith<$Res> {
  __$BottomNavStateCopyWithImpl(
      _BottomNavState _value, $Res Function(_BottomNavState) _then)
      : super(_value, (v) => _then(v as _BottomNavState));

  @override
  _BottomNavState get _value => super._value as _BottomNavState;

  @override
  $Res call({
    Object currentPage = freezed,
    Object selectedItem = freezed,
    Object showMainMenu = freezed,
  }) {
    return _then(_BottomNavState(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage as CurrentPage,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as SelectedItem,
      showMainMenu:
          showMainMenu == freezed ? _value.showMainMenu : showMainMenu as bool,
    ));
  }
}

/// @nodoc
class _$_BottomNavState implements _BottomNavState {
  const _$_BottomNavState(
      {@required this.currentPage,
      @required this.selectedItem,
      @required this.showMainMenu})
      : assert(currentPage != null),
        assert(selectedItem != null),
        assert(showMainMenu != null);

  @override
  final CurrentPage currentPage;
  @override
  final SelectedItem selectedItem;
  @override
  final bool showMainMenu;

  @override
  String toString() {
    return 'BottomNavState(currentPage: $currentPage, selectedItem: $selectedItem, showMainMenu: $showMainMenu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomNavState &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.selectedItem, selectedItem) ||
                const DeepCollectionEquality()
                    .equals(other.selectedItem, selectedItem)) &&
            (identical(other.showMainMenu, showMainMenu) ||
                const DeepCollectionEquality()
                    .equals(other.showMainMenu, showMainMenu)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(selectedItem) ^
      const DeepCollectionEquality().hash(showMainMenu);

  @override
  _$BottomNavStateCopyWith<_BottomNavState> get copyWith =>
      __$BottomNavStateCopyWithImpl<_BottomNavState>(this, _$identity);
}

abstract class _BottomNavState implements BottomNavState {
  const factory _BottomNavState(
      {@required CurrentPage currentPage,
      @required SelectedItem selectedItem,
      @required bool showMainMenu}) = _$_BottomNavState;

  @override
  CurrentPage get currentPage;
  @override
  SelectedItem get selectedItem;
  @override
  bool get showMainMenu;
  @override
  _$BottomNavStateCopyWith<_BottomNavState> get copyWith;
}
