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
  SearchingLocation searching({@required KtList<LocationEntity> locationList}) {
    return SearchingLocation(
      locationList: locationList,
    );
  }

// ignore: unused_element
  NotSearchingLocation notSearching(
      {@required KtList<LocationEntity> locationList}) {
    return NotSearchingLocation(
      locationList: locationList,
    );
  }

// ignore: unused_element
  LocationSearchError error(
      {@required NetworkFailure failure,
      @required KtList<LocationEntity> locationList}) {
    return LocationSearchError(
      failure: failure,
      locationList: locationList,
    );
  }
}

// ignore: unused_element
const $LocationSearchState = _$LocationSearchStateTearOff();

mixin _$LocationSearchState {
  KtList<LocationEntity> get locationList;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(KtList<LocationEntity> locationList),
    @required Result notSearching(KtList<LocationEntity> locationList),
    @required
        Result error(
            NetworkFailure failure, KtList<LocationEntity> locationList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(KtList<LocationEntity> locationList),
    Result notSearching(KtList<LocationEntity> locationList),
    Result error(NetworkFailure failure, KtList<LocationEntity> locationList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingLocation value),
    @required Result notSearching(NotSearchingLocation value),
    @required Result error(LocationSearchError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingLocation value),
    Result notSearching(NotSearchingLocation value),
    Result error(LocationSearchError value),
    @required Result orElse(),
  });

  $LocationSearchStateCopyWith<LocationSearchState> get copyWith;
}

abstract class $LocationSearchStateCopyWith<$Res> {
  factory $LocationSearchStateCopyWith(
          LocationSearchState value, $Res Function(LocationSearchState) then) =
      _$LocationSearchStateCopyWithImpl<$Res>;
  $Res call({KtList<LocationEntity> locationList});
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
  }) {
    return _then(_value.copyWith(
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as KtList<LocationEntity>,
    ));
  }
}

abstract class $SearchingLocationCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory $SearchingLocationCopyWith(
          SearchingLocation value, $Res Function(SearchingLocation) then) =
      _$SearchingLocationCopyWithImpl<$Res>;
  @override
  $Res call({KtList<LocationEntity> locationList});
}

class _$SearchingLocationCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res>
    implements $SearchingLocationCopyWith<$Res> {
  _$SearchingLocationCopyWithImpl(
      SearchingLocation _value, $Res Function(SearchingLocation) _then)
      : super(_value, (v) => _then(v as SearchingLocation));

  @override
  SearchingLocation get _value => super._value as SearchingLocation;

  @override
  $Res call({
    Object locationList = freezed,
  }) {
    return _then(SearchingLocation(
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as KtList<LocationEntity>,
    ));
  }
}

class _$SearchingLocation implements SearchingLocation {
  const _$SearchingLocation({@required this.locationList})
      : assert(locationList != null);

  @override
  final KtList<LocationEntity> locationList;

  @override
  String toString() {
    return 'LocationSearchState.searching(locationList: $locationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchingLocation &&
            (identical(other.locationList, locationList) ||
                const DeepCollectionEquality()
                    .equals(other.locationList, locationList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationList);

  @override
  $SearchingLocationCopyWith<SearchingLocation> get copyWith =>
      _$SearchingLocationCopyWithImpl<SearchingLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(KtList<LocationEntity> locationList),
    @required Result notSearching(KtList<LocationEntity> locationList),
    @required
        Result error(
            NetworkFailure failure, KtList<LocationEntity> locationList),
  }) {
    assert(searching != null);
    assert(notSearching != null);
    assert(error != null);
    return searching(locationList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(KtList<LocationEntity> locationList),
    Result notSearching(KtList<LocationEntity> locationList),
    Result error(NetworkFailure failure, KtList<LocationEntity> locationList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searching != null) {
      return searching(locationList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingLocation value),
    @required Result notSearching(NotSearchingLocation value),
    @required Result error(LocationSearchError value),
  }) {
    assert(searching != null);
    assert(notSearching != null);
    assert(error != null);
    return searching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingLocation value),
    Result notSearching(NotSearchingLocation value),
    Result error(LocationSearchError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class SearchingLocation implements LocationSearchState {
  const factory SearchingLocation(
      {@required KtList<LocationEntity> locationList}) = _$SearchingLocation;

  @override
  KtList<LocationEntity> get locationList;
  @override
  $SearchingLocationCopyWith<SearchingLocation> get copyWith;
}

abstract class $NotSearchingLocationCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory $NotSearchingLocationCopyWith(NotSearchingLocation value,
          $Res Function(NotSearchingLocation) then) =
      _$NotSearchingLocationCopyWithImpl<$Res>;
  @override
  $Res call({KtList<LocationEntity> locationList});
}

class _$NotSearchingLocationCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res>
    implements $NotSearchingLocationCopyWith<$Res> {
  _$NotSearchingLocationCopyWithImpl(
      NotSearchingLocation _value, $Res Function(NotSearchingLocation) _then)
      : super(_value, (v) => _then(v as NotSearchingLocation));

  @override
  NotSearchingLocation get _value => super._value as NotSearchingLocation;

  @override
  $Res call({
    Object locationList = freezed,
  }) {
    return _then(NotSearchingLocation(
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as KtList<LocationEntity>,
    ));
  }
}

class _$NotSearchingLocation implements NotSearchingLocation {
  const _$NotSearchingLocation({@required this.locationList})
      : assert(locationList != null);

  @override
  final KtList<LocationEntity> locationList;

  @override
  String toString() {
    return 'LocationSearchState.notSearching(locationList: $locationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotSearchingLocation &&
            (identical(other.locationList, locationList) ||
                const DeepCollectionEquality()
                    .equals(other.locationList, locationList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationList);

  @override
  $NotSearchingLocationCopyWith<NotSearchingLocation> get copyWith =>
      _$NotSearchingLocationCopyWithImpl<NotSearchingLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(KtList<LocationEntity> locationList),
    @required Result notSearching(KtList<LocationEntity> locationList),
    @required
        Result error(
            NetworkFailure failure, KtList<LocationEntity> locationList),
  }) {
    assert(searching != null);
    assert(notSearching != null);
    assert(error != null);
    return notSearching(locationList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(KtList<LocationEntity> locationList),
    Result notSearching(KtList<LocationEntity> locationList),
    Result error(NetworkFailure failure, KtList<LocationEntity> locationList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notSearching != null) {
      return notSearching(locationList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingLocation value),
    @required Result notSearching(NotSearchingLocation value),
    @required Result error(LocationSearchError value),
  }) {
    assert(searching != null);
    assert(notSearching != null);
    assert(error != null);
    return notSearching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingLocation value),
    Result notSearching(NotSearchingLocation value),
    Result error(LocationSearchError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notSearching != null) {
      return notSearching(this);
    }
    return orElse();
  }
}

abstract class NotSearchingLocation implements LocationSearchState {
  const factory NotSearchingLocation(
      {@required KtList<LocationEntity> locationList}) = _$NotSearchingLocation;

  @override
  KtList<LocationEntity> get locationList;
  @override
  $NotSearchingLocationCopyWith<NotSearchingLocation> get copyWith;
}

abstract class $LocationSearchErrorCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory $LocationSearchErrorCopyWith(
          LocationSearchError value, $Res Function(LocationSearchError) then) =
      _$LocationSearchErrorCopyWithImpl<$Res>;
  @override
  $Res call({NetworkFailure failure, KtList<LocationEntity> locationList});
}

class _$LocationSearchErrorCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res>
    implements $LocationSearchErrorCopyWith<$Res> {
  _$LocationSearchErrorCopyWithImpl(
      LocationSearchError _value, $Res Function(LocationSearchError) _then)
      : super(_value, (v) => _then(v as LocationSearchError));

  @override
  LocationSearchError get _value => super._value as LocationSearchError;

  @override
  $Res call({
    Object failure = freezed,
    Object locationList = freezed,
  }) {
    return _then(LocationSearchError(
      failure: failure == freezed ? _value.failure : failure as NetworkFailure,
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as KtList<LocationEntity>,
    ));
  }
}

class _$LocationSearchError implements LocationSearchError {
  const _$LocationSearchError(
      {@required this.failure, @required this.locationList})
      : assert(failure != null),
        assert(locationList != null);

  @override
  final NetworkFailure failure;
  @override
  final KtList<LocationEntity> locationList;

  @override
  String toString() {
    return 'LocationSearchState.error(failure: $failure, locationList: $locationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationSearchError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.locationList, locationList) ||
                const DeepCollectionEquality()
                    .equals(other.locationList, locationList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(locationList);

  @override
  $LocationSearchErrorCopyWith<LocationSearchError> get copyWith =>
      _$LocationSearchErrorCopyWithImpl<LocationSearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searching(KtList<LocationEntity> locationList),
    @required Result notSearching(KtList<LocationEntity> locationList),
    @required
        Result error(
            NetworkFailure failure, KtList<LocationEntity> locationList),
  }) {
    assert(searching != null);
    assert(notSearching != null);
    assert(error != null);
    return error(failure, locationList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searching(KtList<LocationEntity> locationList),
    Result notSearching(KtList<LocationEntity> locationList),
    Result error(NetworkFailure failure, KtList<LocationEntity> locationList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure, locationList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searching(SearchingLocation value),
    @required Result notSearching(NotSearchingLocation value),
    @required Result error(LocationSearchError value),
  }) {
    assert(searching != null);
    assert(notSearching != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searching(SearchingLocation value),
    Result notSearching(NotSearchingLocation value),
    Result error(LocationSearchError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationSearchError implements LocationSearchState {
  const factory LocationSearchError(
      {@required NetworkFailure failure,
      @required KtList<LocationEntity> locationList}) = _$LocationSearchError;

  NetworkFailure get failure;
  @override
  KtList<LocationEntity> get locationList;
  @override
  $LocationSearchErrorCopyWith<LocationSearchError> get copyWith;
}
