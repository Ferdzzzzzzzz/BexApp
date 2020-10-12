// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'story_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StoryDto _$StoryDtoFromJson(Map<String, dynamic> json) {
  return _StoryDto.fromJson(json);
}

/// @nodoc
class _$StoryDtoTearOff {
  const _$StoryDtoTearOff();

// ignore: unused_element
  _StoryDto call(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required String story,
      @required String date,
      @required double lat,
      @required double long,
      @required bool isPositive,
      @required int likes,
      @required List<String> comments}) {
    return _StoryDto(
      id: id,
      title: title,
      story: story,
      date: date,
      lat: lat,
      long: long,
      isPositive: isPositive,
      likes: likes,
      comments: comments,
    );
  }

// ignore: unused_element
  StoryDto fromJson(Map<String, Object> json) {
    return StoryDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StoryDto = _$StoryDtoTearOff();

/// @nodoc
mixin _$StoryDto {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  String get story;
  String get date;
  double get lat;
  double get long;
  bool get isPositive;
  int get likes;
  List<String> get comments;

  Map<String, dynamic> toJson();
  $StoryDtoCopyWith<StoryDto> get copyWith;
}

/// @nodoc
abstract class $StoryDtoCopyWith<$Res> {
  factory $StoryDtoCopyWith(StoryDto value, $Res Function(StoryDto) then) =
      _$StoryDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String story,
      String date,
      double lat,
      double long,
      bool isPositive,
      int likes,
      List<String> comments});
}

/// @nodoc
class _$StoryDtoCopyWithImpl<$Res> implements $StoryDtoCopyWith<$Res> {
  _$StoryDtoCopyWithImpl(this._value, this._then);

  final StoryDto _value;
  // ignore: unused_field
  final $Res Function(StoryDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object story = freezed,
    Object date = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object isPositive = freezed,
    Object likes = freezed,
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      story: story == freezed ? _value.story : story as String,
      date: date == freezed ? _value.date : date as String,
      lat: lat == freezed ? _value.lat : lat as double,
      long: long == freezed ? _value.long : long as double,
      isPositive:
          isPositive == freezed ? _value.isPositive : isPositive as bool,
      likes: likes == freezed ? _value.likes : likes as int,
      comments:
          comments == freezed ? _value.comments : comments as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$StoryDtoCopyWith<$Res> implements $StoryDtoCopyWith<$Res> {
  factory _$StoryDtoCopyWith(_StoryDto value, $Res Function(_StoryDto) then) =
      __$StoryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String story,
      String date,
      double lat,
      double long,
      bool isPositive,
      int likes,
      List<String> comments});
}

/// @nodoc
class __$StoryDtoCopyWithImpl<$Res> extends _$StoryDtoCopyWithImpl<$Res>
    implements _$StoryDtoCopyWith<$Res> {
  __$StoryDtoCopyWithImpl(_StoryDto _value, $Res Function(_StoryDto) _then)
      : super(_value, (v) => _then(v as _StoryDto));

  @override
  _StoryDto get _value => super._value as _StoryDto;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object story = freezed,
    Object date = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object isPositive = freezed,
    Object likes = freezed,
    Object comments = freezed,
  }) {
    return _then(_StoryDto(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      story: story == freezed ? _value.story : story as String,
      date: date == freezed ? _value.date : date as String,
      lat: lat == freezed ? _value.lat : lat as double,
      long: long == freezed ? _value.long : long as double,
      isPositive:
          isPositive == freezed ? _value.isPositive : isPositive as bool,
      likes: likes == freezed ? _value.likes : likes as int,
      comments:
          comments == freezed ? _value.comments : comments as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StoryDto extends _StoryDto {
  const _$_StoryDto(
      {@JsonKey(ignore: true) this.id,
      @required this.title,
      @required this.story,
      @required this.date,
      @required this.lat,
      @required this.long,
      @required this.isPositive,
      @required this.likes,
      @required this.comments})
      : assert(title != null),
        assert(story != null),
        assert(date != null),
        assert(lat != null),
        assert(long != null),
        assert(isPositive != null),
        assert(likes != null),
        assert(comments != null),
        super._();

  factory _$_StoryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_StoryDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String title;
  @override
  final String story;
  @override
  final String date;
  @override
  final double lat;
  @override
  final double long;
  @override
  final bool isPositive;
  @override
  final int likes;
  @override
  final List<String> comments;

  @override
  String toString() {
    return 'StoryDto(id: $id, title: $title, story: $story, date: $date, lat: $lat, long: $long, isPositive: $isPositive, likes: $likes, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.story, story) ||
                const DeepCollectionEquality().equals(other.story, story)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.isPositive, isPositive) ||
                const DeepCollectionEquality()
                    .equals(other.isPositive, isPositive)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(story) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(isPositive) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(comments);

  @override
  _$StoryDtoCopyWith<_StoryDto> get copyWith =>
      __$StoryDtoCopyWithImpl<_StoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoryDtoToJson(this);
  }
}

abstract class _StoryDto extends StoryDto {
  const _StoryDto._() : super._();
  const factory _StoryDto(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required String story,
      @required String date,
      @required double lat,
      @required double long,
      @required bool isPositive,
      @required int likes,
      @required List<String> comments}) = _$_StoryDto;

  factory _StoryDto.fromJson(Map<String, dynamic> json) = _$_StoryDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get title;
  @override
  String get story;
  @override
  String get date;
  @override
  double get lat;
  @override
  double get long;
  @override
  bool get isPositive;
  @override
  int get likes;
  @override
  List<String> get comments;
  @override
  _$StoryDtoCopyWith<_StoryDto> get copyWith;
}
