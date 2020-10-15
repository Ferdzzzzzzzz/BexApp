import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocationCubit extends Cubit<LatLng> {
  MapLocationCubit() : super(const LatLng(-33.9249, 18.4241));

  Future<void> updateLastLocation(LatLng latLng) async {
    emit(latLng);
  }
}
