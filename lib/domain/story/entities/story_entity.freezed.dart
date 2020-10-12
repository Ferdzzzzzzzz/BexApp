// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'story_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoryEntityTearOff {
  const _$StoryEntityTearOff();

// ignore: unused_element
  _StoryEntity call(
      {@required String id,
      @required String story,
      @required String title,
      @required String date,
      @required LatLng latLng,
      @required StoryType storyType,
      @required int likes,
      @required List<String> comments}) {
    return _StoryEntity(
      id: id,
      story: story,
      title: title,
      date: date,
      latLng: latLng,
      storyType: storyType,
      likes: likes,
      comments: comments,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StoryEntity = _$StoryEntityTearOff();

/// @nodoc
mixin _$StoryEntity {
  String get id;
  String get story;
  String get title;
  String get date;
  LatLng get latLng;
  StoryType get storyType;
  int get likes;
  List<String> get comments;

  $StoryEntityCopyWith<StoryEntity> get copyWith;
}

/// @nodoc
abstract class $StoryEntityCopyWith<$Res> {
  factory $StoryEntityCopyWith(
          StoryEntity value, $Res Function(StoryEntity) then) =
      _$StoryEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String story,
      String title,
      String date,
      LatLng latLng,
      StoryType storyType,
      int likes,
      List<String> comments});
}

/// @nodoc
class _$StoryEntityCopyWithImpl<$Res> implements $StoryEntityCopyWith<$Res> {
  _$StoryEntityCopyWithImpl(this._value, this._then);

  final StoryEntity _value;
  // ignore: unused_field
  final $Res Function(StoryEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object story = freezed,
    Object title = freezed,
    Object date = freezed,
    Object latLng = freezed,
    Object storyType = freezed,
    Object likes = freezed,
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      story: story == freezed ? _value.story : story as String,
      title: title == freezed ? _value.title : title as String,
      date: date == freezed ? _value.date : date as String,
      latLng: latLng == freezed ? _value.latLng : latLng as LatLng,
      storyType:
          storyType == freezed ? _value.storyType : storyType as StoryType,
      likes: likes == freezed ? _value.likes : likes as int,
      comments:
          comments == freezed ? _value.comments : comments as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$StoryEntityCopyWith<$Res>
    implements $StoryEntityCopyWith<$Res> {
  factory _$StoryEntityCopyWith(
          _StoryEntity value, $Res Function(_StoryEntity) then) =
      __$StoryEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String story,
      String title,
      String date,
      LatLng latLng,
      StoryType storyType,
      int likes,
      List<String> comments});
}

/// @nodoc
class __$StoryEntityCopyWithImpl<$Res> extends _$StoryEntityCopyWithImpl<$Res>
    implements _$StoryEntityCopyWith<$Res> {
  __$StoryEntityCopyWithImpl(
      _StoryEntity _value, $Res Function(_StoryEntity) _then)
      : super(_value, (v) => _then(v as _StoryEntity));

  @override
  _StoryEntity get _value => super._value as _StoryEntity;

  @override
  $Res call({
    Object id = freezed,
    Object story = freezed,
    Object title = freezed,
    Object date = freezed,
    Object latLng = freezed,
    Object storyType = freezed,
    Object likes = freezed,
    Object comments = freezed,
  }) {
    return _then(_StoryEntity(
      id: id == freezed ? _value.id : id as String,
      story: story == freezed ? _value.story : story as String,
      title: title == freezed ? _value.title : title as String,
      date: date == freezed ? _value.date : date as String,
      latLng: latLng == freezed ? _value.latLng : latLng as LatLng,
      storyType:
          storyType == freezed ? _value.storyType : storyType as StoryType,
      likes: likes == freezed ? _value.likes : likes as int,
      comments:
          comments == freezed ? _value.comments : comments as List<String>,
    ));
  }
}

/// @nodoc
class _$_StoryEntity with DiagnosticableTreeMixin implements _StoryEntity {
  const _$_StoryEntity(
      {@required this.id,
      @required this.story,
      @required this.title,
      @required this.date,
      @required this.latLng,
      @required this.storyType,
      @required this.likes,
      @required this.comments})
      : assert(id != null),
        assert(story != null),
        assert(title != null),
        assert(date != null),
        assert(latLng != null),
        assert(storyType != null),
        assert(likes != null),
        assert(comments != null);

  @override
  final String id;
  @override
  final String story;
  @override
  final String title;
  @override
  final String date;
  @override
  final LatLng latLng;
  @override
  final StoryType storyType;
  @override
  final int likes;
  @override
  final List<String> comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryEntity(id: $id, story: $story, title: $title, date: $date, latLng: $latLng, storyType: $storyType, likes: $likes, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoryEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('story', story))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('latLng', latLng))
      ..add(DiagnosticsProperty('storyType', storyType))
      ..add(DiagnosticsProperty('likes', likes))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoryEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.latLng, latLng) ||
                const DeepCollectionEquality().equals(other.latLng, latLng)) &&
            (identical(other.storyType, storyType) ||
                const DeepCollectionEquality()
                    .equals(other.storyType, storyType)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(story) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(latLng) ^
      const DeepCollectionEquality().hash(storyType) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(comments);

  @override
  _$StoryEntityCopyWith<_StoryEntity> get copyWith =>
      __$StoryEntityCopyWithImpl<_StoryEntity>(this, _$identity);
}

abstract class _StoryEntity implements StoryEntity {
  const factory _StoryEntity(
      {@required String id,
      @required String story,
      @required String title,
      @required String date,
      @required LatLng latLng,
      @required StoryType storyType,
      @required int likes,
      @required List<String> comments}) = _$_StoryEntity;

  @override
  String get id;
  @override
  String get story;
  @override
  String get title;
  @override
  String get date;
  @override
  LatLng get latLng;
  @override
  StoryType get storyType;
  @override
  int get likes;
  @override
  List<String> get comments;
  @override
  _$StoryEntityCopyWith<_StoryEntity> get copyWith;
}
