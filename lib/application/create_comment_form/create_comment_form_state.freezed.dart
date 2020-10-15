// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_comment_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateCommentFormStateTearOff {
  const _$CreateCommentFormStateTearOff();

// ignore: unused_element
  _Initial call(
      {@required
          bool submitting,
      @required
          Option<Either<NetworkFailure, Unit>> optionSubmitFailureOrUnit}) {
    return _Initial(
      submitting: submitting,
      optionSubmitFailureOrUnit: optionSubmitFailureOrUnit,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateCommentFormState = _$CreateCommentFormStateTearOff();

/// @nodoc
mixin _$CreateCommentFormState {
  bool get submitting;
  Option<Either<NetworkFailure, Unit>> get optionSubmitFailureOrUnit;

  $CreateCommentFormStateCopyWith<CreateCommentFormState> get copyWith;
}

/// @nodoc
abstract class $CreateCommentFormStateCopyWith<$Res> {
  factory $CreateCommentFormStateCopyWith(CreateCommentFormState value,
          $Res Function(CreateCommentFormState) then) =
      _$CreateCommentFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool submitting,
      Option<Either<NetworkFailure, Unit>> optionSubmitFailureOrUnit});
}

/// @nodoc
class _$CreateCommentFormStateCopyWithImpl<$Res>
    implements $CreateCommentFormStateCopyWith<$Res> {
  _$CreateCommentFormStateCopyWithImpl(this._value, this._then);

  final CreateCommentFormState _value;
  // ignore: unused_field
  final $Res Function(CreateCommentFormState) _then;

  @override
  $Res call({
    Object submitting = freezed,
    Object optionSubmitFailureOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      submitting:
          submitting == freezed ? _value.submitting : submitting as bool,
      optionSubmitFailureOrUnit: optionSubmitFailureOrUnit == freezed
          ? _value.optionSubmitFailureOrUnit
          : optionSubmitFailureOrUnit as Option<Either<NetworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $CreateCommentFormStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool submitting,
      Option<Either<NetworkFailure, Unit>> optionSubmitFailureOrUnit});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CreateCommentFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object submitting = freezed,
    Object optionSubmitFailureOrUnit = freezed,
  }) {
    return _then(_Initial(
      submitting:
          submitting == freezed ? _value.submitting : submitting as bool,
      optionSubmitFailureOrUnit: optionSubmitFailureOrUnit == freezed
          ? _value.optionSubmitFailureOrUnit
          : optionSubmitFailureOrUnit as Option<Either<NetworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(
      {@required this.submitting, @required this.optionSubmitFailureOrUnit})
      : assert(submitting != null),
        assert(optionSubmitFailureOrUnit != null);

  @override
  final bool submitting;
  @override
  final Option<Either<NetworkFailure, Unit>> optionSubmitFailureOrUnit;

  @override
  String toString() {
    return 'CreateCommentFormState(submitting: $submitting, optionSubmitFailureOrUnit: $optionSubmitFailureOrUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.submitting, submitting) ||
                const DeepCollectionEquality()
                    .equals(other.submitting, submitting)) &&
            (identical(other.optionSubmitFailureOrUnit,
                    optionSubmitFailureOrUnit) ||
                const DeepCollectionEquality().equals(
                    other.optionSubmitFailureOrUnit,
                    optionSubmitFailureOrUnit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(submitting) ^
      const DeepCollectionEquality().hash(optionSubmitFailureOrUnit);

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements CreateCommentFormState {
  const factory _Initial(
          {@required
              bool submitting,
          @required
              Option<Either<NetworkFailure, Unit>> optionSubmitFailureOrUnit}) =
      _$_Initial;

  @override
  bool get submitting;
  @override
  Option<Either<NetworkFailure, Unit>> get optionSubmitFailureOrUnit;
  @override
  _$InitialCopyWith<_Initial> get copyWith;
}
