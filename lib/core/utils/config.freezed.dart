// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConfigEntity _$ConfigEntityFromJson(Map<String, dynamic> json) {
  return _ConfigEntity.fromJson(json);
}

class _$ConfigEntityTearOff {
  const _$ConfigEntityTearOff();

// ignore: unused_element
  _ConfigEntity call({@required String gcpKey}) {
    return _ConfigEntity(
      gcpKey: gcpKey,
    );
  }
}

// ignore: unused_element
const $ConfigEntity = _$ConfigEntityTearOff();

mixin _$ConfigEntity {
  String get gcpKey;

  Map<String, dynamic> toJson();
  $ConfigEntityCopyWith<ConfigEntity> get copyWith;
}

abstract class $ConfigEntityCopyWith<$Res> {
  factory $ConfigEntityCopyWith(
          ConfigEntity value, $Res Function(ConfigEntity) then) =
      _$ConfigEntityCopyWithImpl<$Res>;
  $Res call({String gcpKey});
}

class _$ConfigEntityCopyWithImpl<$Res> implements $ConfigEntityCopyWith<$Res> {
  _$ConfigEntityCopyWithImpl(this._value, this._then);

  final ConfigEntity _value;
  // ignore: unused_field
  final $Res Function(ConfigEntity) _then;

  @override
  $Res call({
    Object gcpKey = freezed,
  }) {
    return _then(_value.copyWith(
      gcpKey: gcpKey == freezed ? _value.gcpKey : gcpKey as String,
    ));
  }
}

abstract class _$ConfigEntityCopyWith<$Res>
    implements $ConfigEntityCopyWith<$Res> {
  factory _$ConfigEntityCopyWith(
          _ConfigEntity value, $Res Function(_ConfigEntity) then) =
      __$ConfigEntityCopyWithImpl<$Res>;
  @override
  $Res call({String gcpKey});
}

class __$ConfigEntityCopyWithImpl<$Res> extends _$ConfigEntityCopyWithImpl<$Res>
    implements _$ConfigEntityCopyWith<$Res> {
  __$ConfigEntityCopyWithImpl(
      _ConfigEntity _value, $Res Function(_ConfigEntity) _then)
      : super(_value, (v) => _then(v as _ConfigEntity));

  @override
  _ConfigEntity get _value => super._value as _ConfigEntity;

  @override
  $Res call({
    Object gcpKey = freezed,
  }) {
    return _then(_ConfigEntity(
      gcpKey: gcpKey == freezed ? _value.gcpKey : gcpKey as String,
    ));
  }
}

@JsonSerializable()
class _$_ConfigEntity implements _ConfigEntity {
  const _$_ConfigEntity({@required this.gcpKey}) : assert(gcpKey != null);

  factory _$_ConfigEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ConfigEntityFromJson(json);

  @override
  final String gcpKey;

  @override
  String toString() {
    return 'ConfigEntity(gcpKey: $gcpKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigEntity &&
            (identical(other.gcpKey, gcpKey) ||
                const DeepCollectionEquality().equals(other.gcpKey, gcpKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gcpKey);

  @override
  _$ConfigEntityCopyWith<_ConfigEntity> get copyWith =>
      __$ConfigEntityCopyWithImpl<_ConfigEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConfigEntityToJson(this);
  }
}

abstract class _ConfigEntity implements ConfigEntity {
  const factory _ConfigEntity({@required String gcpKey}) = _$_ConfigEntity;

  factory _ConfigEntity.fromJson(Map<String, dynamic> json) =
      _$_ConfigEntity.fromJson;

  @override
  String get gcpKey;
  @override
  _$ConfigEntityCopyWith<_ConfigEntity> get copyWith;
}
