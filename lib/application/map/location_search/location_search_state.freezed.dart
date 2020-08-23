// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationSearchStateTearOff {
  const _$LocationSearchStateTearOff();

// ignore: unused_element
  _LocationSearchState call(
      {@required
          Option<Either<NetworkFailure, KtList<Prediction>>> locationList,
      @required
          bool searching}) {
    return _LocationSearchState(
      locationList: locationList,
      searching: searching,
    );
  }
}

// ignore: unused_element
const $LocationSearchState = _$LocationSearchStateTearOff();

mixin _$LocationSearchState {
  Option<Either<NetworkFailure, KtList<Prediction>>> get locationList;
  bool get searching;

  $LocationSearchStateCopyWith<LocationSearchState> get copyWith;
}

abstract class $LocationSearchStateCopyWith<$Res> {
  factory $LocationSearchStateCopyWith(
          LocationSearchState value, $Res Function(LocationSearchState) then) =
      _$LocationSearchStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<NetworkFailure, KtList<Prediction>>> locationList,
      bool searching});
}

class _$LocationSearchStateCopyWithImpl<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  _$LocationSearchStateCopyWithImpl(this._value, this._then);

  final LocationSearchState _value;
  // ignore: unused_field
  final $Res Function(LocationSearchState) _then;

  @override
  $Res call({
    Object locationList = freezed,
    Object searching = freezed,
  }) {
    return _then(_value.copyWith(
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as Option<Either<NetworkFailure, KtList<Prediction>>>,
      searching: searching == freezed ? _value.searching : searching as bool,
    ));
  }
}

abstract class _$LocationSearchStateCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory _$LocationSearchStateCopyWith(_LocationSearchState value,
          $Res Function(_LocationSearchState) then) =
      __$LocationSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<NetworkFailure, KtList<Prediction>>> locationList,
      bool searching});
}

class __$LocationSearchStateCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res>
    implements _$LocationSearchStateCopyWith<$Res> {
  __$LocationSearchStateCopyWithImpl(
      _LocationSearchState _value, $Res Function(_LocationSearchState) _then)
      : super(_value, (v) => _then(v as _LocationSearchState));

  @override
  _LocationSearchState get _value => super._value as _LocationSearchState;

  @override
  $Res call({
    Object locationList = freezed,
    Object searching = freezed,
  }) {
    return _then(_LocationSearchState(
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as Option<Either<NetworkFailure, KtList<Prediction>>>,
      searching: searching == freezed ? _value.searching : searching as bool,
    ));
  }
}

class _$_LocationSearchState implements _LocationSearchState {
  const _$_LocationSearchState(
      {@required this.locationList, @required this.searching})
      : assert(locationList != null),
        assert(searching != null);

  @override
  final Option<Either<NetworkFailure, KtList<Prediction>>> locationList;
  @override
  final bool searching;

  @override
  String toString() {
    return 'LocationSearchState(locationList: $locationList, searching: $searching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationSearchState &&
            (identical(other.locationList, locationList) ||
                const DeepCollectionEquality()
                    .equals(other.locationList, locationList)) &&
            (identical(other.searching, searching) ||
                const DeepCollectionEquality()
                    .equals(other.searching, searching)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationList) ^
      const DeepCollectionEquality().hash(searching);

  @override
  _$LocationSearchStateCopyWith<_LocationSearchState> get copyWith =>
      __$LocationSearchStateCopyWithImpl<_LocationSearchState>(
          this, _$identity);
}

abstract class _LocationSearchState implements LocationSearchState {
  const factory _LocationSearchState(
      {@required
          Option<Either<NetworkFailure, KtList<Prediction>>> locationList,
      @required
          bool searching}) = _$_LocationSearchState;

  @override
  Option<Either<NetworkFailure, KtList<Prediction>>> get locationList;
  @override
  bool get searching;
  @override
  _$LocationSearchStateCopyWith<_LocationSearchState> get copyWith;
}
