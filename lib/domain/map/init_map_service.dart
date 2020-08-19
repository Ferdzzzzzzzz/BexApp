import 'package:bex_app/application/map/location_search/location_search_cubit.dart';
import 'package:bex_app/domain/map/i_map_facade.dart';
import 'package:bex_app/infrastructure/map/google_maps_facade.dart';

import '../../sl.dart';

void initMapService() {
  sl.registerFactory(() => LocationSearchCubit(sl()));

  sl.registerLazySingleton<IMapFacade>(() => GoogleMapsFacade());
}
