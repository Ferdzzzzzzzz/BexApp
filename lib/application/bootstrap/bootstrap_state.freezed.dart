// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bootstrap_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BootstrapStateTearOff {
  const _$BootstrapStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  HasSettings hasSettings({@required bool hasTypeOne}) {
    return HasSettings(
      hasTypeOne: hasTypeOne,
    );
  }

// ignore: unused_element
  ChooseSettings chooseSettings() {
    return const ChooseSettings();
  }
}

// ignore: unused_element
const $BootstrapState = _$BootstrapStateTearOff();

mixin _$BootstrapState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result hasSettings(bool hasTypeOne),
    @required Result chooseSettings(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result hasSettings(bool hasTypeOne),
    Result chooseSettings(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result hasSettings(HasSettings value),
    @required Result chooseSettings(ChooseSettings value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result hasSettings(HasSettings value),
    Result chooseSettings(ChooseSettings value),
    @required Result orElse(),
  });
}

abstract class $BootstrapStateCopyWith<$Res> {
  factory $BootstrapStateCopyWith(
          BootstrapState value, $Res Function(BootstrapState) then) =
      _$BootstrapStateCopyWithImpl<$Res>;
}

class _$BootstrapStateCopyWithImpl<$Res>
    implements $BootstrapStateCopyWith<$Res> {
  _$BootstrapStateCopyWithImpl(this._value, this._then);

  final BootstrapState _value;
  // ignore: unused_field
  final $Res Function(BootstrapState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$BootstrapStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BootstrapState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result hasSettings(bool hasTypeOne),
    @required Result chooseSettings(),
  }) {
    assert(initial != null);
    assert(hasSettings != null);
    assert(chooseSettings != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result hasSettings(bool hasTypeOne),
    Result chooseSettings(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result hasSettings(HasSettings value),
    @required Result chooseSettings(ChooseSettings value),
  }) {
    assert(initial != null);
    assert(hasSettings != null);
    assert(chooseSettings != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result hasSettings(HasSettings value),
    Result chooseSettings(ChooseSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BootstrapState {
  const factory Initial() = _$Initial;
}

abstract class $HasSettingsCopyWith<$Res> {
  factory $HasSettingsCopyWith(
          HasSettings value, $Res Function(HasSettings) then) =
      _$HasSettingsCopyWithImpl<$Res>;
  $Res call({bool hasTypeOne});
}

class _$HasSettingsCopyWithImpl<$Res> extends _$BootstrapStateCopyWithImpl<$Res>
    implements $HasSettingsCopyWith<$Res> {
  _$HasSettingsCopyWithImpl(
      HasSettings _value, $Res Function(HasSettings) _then)
      : super(_value, (v) => _then(v as HasSettings));

  @override
  HasSettings get _value => super._value as HasSettings;

  @override
  $Res call({
    Object hasTypeOne = freezed,
  }) {
    return _then(HasSettings(
      hasTypeOne:
          hasTypeOne == freezed ? _value.hasTypeOne : hasTypeOne as bool,
    ));
  }
}

class _$HasSettings implements HasSettings {
  const _$HasSettings({@required this.hasTypeOne}) : assert(hasTypeOne != null);

  @override
  final bool hasTypeOne;

  @override
  String toString() {
    return 'BootstrapState.hasSettings(hasTypeOne: $hasTypeOne)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HasSettings &&
            (identical(other.hasTypeOne, hasTypeOne) ||
                const DeepCollectionEquality()
                    .equals(other.hasTypeOne, hasTypeOne)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hasTypeOne);

  @override
  $HasSettingsCopyWith<HasSettings> get copyWith =>
      _$HasSettingsCopyWithImpl<HasSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result hasSettings(bool hasTypeOne),
    @required Result chooseSettings(),
  }) {
    assert(initial != null);
    assert(hasSettings != null);
    assert(chooseSettings != null);
    return hasSettings(hasTypeOne);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result hasSettings(bool hasTypeOne),
    Result chooseSettings(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasSettings != null) {
      return hasSettings(hasTypeOne);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result hasSettings(HasSettings value),
    @required Result chooseSettings(ChooseSettings value),
  }) {
    assert(initial != null);
    assert(hasSettings != null);
    assert(chooseSettings != null);
    return hasSettings(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result hasSettings(HasSettings value),
    Result chooseSettings(ChooseSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasSettings != null) {
      return hasSettings(this);
    }
    return orElse();
  }
}

abstract class HasSettings implements BootstrapState {
  const factory HasSettings({@required bool hasTypeOne}) = _$HasSettings;

  bool get hasTypeOne;
  $HasSettingsCopyWith<HasSettings> get copyWith;
}

abstract class $ChooseSettingsCopyWith<$Res> {
  factory $ChooseSettingsCopyWith(
          ChooseSettings value, $Res Function(ChooseSettings) then) =
      _$ChooseSettingsCopyWithImpl<$Res>;
}

class _$ChooseSettingsCopyWithImpl<$Res>
    extends _$BootstrapStateCopyWithImpl<$Res>
    implements $ChooseSettingsCopyWith<$Res> {
  _$ChooseSettingsCopyWithImpl(
      ChooseSettings _value, $Res Function(ChooseSettings) _then)
      : super(_value, (v) => _then(v as ChooseSettings));

  @override
  ChooseSettings get _value => super._value as ChooseSettings;
}

class _$ChooseSettings implements ChooseSettings {
  const _$ChooseSettings();

  @override
  String toString() {
    return 'BootstrapState.chooseSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChooseSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result hasSettings(bool hasTypeOne),
    @required Result chooseSettings(),
  }) {
    assert(initial != null);
    assert(hasSettings != null);
    assert(chooseSettings != null);
    return chooseSettings();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result hasSettings(bool hasTypeOne),
    Result chooseSettings(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chooseSettings != null) {
      return chooseSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result hasSettings(HasSettings value),
    @required Result chooseSettings(ChooseSettings value),
  }) {
    assert(initial != null);
    assert(hasSettings != null);
    assert(chooseSettings != null);
    return chooseSettings(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result hasSettings(HasSettings value),
    Result chooseSettings(ChooseSettings value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (chooseSettings != null) {
      return chooseSettings(this);
    }
    return orElse();
  }
}

abstract class ChooseSettings implements BootstrapState {
  const factory ChooseSettings() = _$ChooseSettings;
}
