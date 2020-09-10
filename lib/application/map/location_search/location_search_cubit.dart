import 'package:Bex/application/map/location_search/cubit.dart';
import 'package:Bex/core/failures/network_failures.dart';
import 'package:Bex/domain/map/i_map_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import './location_search_state.dart';

class LocationSearchCubit extends Cubit<LocationSearchState> {
  final IMapFacade mapFacade;

  LocationSearchCubit(this.mapFacade) : super(LocationSearchState.initial());

  Future<void> searchLocations(String locationSearchString) async {
    emit(state.copyWith(
      searching: true,
    ));

    if (locationSearchString.isEmpty) {
      return emit(LocationSearchState(
        locationList: none(),
        searching: false,
      ));
    }

    final searchResult = await mapFacade.searchLocations(locationSearchString);

    searchResult.fold(
      (f) {
        emit(LocationSearchState(
          locationList: some(left(NetworkFailure())),
          searching: false,
        ));
      },
      (predictions) {
        emit(LocationSearchState(
          locationList: some(right(predictions)),
          searching: false,
        ));
      },
    );
  }
}
