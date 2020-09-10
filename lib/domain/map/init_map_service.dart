import 'package:Bex/application/map/location_search/location_search_cubit.dart';
import 'package:Bex/domain/map/i_map_facade.dart';
import 'package:Bex/infrastructure/map/google_maps_facade.dart';

import '../../sl.dart';

void initMapService() {
  sl.registerFactory(() => LocationSearchCubit(sl()));

  sl.registerLazySingleton<IMapFacade>(() => GoogleMapsFacade());
}
