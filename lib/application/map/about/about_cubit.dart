import 'package:bloc/bloc.dart';

class AboutCubit extends Cubit<CurrentPage> {
  AboutCubit() : super(CurrentPage.mapPage);

  Future<void> switchToMap() async => emit(CurrentPage.mapPage);

  Future<void> switchToAbout() async => emit(CurrentPage.aboutPage);
}

enum CurrentPage {
  aboutPage,
  mapPage,
}
