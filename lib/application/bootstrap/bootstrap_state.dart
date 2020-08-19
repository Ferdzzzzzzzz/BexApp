import 'package:freezed_annotation/freezed_annotation.dart';

part 'bootstrap_state.freezed.dart';

@freezed
abstract class BootstrapState with _$BootstrapState {
  const factory BootstrapState.initial() = Initial;
  const factory BootstrapState.hasSettings({
    @required bool hasTypeOne,
  }) = HasSettings;
  const factory BootstrapState.chooseSettings() = ChooseSettings;
}
