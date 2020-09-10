import 'package:Bex/domain/bootstrap/i_storage_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'cubit.dart';

class BootstrapCubit extends Cubit<BootstrapState> {
  final IStorageFacade storageFacade;

  BootstrapCubit(this.storageFacade) : super(const BootstrapState.initial());

  Future<void> checkAppSettings() async {
    final optionBootstrapSettings = storageFacade.getBootstrapSettings();

    optionBootstrapSettings.fold(
      () => emit(const BootstrapState.chooseSettings()),
      (hasTypeOne) => emit(BootstrapState.hasSettings(
        hasTypeOne: hasTypeOne,
      )),
    );
  }

  Future<void> switchAppSettings() async {
    emit(const BootstrapState.chooseSettings());
  }

  Future<void> setAppSetting({
    @required bool hasTypeOne,
  }) async {
    storageFacade.setBootstrapSettings(
      hasTypeOne: hasTypeOne,
    );

    emit(BootstrapState.hasSettings(hasTypeOne: hasTypeOne));
  }
}
