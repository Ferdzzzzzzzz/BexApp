// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_story_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateStoryFormStateTearOff {
  const _$CreateStoryFormStateTearOff();

// ignore: unused_element
  _CreateStoryFormState call(
      {@required Option<StoryType> optionStoryType,
      @required String title,
      @required String story,
      @required bool canSubmit,
      @required bool isSubmitting}) {
    return _CreateStoryFormState(
      optionStoryType: optionStoryType,
      title: title,
      story: story,
      canSubmit: canSubmit,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateStoryFormState = _$CreateStoryFormStateTearOff();

/// @nodoc
mixin _$CreateStoryFormState {
  Option<StoryType> get optionStoryType;
  String get title;
  String get story;
  bool get canSubmit;
  bool get isSubmitting;

  $CreateStoryFormStateCopyWith<CreateStoryFormState> get copyWith;
}

/// @nodoc
abstract class $CreateStoryFormStateCopyWith<$Res> {
  factory $CreateStoryFormStateCopyWith(CreateStoryFormState value,
          $Res Function(CreateStoryFormState) then) =
      _$CreateStoryFormStateCopyWithImpl<$Res>;
  $Res call(
      {Option<StoryType> optionStoryType,
      String title,
      String story,
      bool canSubmit,
      bool isSubmitting});
}

/// @nodoc
class _$CreateStoryFormStateCopyWithImpl<$Res>
    implements $CreateStoryFormStateCopyWith<$Res> {
  _$CreateStoryFormStateCopyWithImpl(this._value, this._then);

  final CreateStoryFormState _value;
  // ignore: unused_field
  final $Res Function(CreateStoryFormState) _then;

  @override
  $Res call({
    Object optionStoryType = freezed,
    Object title = freezed,
    Object story = freezed,
    Object canSubmit = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      optionStoryType: optionStoryType == freezed
          ? _value.optionStoryType
          : optionStoryType as Option<StoryType>,
      title: title == freezed ? _value.title : title as String,
      story: story == freezed ? _value.story : story as String,
      canSubmit: canSubmit == freezed ? _value.canSubmit : canSubmit as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$CreateStoryFormStateCopyWith<$Res>
    implements $CreateStoryFormStateCopyWith<$Res> {
  factory _$CreateStoryFormStateCopyWith(_CreateStoryFormState value,
          $Res Function(_CreateStoryFormState) then) =
      __$CreateStoryFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<StoryType> optionStoryType,
      String title,
      String story,
      bool canSubmit,
      bool isSubmitting});
}

/// @nodoc
class __$CreateStoryFormStateCopyWithImpl<$Res>
    extends _$CreateStoryFormStateCopyWithImpl<$Res>
    implements _$CreateStoryFormStateCopyWith<$Res> {
  __$CreateStoryFormStateCopyWithImpl(
      _CreateStoryFormState _value, $Res Function(_CreateStoryFormState) _then)
      : super(_value, (v) => _then(v as _CreateStoryFormState));

  @override
  _CreateStoryFormState get _value => super._value as _CreateStoryFormState;

  @override
  $Res call({
    Object optionStoryType = freezed,
    Object title = freezed,
    Object story = freezed,
    Object canSubmit = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_CreateStoryFormState(
      optionStoryType: optionStoryType == freezed
          ? _value.optionStoryType
          : optionStoryType as Option<StoryType>,
      title: title == freezed ? _value.title : title as String,
      story: story == freezed ? _value.story : story as String,
      canSubmit: canSubmit == freezed ? _value.canSubmit : canSubmit as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_CreateStoryFormState
    with DiagnosticableTreeMixin
    implements _CreateStoryFormState {
  const _$_CreateStoryFormState(
      {@required this.optionStoryType,
      @required this.title,
      @required this.story,
      @required this.canSubmit,
      @required this.isSubmitting})
      : assert(optionStoryType != null),
        assert(title != null),
        assert(story != null),
        assert(canSubmit != null),
        assert(isSubmitting != null);

  @override
  final Option<StoryType> optionStoryType;
  @override
  final String title;
  @override
  final String story;
  @override
  final bool canSubmit;
  @override
  final bool isSubmitting;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateStoryFormState(optionStoryType: $optionStoryType, title: $title, story: $story, canSubmit: $canSubmit, isSubmitting: $isSubmitting)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateStoryFormState'))
      ..add(DiagnosticsProperty('optionStoryType', optionStoryType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('canSubmit', canSubmit))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateStoryFormState &&
            (identical(other.optionStoryType, optionStoryType) ||
                const DeepCollectionEquality()
                    .equals(other.optionStoryType, optionStoryType)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)) &&
            (identical(other.canSubmit, canSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.canSubmit, canSubmit)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(optionStoryType) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(story) ^
      const DeepCollectionEquality().hash(canSubmit) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$CreateStoryFormStateCopyWith<_CreateStoryFormState> get copyWith =>
      __$CreateStoryFormStateCopyWithImpl<_CreateStoryFormState>(
          this, _$identity);
}

abstract class _CreateStoryFormState implements CreateStoryFormState {
  const factory _CreateStoryFormState(
      {@required Option<StoryType> optionStoryType,
      @required String title,
      @required String story,
      @required bool canSubmit,
      @required bool isSubmitting}) = _$_CreateStoryFormState;

  @override
  Option<StoryType> get optionStoryType;
  @override
  String get title;
  @override
  String get story;
  @override
  bool get canSubmit;
  @override
  bool get isSubmitting;
  @override
  _$CreateStoryFormStateCopyWith<_CreateStoryFormState> get copyWith;
}
