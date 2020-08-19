// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationEntityTearOff {
  const _$LocationEntityTearOff();

// ignore: unused_element
  _LocationEntity call({@required String name, @required LatLng coords}) {
    return _LocationEntity(
      name: name,
      coords: coords,
    );
  }
}

// ignore: unused_element
const $LocationEntity = _$LocationEntityTearOff();

mixin _$LocationEntity {
  String get name;
  LatLng get coords;

  $LocationEntityCopyWith<LocationEntity> get copyWith;
}

abstract class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) then) =
      _$LocationEntityCopyWithImpl<$Res>;
  $Res call({String name, LatLng coords});
}

class _$LocationEntityCopyWithImpl<$Res>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._value, this._then);

  final LocationEntity _value;
  // ignore: unused_field
  final $Res Function(LocationEntity) _then;

  @override
  $Res call({
    Object name = freezed,
    Object coords = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      coords: coords == freezed ? _value.coords : coords as LatLng,
    ));
  }
}

abstract class _$LocationEntityCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(
          _LocationEntity value, $Res Function(_LocationEntity) then) =
      __$LocationEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, LatLng coords});
}

class __$LocationEntityCopyWithImpl<$Res>
    extends _$LocationEntityCopyWithImpl<$Res>
    implements _$LocationEntityCopyWith<$Res> {
  __$LocationEntityCopyWithImpl(
      _LocationEntity _value, $Res Function(_LocationEntity) _then)
      : super(_value, (v) => _then(v as _LocationEntity));

  @override
  _LocationEntity get _value => super._value as _LocationEntity;

  @override
  $Res call({
    Object name = freezed,
    Object coords = freezed,
  }) {
    return _then(_LocationEntity(
      name: name == freezed ? _value.name : name as String,
      coords: coords == freezed ? _value.coords : coords as LatLng,
    ));
  }
}

class _$_LocationEntity implements _LocationEntity {
  const _$_LocationEntity({@required this.name, @required this.coords})
      : assert(name != null),
        assert(coords != null);

  @override
  final String name;
  @override
  final LatLng coords;

  @override
  String toString() {
    return 'LocationEntity(name: $name, coords: $coords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.coords, coords) ||
                const DeepCollectionEquality().equals(other.coords, coords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(coords);

  @override
  _$LocationEntityCopyWith<_LocationEntity> get copyWith =>
      __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);
}

abstract class _LocationEntity implements LocationEntity {
  const factory _LocationEntity(
      {@required String name, @required LatLng coords}) = _$_LocationEntity;

  @override
  String get name;
  @override
  LatLng get coords;
  @override
  _$LocationEntityCopyWith<_LocationEntity> get copyWith;
}
