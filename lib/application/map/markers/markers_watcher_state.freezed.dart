// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'markers_watcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MarkersStateTearOff {
  const _$MarkersStateTearOff();

// ignore: unused_element
  _MarkersState call(
      {@required KtList<StoryEntity> stories,
      @required bool networkFailure,
      @required BitmapDescriptor positiveIcon,
      @required BitmapDescriptor negativeIcon}) {
    return _MarkersState(
      stories: stories,
      networkFailure: networkFailure,
      positiveIcon: positiveIcon,
      negativeIcon: negativeIcon,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MarkersState = _$MarkersStateTearOff();

/// @nodoc
mixin _$MarkersState {
  KtList<StoryEntity> get stories;
  bool get networkFailure;
  BitmapDescriptor get positiveIcon;
  BitmapDescriptor get negativeIcon;

  $MarkersStateCopyWith<MarkersState> get copyWith;
}

/// @nodoc
abstract class $MarkersStateCopyWith<$Res> {
  factory $MarkersStateCopyWith(
          MarkersState value, $Res Function(MarkersState) then) =
      _$MarkersStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<StoryEntity> stories,
      bool networkFailure,
      BitmapDescriptor positiveIcon,
      BitmapDescriptor negativeIcon});
}

/// @nodoc
class _$MarkersStateCopyWithImpl<$Res> implements $MarkersStateCopyWith<$Res> {
  _$MarkersStateCopyWithImpl(this._value, this._then);

  final MarkersState _value;
  // ignore: unused_field
  final $Res Function(MarkersState) _then;

  @override
  $Res call({
    Object stories = freezed,
    Object networkFailure = freezed,
    Object positiveIcon = freezed,
    Object negativeIcon = freezed,
  }) {
    return _then(_value.copyWith(
      stories:
          stories == freezed ? _value.stories : stories as KtList<StoryEntity>,
      networkFailure: networkFailure == freezed
          ? _value.networkFailure
          : networkFailure as bool,
      positiveIcon: positiveIcon == freezed
          ? _value.positiveIcon
          : positiveIcon as BitmapDescriptor,
      negativeIcon: negativeIcon == freezed
          ? _value.negativeIcon
          : negativeIcon as BitmapDescriptor,
    ));
  }
}

/// @nodoc
abstract class _$MarkersStateCopyWith<$Res>
    implements $MarkersStateCopyWith<$Res> {
  factory _$MarkersStateCopyWith(
          _MarkersState value, $Res Function(_MarkersState) then) =
      __$MarkersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<StoryEntity> stories,
      bool networkFailure,
      BitmapDescriptor positiveIcon,
      BitmapDescriptor negativeIcon});
}

/// @nodoc
class __$MarkersStateCopyWithImpl<$Res> extends _$MarkersStateCopyWithImpl<$Res>
    implements _$MarkersStateCopyWith<$Res> {
  __$MarkersStateCopyWithImpl(
      _MarkersState _value, $Res Function(_MarkersState) _then)
      : super(_value, (v) => _then(v as _MarkersState));

  @override
  _MarkersState get _value => super._value as _MarkersState;

  @override
  $Res call({
    Object stories = freezed,
    Object networkFailure = freezed,
    Object positiveIcon = freezed,
    Object negativeIcon = freezed,
  }) {
    return _then(_MarkersState(
      stories:
          stories == freezed ? _value.stories : stories as KtList<StoryEntity>,
      networkFailure: networkFailure == freezed
          ? _value.networkFailure
          : networkFailure as bool,
      positiveIcon: positiveIcon == freezed
          ? _value.positiveIcon
          : positiveIcon as BitmapDescriptor,
      negativeIcon: negativeIcon == freezed
          ? _value.negativeIcon
          : negativeIcon as BitmapDescriptor,
    ));
  }
}

/// @nodoc
class _$_MarkersState implements _MarkersState {
  const _$_MarkersState(
      {@required this.stories,
      @required this.networkFailure,
      @required this.positiveIcon,
      @required this.negativeIcon})
      : assert(stories != null),
        assert(networkFailure != null),
        assert(positiveIcon != null),
        assert(negativeIcon != null);

  @override
  final KtList<StoryEntity> stories;
  @override
  final bool networkFailure;
  @override
  final BitmapDescriptor positiveIcon;
  @override
  final BitmapDescriptor negativeIcon;

  @override
  String toString() {
    return 'MarkersState(stories: $stories, networkFailure: $networkFailure, positiveIcon: $positiveIcon, negativeIcon: $negativeIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkersState &&
            (identical(other.stories, stories) ||
                const DeepCollectionEquality()
                    .equals(other.stories, stories)) &&
            (identical(other.networkFailure, networkFailure) ||
                const DeepCollectionEquality()
                    .equals(other.networkFailure, networkFailure)) &&
            (identical(other.positiveIcon, positiveIcon) ||
                const DeepCollectionEquality()
                    .equals(other.positiveIcon, positiveIcon)) &&
            (identical(other.negativeIcon, negativeIcon) ||
                const DeepCollectionEquality()
                    .equals(other.negativeIcon, negativeIcon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stories) ^
      const DeepCollectionEquality().hash(networkFailure) ^
      const DeepCollectionEquality().hash(positiveIcon) ^
      const DeepCollectionEquality().hash(negativeIcon);

  @override
  _$MarkersStateCopyWith<_MarkersState> get copyWith =>
      __$MarkersStateCopyWithImpl<_MarkersState>(this, _$identity);
}

abstract class _MarkersState implements MarkersState {
  const factory _MarkersState(
      {@required KtList<StoryEntity> stories,
      @required bool networkFailure,
      @required BitmapDescriptor positiveIcon,
      @required BitmapDescriptor negativeIcon}) = _$_MarkersState;

  @override
  KtList<StoryEntity> get stories;
  @override
  bool get networkFailure;
  @override
  BitmapDescriptor get positiveIcon;
  @override
  BitmapDescriptor get negativeIcon;
  @override
  _$MarkersStateCopyWith<_MarkersState> get copyWith;
}
