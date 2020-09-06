import 'package:bloc/bloc.dart';

class MainMenuCubit extends Cubit<bool> {
  MainMenuCubit() : super(false);

  Future<void> showMenu() async => emit(true);

  Future<void> hideMenu() async => emit(false);
}
