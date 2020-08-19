import 'package:bex_app/application/map/location_search/cubit.dart';
import 'package:bex_app/domain/map/i_map_facade.dart';
import 'package:bex_app/domain/map/location_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:kt_dart/kt.dart';
import './location_search_state.dart';

class LocationSearchCubit extends Cubit<LocationSearchState> {
  final IMapFacade mapFacade;

  LocationSearchCubit(this.mapFacade) : super(LocationSearchState.initial());

  Future<void> searchLocations(String locationSearchString) async {
    emit(LocationSearchState.searching(
      locationList: KtList.from(<LocationEntity>[]),
    ));

    if (locationSearchString.isEmpty) {
      return emit(LocationSearchState.notSearching(
        locationList: KtList.empty(),
      ));
    }

    final searchResult = await mapFacade.searchLocations(locationSearchString);

    searchResult.fold(
      (f) => emit(LocationSearchState.searching(
        locationList: KtList.from(<LocationEntity>[]),
      )),
      (locationList) => emit(LocationSearchState.searching(
        locationList: locationList,
      )),
    );
  }
}
